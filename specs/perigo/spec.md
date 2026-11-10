# Mapa de perigo (issue #79)

## Problema

Morrer no leveling custa tempo e posição na corrida, e quase sempre por um ponto que outros já descobriram do jeito
difícil: elite que patrulha, caverna lotada, mob que chama ajuda. Hoje o Lodestar só conta as próprias mortes.

## Comportamento

- **R1 Registro.** Cada morte do jogador, fora de instância, vira `LD1|D|mapa|cx|cy|nível|id`: o mapa (uiMapID), a
  célula de 5% x 5% do mapa (0–19 em cada eixo), o nível e um id curto (hex do horário + contador).
- **R2 Envio.** Guilda, grupo e o repasse da ChehulNet (`:Realm` com repasse, prefixo `LSDanger`, que cada Lodestar
  declara com `Mesh:Relayable`). No máximo uma morte enviada por minuto. Nada sai de instância (a malha já segura
  lockdown). Desligável: "Compartilhar minhas mortes".
- **R3 Recebimento.** Valida tudo (mapa e nível inteiros em faixa, célula 0–19, id hex curto). Guarda por origem e
  id (o mesmo registro pela guilda e pelo repasse conta uma vez). A origem do repasse é declarada, não verificada:
  serve só para não contar duas vezes, nunca aparece na interface.
- **R4 Memória.** `TTL` (4 h); no máximo `MAX` (600) mortes; ao passar, sai a mais velha. Só em memória da sessão.
- **R5 Aviso.** A cada 5 s, fora de instância e com "Avisar áreas perigosas" ligado: se a célula do jogador e as 8
  vizinhas somam pelo menos `HOT` (3) mortes de pelo menos 2 origens distintas dentro do TTL, um toast:
  "Cuidado: N mortes por aqui nas últimas horas". Uma vez por célula a cada 30 min.
- **R6 Mapa.** Com o mapa-múndi aberto, uma marca por célula do mapa exibido com 2+ mortes no TTL (até 20 marcas).
- **R7 Sem nomes, sem chat.** Nenhum nome de jogador aparece; nenhuma mensagem vai ao chat.
