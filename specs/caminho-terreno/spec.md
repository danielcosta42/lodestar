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
    como na falha.
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
  cidade se alternam célula a célula), Timbermaw Hold. As geradas são chão como o terreno: não marcam `passagem` e o
  limite de volta (2× e 2000 jd) segue só para as gravadas (Terrain.lua, `TR.Links` devolve também as gravadas).
- **Cidade debaixo do morro:** só na pegada das cidades feitas dentro do morro e entradas pelo próprio chão
  (`INTERIORES`, por FileDataID do WMO: Ironforge), o piso mais de 50 jd abaixo do terreno substitui o terreno de cima.
  Em todo o resto o chão de fora nunca cede a um piso por baixo: uma regra geral (qualquer piso fundo) tirava o chão
  sobre cavernas e masmorras (Thorium Point, Redridge, Blackrock, Deadwind, Winterspring, Barrens sobre Wailing
  Caverns, Tanaris sobre Caverns of Time, Tirisfal sobre Undercity...). Sem a regra, o alto do morro sobre Ironforge
  ficava com a célula e o mestre de voo saía por cima das montanhas via Loch Modan (5,2 km até o portão).
- **Rua, não telhado:** onde a célula tem chão de modelo de verdade (um componente com 16+ amostras de modelo), a
  escolha inicial fica com o componente que alcança mais células vizinhas (a rua, não o telhado nem o fundo do canal);
  célula de terreno (com árvores e pedras) fica com o maior em terra firme.
- **Resultado** (552 pares de mestres de voo a até 3,5 km, com as passagens geradas, sem as gravadas): sem caminho
  247 (v1) → 11; segunda busca (solto) 71 → 2; normal 234 → 539; tempo do A* 46 s → 20 s. Pontes (163, do tabuleiro
  de cada modelo): até 1,25× a reta 95 → 153, nadando 63 → 20. Lugares com teste: Revantusk ↔ Aerie Peak pela rampa,
  Ironforge do mestre de voo ao portão (busca normal), Thandol Span, a ponte de corda de Thousand Needles, Timbermaw
  Hold (Felwood → Moonglade, busca normal), Thorium Point Aliança ↔ Horda. Arquivos: 1,06 → 1,20 MB e 1,32 → 1,61 MB
  (escape decimal mais curto na string Lua; os bytes são os mesmos) + 67 KB de passagens geradas (362, ~4 mil pontos).
- **Limites:** não há trava de volta grande para caminho só da grade (a regra de 2× e 2000 jd vale para passagem);
  um erro de escolha numa célula vira volta longa sem aviso. Pares piores que 1,2× o melhor de (v1, v2 sem passagens geradas), a investigar: Auberdine → Bloodvenom Post
  (4,3×) e Zoram'gar → Bloodvenom Post (2,3×), Shadowprey ↔ Feathermoon (1,65×), Thorium Point ↔ Thelsamar (1,25-1,37×),
  The Sepulcher → Undercity (1,34×) e seis pares a 1,22-1,23×. Desde acb8544, ainda piores (sem explicação fechada): Swamp of Sorrows leste (400 → 1226 jd), Tirisfal perto de
  Undercity (713 → 1260; a v1 dava 1236), Felwood (604 → 2272), Stormwind → Goldshire (828 → 1380), Hillsbrad (789 → 943);
  entrada de Wailing Caverns 380 jd contra 182 no chão fino. Cidades (pares aleatórios fixos, razão média sobre a reta,
  v1 → v2): Stormwind 1,07 → 1,21, Booty Bay 2,25 → 2,38 (piores); Orgrimmar 2,00 → 1,91, Undercity 1,65 → 1,48,
  Thunder Bluff 3,71 → 2,62, Gadgetzan 1,19 → 1,10, Ratchet 1,18 → 1,15 (melhores); Ironforge e Darnassus iguais.
  Undercity por dentro ↔ Brill não entra: só se chega
  pelos elevadores (transporte, não modelo do ADT). Minas e cavernas comuns (Fargodeep, Wailing Caverns, Deadmines) e
  os canais de Stormwind / o Cleft of Shadow de Orgrimmar ainda sem teste com nome. Sem andares — onde dois caminhos se cruzam numa célula só (ponte sobre cânion de uma célula, rio sob
  ponte estreita), um perde; caverna de vários andares sob morro andável (Timbermaw Hold → Moonglade) fica para a
  segunda busca; cidades por dentro (Ironforge, Undercity) e elevadores/transportes não entram (o elevador não é
  modelo do ADT); líquido de WMO (canais de Stormwind) não é água; parede não bloqueia (só se acrescenta chão).

## Fora

Andares (mais de um nó por célula), elevadores, líquido de WMO; caminho no custo do planejador.

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
