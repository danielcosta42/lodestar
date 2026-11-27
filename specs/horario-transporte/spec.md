# Horário de barco e zepelim (parte D)

Continuação do planejador de viagem (`specs/planejador-viagem/`, parte D da tabela de escopo).

## Problema

O planejador conta meia volta de espera em todo cais (`w`, a média). Na prática você chega e o
barco saiu há 10 s (espera de uma volta inteira) ou está atracado (espera zero). A seta não diz
quando o transporte sai nem avisa quando ele chega.

## Fontes

- **Ciclo:** a tabela do cliente (`TaxiPathNode`, já usada) dá as paradas e a espera em cada uma
  (`Delay`, 30 ou 60 s); o trecho entre paradas é o comprimento do trajeto à velocidade do transporte
  (estimativa, corrigida pelo que se mede em jogo).
- **Fase (em que ponto do ciclo ele está agora):** não há tabela nem API. Vem de observação em jogo:
  1. **anunciadores**: os mestres de zepelim (6, dois por torre) e os shipmasters de Ratchet e Booty
     Bay gritam a chegada; o NPC (pelo GUID do grito) diz a parada;
  2. **viagem**: embarcar e desembarcar dá a saída de uma parada e a chegada na outra — e o tempo
     real do trecho.
- Nada do Shortest Path Forever (GPL-3.0) é copiado.

## Modelo

Transporte com paradas `1..m`, trecho `s[k]` (de `k` para `k+1`) e espera `d[k]`. Ciclo
`T = Σs + Σd`. Chegada na parada 1 no instante 0; saída de `k` = chegada + `d[k]`; chegada em `k+1` =
saída de `k` + `s[k]`.

Observação (parada, chegada|saída, hora do servidor) vira o **início do ciclo** `t0`. Guardam-se
até 5 inícios por transporte e por reino (`LodestarDB.transit[reino][id]`). Com dois ou mais, o
período sai deles: `n = round((último − primeiro) / T)`, `T = (último − primeiro) / n`.

- Observação que diverge da previsão em mais de 30 s (o servidor reiniciou, a estimativa estava
  longe) recomeça a lista a partir dela.
- Observação com mais de 12 h é descartada. Horário que vence no meio do plano vale como quem não tem horário: a perna sai pela espera estimada (#61).

## Compartilhar com a guilda e o grupo (#116)

- Cada observação própria (grito, embarque, desembarque) sai em mensagem de addon escondida (`LSTransit`) para a
  guilda e o grupo (grupo, raide ou instância): `o|<id do transporte>|<parada>|<a|d>|<hora do servidor>`. Nada
  pessoal. Sem canal de reino (decisão do jogador).
- Quem recebe junta ao horário (`Travel:ObserveShared`) se `TransitShare.Accept` deixar: transporte e parada
  conhecidos, hora não futura (folga de 60 s) nem com mais de 12 h, mais nova que a última que o horário tem, e — com
  observação própria de até 2 h — fase a até 30 s da própria. A rota que usa o transporte é refeita (não a bordo nem
  em voo). Observação de fora não volta a sair e não conta como própria (`own`).
- Pergunta (`q`) 15 s depois de entrar e 3 s depois de entrar num grupo (no máximo uma a cada 30 s). Quem tem
  horário responde depois de 1–6 s aleatórios, com a observação mais nova de cada transporte, menos a que outro já
  respondeu igual ou mais nova nesse meio tempo; uma resposta por canal a cada 60 s.
- Configurações → Grupo: "Horário de barco e zepelim" (ligado por padrão).

## Uso

- **Planejador:** com fase conhecida, a espera no cais é até a próxima saída na hora em que você
  chega lá (aresta dependente do tempo, Dijkstra segue valendo: esperar nunca adianta chegar).
  Sem fase, a média de sempre.
- **Seta e painel:** "Vá ao cais: barco para X · sai em 2m10s"; no cais, "Pegue o barco para X ·
  chega em 40s" ou "· embarque agora" (atracado).
- **Aviso:** indo ao cais ou esperando nele, toast e som 30 s antes da chegada e na chegada.
- **Bússola:** o tempo total já inclui a espera real.

## Casos de borda

- Sem observação: tudo como antes (meia volta), sem contagem na tela.
- Transporte de outra facção / cais inimigo: fora do planejador (já é assim).
- Grito ouvido de outra torre (os dois zepelins da mesma torre): o NPC que grita decide a parada,
  não a posição do jogador.
- Personagens do mesmo reino compartilham as observações (por conta).

## Testes

- Funções puras do horário (offsets, próxima saída, aprendizado do período, reinício) em
  `tools/travel-tests.lua`.
- Planejador: com fase conhecida, chega-se ao cais logo depois da saída → espera ≈ uma volta;
  logo antes → espera curta.
- Gerador: espera por parada e anunciadores no `--demo`.
- Harness: grito de anunciador grava a fase; a perna de barco ganha a hora de saída.

## Critérios de aceite (em jogo)

1. Na torre de Tirisfal, ao ouvir "o zepelim chegou", a seta passa a mostrar a contagem dos
   próximos.
2. Indo ao cais com horário conhecido, o aviso toca 30 s antes da chegada.
3. Depois de uma viagem, a travessia medida substitui a estimada no tempo da rota.
