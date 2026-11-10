# Mapa de perigo (issue #79)

## Problema

Morrer no leveling custa tempo e posição na corrida, e quase sempre por um ponto que outros já descobriram do jeito
difícil: elite que patrulha, caverna lotada, mob que chama ajuda. Hoje o Lodestar só conta as próprias mortes.

## Comportamento

- **R1 Registro.** Cada morte do jogador, fora de instância, vira `LD2|D|mapa|cx|cy|id`: o mapa (uiMapID), a célula de
  5% x 5% do mapa (0–19 em cada eixo) e um id curto (hex do horário + contador). Sem nível. O `LD1` da primeira
  versão (com o nível) ainda é lido, sem o nível.
- **R2 Envio (opcional, desligado por padrão).** Guilda, grupo e o `:Realm` da ChehulNet **sem repasse** (a malha
  sussurra a alguns pares, que a recebem com o remetente autêntico; sem repasse o volume fica pequeno e nenhuma origem
  é só alegada). No máximo uma morte por minuto. Nada sai de instância nem em lockdown de chat.
- **R3 Recebimento.** Valida tudo. Guarda por origem e id (o mesmo registro por dois caminhos conta uma vez). O
  remetente real (quem entregou; num repasse da malha, o `via`) é o que conta: no máximo `SENDER_MAX` (5) mortes por
  remetente real no TTL, e as pessoas distintas do aviso são remetentes reais. Minhas mortes (e o que eu mesmo
  entreguei) não entram. Nenhum nome aparece.
- **R4 Memória.** `TTL` (4 h); no máximo `MAX` (600) mortes; ao passar, sai a mais velha. Só em memória da sessão.
- **R5 Aviso.** A cada 5 s, fora de instância, vivo, fora de taxi e com "Avisar áreas perigosas" ligado: se a célula e
  as 8 vizinhas somam pelo menos `HOT` (3) mortes de pelo menos `ORIGINS` (2) remetentes reais no TTL, um toast. Uma
  vez por célula a cada 30 min, e um aviso de perigo qualquer a cada `TOAST_GAP` (3 min).
- **R6 Mapa.** Com o mapa-múndi aberto e o aviso ligado, uma marca por célula do mapa exibido com 2+ mortes de 2+
  remetentes reais (a regra do aviso), até 20.
- **R7 Sem nomes, sem chat.**
