# Cavernas: a entrada do alvo subterrâneo

Issue: #135.

## Problema

Em jogo, em Searing Gorge: o Overseer Maltorius (7701, `|goto` 40.77,35.89) fica no **Slag Pit**, uma caverna
embaixo do Cauldron. A seta mostrava "13 yd" com o jogador em cima. O caminho pelo terreno tem um nó por célula, sem
andares (#112): o alvo de baixo vira o ponto de cima, e ninguém sabia onde fica a entrada. Pedido: "eu quero que
você dê um jeito de descobrir a passagem".

## O gerador (`tools/gen_caves.py` → `Caves.lua`)

O que o gerador usa: o terreno (ADT) e os modelos (WMO/M2) do próprio cliente, pelo CDN (build 1.60.1.71139), com as
mesmas peças do `gen_terrain.py`. O ponto vira coordenada de mundo pela UiMapAssignment.

1. **Pontos:** os `|goto` dos goals dos guias (leveling e masmorras, as duas facções). Ficam de fora as capitais
   (as cidades debaixo do morro já são tratadas pelo terreno) e as coordenadas de mapa de continente.
2. **Filtro barato:** há piso de WMO interior mais de 10 jd abaixo do terreno a até 8 jd do ponto.
3. **Grafo da caverna:** as superfícies pisáveis (só a face de cima dos triângulos) na grade de 2,08 jd, ligadas
   entre vizinhas quando o desnível cabe na rampa (a mesma regra do terreno). "Debaixo" é o piso de grupo interior
   do WMO, ou mais de 3 jd abaixo do terreno.
4. **Entrada:** onde o pedaço de caverna ligado ao alvo encontra o chão de fora. Vale a de caminho mais curto até o
   alvo, de preferência a até 25 jd de um portal interior↔exterior do WMO. O caminho é simplificado a 4 jd.
5. **Certo ou talvez:** só a geometria não decide (o Kalaran Windblade fica em cima da mesma caverna), e citar o nome
   também não basta ("atop Jintha'alor", "Travel to Sunnyglade" citam e o alvo está em cima).
   - **Certo** (`s = 1`): o texto do passo (cada linha do guia, o nome e cada objetivo da quest) cita o nome da
     caverna (WMOAreaTable, palavra inteira, sem "The", nunca nome de zona) e a citação vale. Ela vale quando:
     - o nome já é de caverna (Mine, Den, Lair, Pit, Hollow, Cave, Burrow, Tunnel, Grotto, Depths, Deep, Crypt,
       Catacomb, Barrow, Warren, Hole, Undercroft, Tomb, Sepulcher, Hall, Mound, Hold); ou
     - a frase tem uma pista de interior (inside, deep, depths, beneath, under, underneath, underground, below, cave,
       cavern, mine, tunnel, lair, den, burrow; "in", "at" e "within" sozinhos não contam); ou
     - não há chão de fora a até 8 jd.

     Nunca vale com "atop", "top of", "on top", "above" ou "outside" colado à citação. Também fica certo o ponto a até
     25 jd, em 3D, de um alvo certo por citação na mesma caverna (Lathoric, Obsidion).
   - **Talvez** (`s = 0`): o resto. Por exemplo, Uldaman de fora, Dun Garok e Skulk Rock: o texto não diz que é dentro.
   - **De fora:** o prédio com porta (o caminho de cima até o alvo é pouco mais que a reta), a caverna sem entrada no
     grafo, o WMO da lista de interiores, as capitais e as coordenadas de mapa de continente.
6. **Saída:** `ns.caves = { w = { [wmo] = { n, c } }, p = { ["Zona|x|y"] = { w, s, c, e = {x, y}, p = {x1, y1, ...}, l, z } } }`.
   - `e`: a entrada.
   - `p`: o caminho da entrada ao alvo.
   - `l`: o comprimento em jd.
   - `z`: a profundidade abaixo do terreno.

Conferido no Slag Pit: a entrada fica em 49.4, 44.9, numa saliência da parede do Cauldron na altura do alvo, a uns
250 jd de caminho. Ela bate com um portal interior↔exterior do WMO, e cada troca de grupo do WMO no caminho fica
junto a um portal entre esses grupos.

## No jogo (`Cavernas.lua`)

- **Caverna ativa:** certa, a não ser que o jogador escolha "por cima"; talvez, só se o jogador escolher "pela
  entrada" ou já estiver lá dentro. "Lá dentro" não depende do idioma: para entrar, `IsIndoors()` e a até 40 jd do
  caminho da caverna; quem entrou fica dentro até sair para lugar aberto, mesmo longe do caminho numa câmara grande
  (até 300 jd: a pedra de lar para uma estalagem não conta). A escolha fica salva por ponto (`LodestarCharDB.caves`).
- **Na rota (`Travel.PlanChain`):** com a caverna ativa, o trecho vai até a entrada e a última perna segue o caminho
  de dentro. É uma perna a pé com o caminho pronto (`cave` = o nome).
  - O caminho de dentro nunca é recalculado, apagado (gravar passagem) nem herdado por uma perna de fora.
  - O desvio do terreno (#125) e o "medir antes de trocar" não valem para ela.
  - Ela chega pelo que falta do caminho, não pela reta: a caverna de dois andares volta por baixo do alvo.
  - Já lá dentro, só o resto do caminho, de onde o jogador está; isso vale só no trecho que sai do jogador.
- **O vigia (a cada 2 s):** entrar ou sair da caverna refaz a rota, e a troca de caverna/por cima também. Na perna da
  caverna, em lugar aberto e a mais de 40 jd da entrada e do caminho, também. Em voo ou a bordo, não refaz.
- **Texto da perna até a entrada:** "Entrada de The Slag Pit".
- **Janela do guia:** com o alvo do passo numa caverna (e o guia como destino da rota, não um manual ou o corpo), uma
  linha logo acima das ações rápidas. O clique troca entre
  a caverna e o "por cima", e a rota se refaz.
  - "Alvo dentro de X: a rota entra pela caverna" (certo, ativa);
  - "Indo pela entrada de X" (talvez, escolhido);
  - "Indo por cima (alvo dentro de X?)";
  - "Alvo talvez dentro de X".

## Critérios de aceite

- O Slag Pit (Maltorius) com a entrada e o caminho descobertos e conferidos.
- A rota para esse passo leva à entrada e desce pela caverna; "por cima" tira a caverna; dentro, só o resto.
- Os outros alvos de guia em caverna saem do mesmo gerador, com o relatório de quantos e quais (71 certos, 247 talvez).
- Testes:
  - `tools/travel-tests.lua`: o núcleo, os dados do Slag Pit e a cadeia com a caverna;
  - `tools/ui-smoke.lua`, passo "Cave route": a rota, o texto, a linha, a troca, o "dentro" e o caminho que o terreno
    não recalcula;
  - `gen_caves.py --demo`.
