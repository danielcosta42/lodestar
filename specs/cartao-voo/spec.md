# Cartão de voo

Issue: #129.

## Problema

Em voo, aparecia um popup com ícone, destino ("Hammerfall" / "Arathi"), tempo (4:44) e um botão de seta curva, fora do
padrão visual do Lodestar. Pedido em jogo: "a popup de voo também está meio fora do padrão do addon" / "a tela de
flight deve ser da elv, tem como substituir?". O popup não é do Lodestar. Pelo jeito é do ElvUI, ou a interface do
Forever com a pele do ElvUI.

## Comportamento

- **Cartão de voo do Lodestar** (`FlightCard.lua`), no kit de UI do addon, nos dois temas. É um painel com faixa
  dourada, 290 px de largura, com:
  - o glifo de voo;
  - o destino em duas linhas (`FlightCard.Split`: "Hammerfall" e "Arathi"; a vírgula larga "，" do zh/ko também
    separa);
  - o tempo que falta, com "~" porque é estimado pelo trajeto (`FlightCard.Fmt`: "~4:44"; passado do tempo, "…");
  - uma barra de progresso fina;
  - o botão de pousar no próximo voo do caminho (`TaxiRequestEarlyLanding`). Só aparece se o cliente tiver a função
    e houver mestre de voo no meio: o voo direto não tem onde pousar antes. Depois do pedido, o tempo vira
    "pousando…" e a barra some; o pedido fica no voo salvo e sobrevive ao /reload.
- **Quando aparece:** em voo (`UnitOnTaxi`, conferido a cada 0,25 s), com ou sem guia aberto (a viagem também anda
  com destino manual). Some ao pousar ou com a opção desligada. Fora de voo, o voo salvo é apagado (também o de um
  pouso com o addon fora: desconexão, tela de carregamento).
- **Destino e duração**, nesta ordem:
  1. O voo marcado no mapa de voo nos últimos 2 min (gancho em `TakeTaxiNode`, à mão ou pelo voo automático). O nó
     clicado vem pelo `slotIndex` do `C_TaxiMap.GetAllTaxiNodes`, senão pelo nome; o nó atual também vem dali. Sem
     o nó (o mapa já fechou), nada é marcado. A duração e os trechos vêm da rota que o jogo voa
     (`Journey.GameRoute`: o direto se existe, senão a mais curta pelos voos conhecidos).
  2. O voo salvo (`ns.char.voo`, com a decolagem na hora do servidor): volta depois de um /reload em voo, enquanto
     `FlightCard.Valid` (até a duração mais 1 min; sem duração, 30 min).
  3. A perna de voo atual da rota (o tempo dela menos os 10 s de decolagem; trechos = os do meio + 1, e perna sem
     `via` é direta).
  4. Sem nenhum deles: "Em voo" e o tempo contando para cima ("+1:23"), sem barra.
- **Arrastável**, com a posição salva (`flightCardPos`). Configurações → Navegação: "Cartão de voo" (ligado).
- **O popup de fora (#133):** o `/fstack` mostrou que é o **`OneForAllFlightTimer`**, do addon OneForAll, e não do
  ElvUI. Com o cartão à mostra, os frames de `FlightCard.OUTROS` (por ora só esse) ficam invisíveis: alfa 0 e sem
  mouse, no frame e nos filhos diretos não protegidos. Isso é reaplicado a cada tique, porque o addon de fora pode
  mudar. Ao pousar ou com o cartão desligado, voltam com o alfa e o mouse de antes. Sem o addon, nada muda.

## Critérios de aceite

- Em voo, o cartão com destino, zona, tempo e barra; ao pousar, some.
- Tempo pelo voo marcado (rota do jogo), senão pela perna da rota, senão contando para cima.
- Botão de pousar só com a função no cliente.
- Testes: núcleo em `tools/travel-tests.lua` (nome, tempo, progresso, duração e trechos, voo salvo, dados reais) e
  fumaça "Flight card" em `tools/ui-smoke.lua`: o direto sem botão; o tempo andando; o pouso limpando o voo salvo;
  o /reload em voo; a janela de 2 min; a perna da rota com o botão; pousar antes; o botão de volta no voo seguinte;
  sem a função; desligado; sem dados; o timer do OneForAll some, é reaplicado e volta como estava ao pousar e com o
  cartão desligado. Cada caso falha se a regra dele for tirada.
