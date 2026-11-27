# Cartão de voo

Issue: #129.

## Problema

Em voo, aparecia um popup com ícone, destino ("Hammerfall" / "Arathi"), tempo (4:44) e um botão de seta curva, fora do
padrão visual do Lodestar. Pedido em jogo: "a popup de voo também está meio fora do padrão do addon" / "a tela de
flight deve ser da elv, tem como substituir?". O popup não é do Lodestar. Pelo jeito é do ElvUI, ou a interface do
Forever com a pele do ElvUI.

## Comportamento

- **Cartão de voo do Lodestar** (`FlightCard.lua`), no kit de UI do addon, nos dois temas: painel com faixa dourada,
  o glifo de voo, o destino em duas linhas (`FlightCard.Split`: "Hammerfall" e "Arathi"), o tempo que falta
  (`FlightCard.Fmt`: "4:44"), uma barra de progresso fina e o botão de pousar no próximo voo do caminho
  (`TaxiRequestEarlyLanding`, só se o cliente tiver a função; some depois do pedido).
- **Quando aparece:** em voo (`UnitOnTaxi`, conferido a cada 0,25 s). Some ao pousar ou com a opção desligada.
- **Destino e duração**, nesta ordem:
  1. o voo marcado no mapa de voo nos últimos 2 min (gancho em `TakeTaxiNode`, à mão ou pelo voo automático): o nó
     clicado e o nó atual pelo `C_TaxiMap.GetAllTaxiNodes`, e a duração pela rota que o jogo voa
     (`Journey.GameRoute`: o direto se existe, senão a mais curta pelos voos conhecidos);
  2. a perna de voo atual da rota (o tempo dela menos os 10 s de decolagem);
  3. sem nenhum dos dois: "Em voo" e o tempo contando para cima ("+1:23"), sem barra.
- **Arrastável**, com a posição salva (`flightCardPos`). Configurações → Navegação: "Cartão de voo" (ligado).
- **O popup de fora:** o Lodestar ainda não o esconde, porque falta o nome do frame (`/fstack` em voo). Até lá, o
  jogador desliga o popup nas opções de onde ele vem.

## Critérios de aceite

- Em voo, o cartão com destino, zona, tempo e barra; ao pousar, some.
- Tempo pelo voo marcado (rota do jogo), senão pela perna da rota, senão contando para cima.
- Botão de pousar só com a função no cliente.
- Testes: núcleo em `tools/travel-tests.lua` (nome, tempo, progresso, duração pelos dados reais) e fumaça "Flight
  card" em `tools/ui-smoke.lua` (marcar, voar, o tempo andar, pousar antes, desligar, pousar, voo sem dados).
