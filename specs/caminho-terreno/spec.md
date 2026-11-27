# Caminho a pé pelo terreno (parte C)

Continuação do planejador de viagem (`specs/planejador-viagem/`, parte C da tabela de escopo).

## Problema

A perna a pé é uma reta: a seta e o pontilhado atravessam montanha, penhasco e lago.

## Fonte

O terreno do próprio cliente, lido do armazenamento CASC local (`tools/casc.py`, leitor nosso
do formato documentado; nenhuma ferramenta baixada): `Map` (wago.tools) dá o WDT de cada continente,
o WDT dá o ADT de cada quadrante, o ADT dá as alturas (MCVT, 9×9 por pedaço de 33,3 jd), os
buracos (onde entram prédios/cavernas) e a água (MH2O). Nada do Shortest Path Forever é copiado.

## Modelo (v1: só terreno)

- Grade de 16,7 jd por continente (2 × 2 células por pedaço, 32 × 32 por quadrante).
- Célula **passável** se o desnível dentro dela cabe numa rampa (≤ ~50°) e não tem buraco.
- **Ligação** com cada um dos 8 vizinhos se os dois são passáveis e o desnível entre os centros
  cabe na mesma rampa.
- **Água** funda (> 1,5 jd acima do chão): passável a nado, custo 2,5 × (nadar desmonta: montado, a
  terra rende ~2,4 × o nado); magma e lodo bloqueiam.
- Gerador `tools/gen_terrain.py` → `Terrain0.lua` (Reinos do Leste) e `Terrain1.lua` (Kalimdor):
  por quadrante, os bytes de ligação (8 bits) e o bit de água, compactados (RLE) em string.

## Em jogo

- `Terrain.lua`: decodifica só os quadrantes por onde a busca passa; A* com heurística octil e
  limite de expansão.
- Sem caminho entre duas regiões grandes, uma segunda busca roda (issue #99). É o caso da rampa estreita da
  Revantusk Village ao platô de The Hinterlands, que a grade de 16,7 jd não tem. Essa busca aceita passo
  travado e célula sem passagem, a 30× o custo, e termina na célula mais perto quando o destino não tem
  passagem (mestre de voo no alto da torre). O caminho segue o terreno e cruza a barreira só onde ela é mais
  fina. Só vale passagem curta: até 5 passos travados seguidos e 10 no total. Penhasco longo, lava, a árvore de
  Teldrassil ou dez paredes não contam, e aí fica a reta.
  - Se a primeira busca estourou o limite de expansões, a segunda roda com um quinto do limite. Assim o nil que
    não tem jeito custa 20% a mais, não o dobro.
  - O caminho dela vem marcado (`solto`). Quem chama não o refaz a cada desvio do jogador: só depois de 300 jd,
    como na falha. (#114) Sem caminho nenhum (a falha, não o `solto`), tendo andado 40 jd do ponto da busca, tenta de
    novo a cada 30 s; parado, não (a mesma busca dá o mesmo nil). A rota nova herda a hora da falha junto.
  - (#114) No login e no /reload a rota é refeita do zero três segundos depois (`Travel:Fresh`, como fechar e abrir o
    guia): a posição do jogador só fica certa um pouco depois, e a rota de antes podia ter saído de outro lugar ou
    herdado uma falha. Tela de carregamento comum (masmorra, pedra, barco entre continentes) não refaz; a bordo, no
    barco ou em voo, também não. (#123) Salto de posição — outro continente ou mais de 250 jd num tique (portal, pedra,
    teleporte, soltar o espírito) — refaz do zero no tique seguinte, menos em voo e quando a perna explica o salto: a
    bordo; barco sem embarque visto com a posição a até 300 jd da chegada ou da rota dele; dentro do bonde (instância
    própria) ou na perna a pé que leva a ele. Compara com a última posição conhecida (um tique sem posição não desliga
    o salto). O relatório leva o estado da rota (`Travel:Describe`: destino, pernas, caminho e o
    último erro do desenho no mapa e no minimapa, limpo quando o desenho volta a dar certo).
  - A reta fica para fora da grade, para a busca grande demais e para a barreira longa.
- **Passagens gravadas** (issue #99) cobrem a rampa, ponte, porta ou escada que a grade não tem.
  - O jogador anda o trecho com `/ls passagem`, ou com o botão em Configurações > Ferramentas, e repete para parar.
  - O Lodestar grava um ponto a cada 3 jd em coordenada de mundo e guarda em `ns.db.passages` o trecho de pelo
    menos 10 jd.
  - A busca liga, célula a célula, o caminho andado (`TR.Links`, também na detecção de ilha) e anda por ele como
    por terreno.
  - As do addon ficam em `PassagesData.lua`, com as que vierem dos relatórios. A primeira (#104) é a rampa do
    litoral da Revantusk Village até a beira da praia, gravada em jogo.
- **Volta grande demais por uma passagem não é caminho:** mais de 2× a reta e mais de 2000 jd a mais (as voltas
  pelo mar eram 5-13 km a mais; o pé de penhasco pela rampa, ~1 km). É a
  passagem virando a única saída de uma região que na grade não tem a de verdade: o platô de The Hinterlands só
  se liga pela rampa, e Aerie Peak → Chillwind descia a rampa e nadava 4 km pela costa.
  - Caminho só da grade fica como sempre: rotas costeiras longas são reais.
  - Recusado o da busca normal, tenta a segunda; se nada serve, fica a reta.
  - A saída real (Hillsbrad) entra como passagem quando for gravada.
  - `/ls report` leva as gravadas em texto curto (`c|zona|x,y;...`).
  - Gravar ou limpar refaz os caminhos da rota: larga a busca em curso, limpa as pernas a pé e redesenha.
  - A gravação para em voo, morte, salto grande num tique (teleporte, pedra de lar), velocidade acima de 18 jd/s
    (barco, zepelim) e quando troca de continente.
  - O trecho gravado caindo por mais de ~1 s é de mão única (um pulo comum não conta). Trecho de mais de 2 células entre dois pontos não liga nada: é salto.
  - O relatório não usa "|" (a caixa leria como código de textura ou link).
- A segunda busca poda, durante a própria busca, o passo que estoura o limite de travados. O orçamento dela é um
  terço do limite, ou um quinto se a primeira estourou. Nos 552 pares de mestres de voo, o pior caso foi de 2,4 s
  para 0,5 s.
- A perna a pé atual ganha `path` (pontos de mundo); o mapa e o minimapa desenham o caminho; a
  seta aponta o ponto do caminho ~25 jd à frente; a distância é a que falta pelo caminho.
- Refaz o caminho ao trocar de perna ou se o jogador sair dele por mais de 40 jd.
- O planejador segue com a distância em reta (custo de pernas a pé) nesta versão.

## v2: chão fino e modelos (issue #106)

- **Fonte sem cliente:** `tools/casc_cdn.py` lê o mesmo do CDN público da Blizzard (TACT, produto `wowf`, build
  presa 1.60.1.71139 — a das tabelas do wago.tools; `--cdn-atual` segue a última): configuração da build →
  codificação → raiz (MFST); arquivo pelo FileDataID, do pacote por pedido de intervalo (os índices dos ~1400 pacotes
  viram um índice só, `tools/build/cdn/indices-*.npz`) ou solto, em BLTE. Só https; configuração e arquivo só entram
  no cache se o MD5 bate com o hash que os nomeia (a chave codificada é o MD5 do cabeçalho BLTE).
  Cache em `tools/build/cdn/` (fora do git; ~1 GB com tudo: índices, codificação, raiz, ADT, WMO, M2). `gen_terrain.py`
  usa o cliente local se houver, senão o CDN (`--cdn` força). Conferido: a v1 do CDN sai idêntica byte a byte à do
  cliente instalado.
- **Modelos** (`tools/modelos.py`): do ADT `_obj0`, as colocações de WMO (MODF) e M2 (MDDF), sem repetição
  (uniqueId), e os doodads dos WMO (conjunto 0 + o da colocação). Colisão: WMO pelos triângulos do grupo
  (MOVT/MOVI) com F_COLLISION ou desenhados sem ser detalhe (MOPY/MPY2); M2 pelos triângulos de colisão do
  cabeçalho. Rotação conferida com a caixa do MODF: R = Rz(ry+180°)·Ry(rx)·Rx(rz). Só os pisáveis (≤ RAMPA).
- **Chão fino:** cada célula vira 8 × 8 amostras de 2,08 jd com até 4 superfícies (terreno, água funda, modelos;
  duas a menos de 2 jd: a de cima). Amostras vizinhas ligam se o desnível cabe na RAMPA; o terreno só conta onde a
  encosta cabe na rampa em qualquer direção (de lado num barranco também se escorrega).
- **Passagens do chão fino** (`TerrainPassages.lua`, gerado junto com a grade; carregado antes de `Passages.lua`, que
  junta geradas + do addon + gravadas): o que o chão fino liga e a grade de um nó por célula perde vira passagem no
  formato das gravadas (`{c, g = 1, pts}`, pontos a menos de 2 células um do outro). Duas fontes: (1) grupos de
  componentes não escolhidos que encostam em escolhidos longe (ou sem ligação) na grade — a ponte sobre o cânion de
  uma célula, o rio sob a ponte, a escada para a plataforma —, pelos centroides dos componentes; (2) rotas nomeadas
  (`ROTAS` no gerador), pelo caminho mais curto no chão fino — Ironforge do mestre de voo ao portão (os andares da
  cidade se alternam célula a célula), Timbermaw Hold, Thorium Point, a ponte de corda de Thousand Needles e a
  entrada de Wailing Caverns (os andares da boca da caverna). As geradas são chão como o terreno: não marcam `passagem` e o
  limite de volta (2× e 2000 jd) segue só para as gravadas (Terrain.lua, `TR.Links` devolve também as gravadas).
  Passo por passagem gravada que a grade já liga não marca a rota como "por passagem" (a rampa da Revantusk está na
  grade v2): sem isso o limite derrubava a rota real Arathi ↔ Revantusk (~5,8 km) e a segunda busca cruzava o penhasco.
- **Cidade debaixo do morro:** só na pegada das cidades feitas dentro do morro e entradas pelo próprio chão
  (`INTERIORES`, por FileDataID do WMO: Ironforge), o piso mais de 50 jd abaixo do terreno substitui o terreno de cima.
  Em todo o resto o chão de fora nunca cede a um piso por baixo: uma regra geral (qualquer piso fundo) tirava o chão
  sobre cavernas e masmorras (Thorium Point, Redridge, Blackrock, Deadwind, Winterspring, Barrens sobre Wailing
  Caverns, Tanaris sobre Caverns of Time, Tirisfal sobre Undercity...). Sem a regra, o alto do morro sobre Ironforge
  ficava com a célula e o mestre de voo saía por cima das montanhas via Loch Modan (5,2 km até o portão).
- **Rua, não telhado:** onde a célula tem chão de modelo de verdade (um componente com 16+ amostras de modelo), a
  escolha inicial fica com o componente que alcança mais células vizinhas (a rua, não o telhado nem o fundo do canal);
  célula de terreno (com árvores e pedras) fica com o maior em terra firme.
- **Nunca pior que a v1 no mesmo chão** (`une_v1` no gerador; a v1 sai da mesma rodada): a grade final é a v2 mais as
  ligações da v1 onde (1) o chão escolhido pela v2 nas duas células está a até 45 jd (`NIVEL`) do centro do terreno da
  v1, (2) a célula tem ≥ 90% de terreno de pé (`FIRME`: encosta na rampa em qualquer direção) e (3) o terreno fino
  cruza a borda das duas células (`degraus`). Volta o que a escolha de um componente por célula cortava: o alto da
  muralha de Stormwind (16-32 jd acima da rua) no lugar da rua, o piso de modelo 20-40 jd abaixo do terreno em Swamp of
  Sorrows. Não entra: o outro andar (as pontes de corda de Thunder Bluff, ~80 jd acima do chão entre os morros — com a
  v1 ali, o chão de Mulgore "subia" para a ponte e Thunder Bluff caía falsamente de 2,6 para 1,5× a reta), a pegada de
  Ironforge (o terreno lá é o alto do morro: o caminho de dentro saía por cima, 4,7 km), o barranco em diagonal que a
  v1 aceitava (ela media o desnível só ao longo das linhas e colunas de vértices). Água: a da v2 onde a v2 liga.
  Custo: na célula de dois chãos a menos de 45 jd (muralha, plataforma de Booty Bay, ponte baixa) o caminho pode trocar
  de chão nela — a v1 já fazia isso em toda célula.
- **Elevadores** (Undercity ↔ Ruins of Lordaeron, Thunder Bluff ↔ Mulgore; também The Great Lift e Freewind Post): são
  transportes e não entram. Nos dados do cliente 71139 (tabelas do wago.tools, a mesma build), `GameObjects` só tem as
  placas ("Elevator to Mulgore", "The Great Lift"); `TransportAnimation` tem o percurso de cada transporte (relativo ao
  ponto de nascimento: 96,5 jd em 20649-20657, 129,5 em 11898/11899, 61 em 4170-4173, 71 em 47296/47297), mas o ponto
  de nascimento é do servidor; os modelos (`undeadelevator.m2`, `elevatorcar.m2`, `kodoelevatormachine.m2`) não estão
  postos em nenhum ADT nem conjunto de doodads de WMO perto das cidades; procurar o poço pelo desnível no chão fino não
  achou um par alto/baixo que bata com o percurso. Sem coordenada confiável, fica fora.
- **Resultado** (552 pares de mestres de voo a até 3,5 km, com as passagens geradas, sem as gravadas): sem caminho
  247 (v1) → 11; segunda busca (solto) 71 → 2; normal 234 → 539; tempo do A* 46 s → 19 s (pior par 0,4 s). Pares
  normais na v1 que ficam mais de 1,2× a v1: 5, todos explicados — Auberdine → Bloodvenom Post (4,3×), Zoram'gar →
  Bloodvenom Post (2,3×) e Farholde Keep → Morgan's Vigil (1,23×): o caminho da v1 salta em reta de uma ilha (17-18
  passos sem ligação: atravessa o morro), o da v2 é o de chão; Southshore ↔ Menethil (1,23×): a v2 anda mais e nada 57
  células a menos (nadar custa 2,5×). 800 pares aleatórios de 150-800 jd com caminho normal na v1: mais de 1,2× a v1
  6,3% (50), mais de 1,5× 4,1% (33); 48 dos 50 com o salto de ilha da v1, 2 nadando menos. Cidades (30 pares fixos,
  razão média sobre a reta, v1 → v2): Stormwind 1,07 → 1,03, Orgrimmar 2,00 → 1,75, Booty Bay 2,25 → 2,08, Ironforge
  1,42 → 1,42, Undercity 1,65 → 1,42, Thunder Bluff 3,71 → 2,60, Darnassus 1,22 → 1,15, Gadgetzan 1,19 → 1,02, Ratchet
  1,18 → 1,05 (o teste exige a média ≤ a v1 + 1%). Desde a v2 anterior: Stormwind → Goldshire 1199 → 825 jd (v1 905),
  Swamp of Sorrows leste 1226 → 421 (v1 419), Shadowprey ↔ Feathermoon 4486 → 2832 (v1 2689), The Sepulcher →
  Undercity 2478 → 2390 (v1 2717); Thorium Point ↔ Thelsamar 3,7 km (a v1 não tinha caminho); Hillsbrad 813 (v1 856);
  Tirisfal perto de Undercity 1125 (v1 1236); Felwood 575 e Wetlands 714 (v1 434 e 491, ambos com salto de ilha da v1).
  Lugares com teste: Revantusk ↔ Aerie Peak pela rampa, Ironforge do mestre de voo ao portão (busca normal, 607 jd),
  Thandol Span, a ponte de corda de Thousand Needles, Timbermaw Hold (Felwood → Moonglade, busca normal), Thorium Point
  Aliança ↔ Horda; minas e cavernas: Fargodeep, Echo Ridge, Jasperlode (do fundo do WMO para fora, pela boca), Deadmines,
  Wailing Caverns (rota fina nomeada: 381 → 177 jd; volta ao limite de 2×); Stormwind do Trade District ao porto (pela
  rampa do cais, 764 jd: 1,12×); Orgrimmar do Valley of Strength ao Cleft of Shadow. Arquivos: 1,16 MB e 1,56 MB + 68 KB
  de passagens geradas (342).
- **Limites:** não há trava de volta grande para caminho só da grade (a regra de 2× e 2000 jd vale para passagem);
  um erro de escolha numa célula vira volta longa sem aviso. Sem andares — onde dois caminhos se cruzam numa célula só
  (ponte sobre cânion de uma célula, rio sob ponte estreita), um perde. A célula do barranco que fica com a pedra de
  cima liga o alto ao fundo: Valley of Strength → Cleft of Shadow sai por 209 jd pela borda, contra 284 no chão fino
  pela rampa da ponta leste. Passagem (gerada ou gravada) entra numa célula cuja grade é outro chão e o caminho pode
  seguir pela grade dali (o alto do morro sobre o túnel): a busca não sabe em que chão está (um nó por célula;
  separar exigiria nós próprios para o miolo das passagens). Caverna de vários andares sob morro andável (Timbermaw
  Hold → Moonglade) fica para a rota fina; mina debaixo de morro andável (Jasperlode) fica com o chão de fora na
  célula: o caminho sai pela boca, mas pode passar por cima do morro. Cidades por dentro: Ironforge entra (INTERIORES),
  Undercity não (só pelos elevadores); líquido de WMO (canais de Stormwind) não é água; parede não bloqueia (só se
  acrescenta chão).

## Fora

Andares (mais de um nó por célula), elevadores (sem posição nos dados do cliente), líquido de WMO; caminho no custo do
planejador.

## Testes

- A* e decodificação com grade sintética (parede, água, sem caminho) em `tools/travel-tests.lua`.
- Gerador: `--demo` com pontos conhecidos (o chão do mestre de voo de Orgrimmar é passável; o mar
  ao lado de Ratchet é água; v2: Revantusk ↔ Aerie Peak e as duas pontas da Thandol Span ligadas na grade).
- Dados reais: um caminho em Durotar contorna o que a reta atravessa (mais longo que a reta, e
  existe).

## Critérios de aceite (em jogo)

1. Num destino atrás de um morro, o pontilhado e a seta contornam o morro.
2. Atravessar um lago raso a pé ainda é permitido; o mar não vira caminho se houver volta por terra.
3. Sem caminho na grade (cidade fechada, rampa estreita), o caminho cruza a barreira no ponto mais fino, sem
   erro; a reta só fora da grade.
