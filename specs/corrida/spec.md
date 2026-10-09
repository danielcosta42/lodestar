# Corrida: marcos, placar da guilda e ranking do realm

Issues: #45 (marcos + guilda), #46 (realm), #53 (guilda inteira, rede ChehulNet, postar o placar).

## Problema

O Lodestar acabou de sair e cresce só por busca na CurseForge. Quem não tem o addon nunca o vê
em uso. O leveling no lançamento do Forever é uma corrida natural — todo mundo começando junto —
e nada no jogo mostra quem está na frente.

## Objetivo

Um placar de leveling entre quem usa o Lodestar, na guilda e no realm, que:

- dá a quem usa um motivo para seguir usando (competição, ultrapassagens, marcos);
- aparece, em mensagens curtas e raras no chat da guilda, para quem ainda não usa, com o nome do
  addon — a propaganda é o próprio uso.

## Marcos

- Tabela de dados extensível: id estável, regra de detecção, piso de plausibilidade (o menor
  /played possível para batê-lo). Novos marcos entram a cada fase do jogo, só acrescentando linhas.
- Regras de detecção: nível atingido; quest entregue; primeiro chefe derrotado numa masmorra;
  profissão chegando a 300.
- v1: níveis 10, 20, 30, 40, 50, 60; primeira masmorra; profissão 300; sintonização do Núcleo
  Derretido (quest 7848); sintonização de Onyxia (6502 Aliança, 6602 Horda).
- O tempo de um marco é o /played no momento em que foi batido. Nada é preenchido para trás:
  marco batido antes do addon (ou do marco existir) fica sem tempo. Quem instala o addon a partir
  do nível 15 começa sem "primeira masmorra" (o próximo chefe não é o primeiro). Marco batido antes
  de o /played chegar (logo depois de entrar) espera por ele.
- Id desconhecido (vindo de versão mais nova) é guardado e não aparece no painel.

## Registro e protocolo

- Cada jogador anuncia o próprio registro: classe, nível, % de XP, /played total e os marcos com
  tempo. Pela guilda e pelo grupo (invisível a quem não tem o addon); no realm, também pelo YELL da
  malha ChehulNet (#46).
- O que chega fica salvo por realm, com a guilda de quem anunciou pela guilda e quando foi visto.
- Repasse (#46): cada cliente repassa o top 5 de cada placar que conhece. Pelo YELL, um placar a
  cada 3 min, rotativo, e o próprio registro só quando muda (ou a cada 5 min) — o YELL é dividido
  com a família de addons; pela guilda, pulando o placar que alguém já repassou há pouco.
- Cada entrada repassada leva a idade da notícia: repasse não rejuvenesce ninguém, e o registro
  sem notícia real há 30 dias sai mesmo circulando.
- O registro vindo do próprio dono vence o repassado. Por repasse, só vira "da guilda" quem está
  no roster. No máximo 300 registros só de repasse (sai o de notícia mais velha).
- Descarte do implausível: marco abaixo do piso, nível fora de 1–60, XP fora de 0–100, marco de
  nível acima do nível do registro, /played total menor que o tempo de um marco, /played abaixo do
  piso do nível. No repasse, a entrada ruim cai sozinha (o resto da mensagem vale).
- Sem garantia contra trapaça: o painel diz "placar da rede, não oficial".
- Registro sem notícia há 30 dias sai.

## Placares

- **Guilda:** quem anunciou pela guilda (ou foi repassado pela guilda) e ainda está no roster. No
  Forever o roster pode trazer só o primeiro nome: casa também por ele. Com a janela da guilda
  escondendo os offline, o roster não filtra (senão quem desloga some).
- **Realm (#46):** todos os registros do realm.
- **Só o nível (#53):** no Mais alto, entra também quem não usa o Lodestar — da guilda, pelo roster
  (todo membro, online e offline); no realm, também os peers da malha ChehulNet (o nível que todo
  addon da família anuncia). Aparecem só com o nível, marcados "sem Lodestar", sem duplicar quem tem
  registro (casa pelo primeiro nome). Liderança e ultrapassagens passam a valer contra a guilda
  inteira. O Mais rápido segue só com quem tem tempo de marco.
- Em cada um, **Mais alto** (nível, depois XP, desempate por menos /played) e **Mais rápido** (menor
  /played até o marco escolhido; só quem tem tempo naquele marco).
- O jogador sempre aparece, ao vivo.
- Online = anunciou nos últimos 5 minutos; senão, "visto há …". Repassado é marcado.

## Avisos

- **Chat da guilda** (ligado, com opção de desligar), só os eventos do próprio jogador:
  - assumiu o 1º lugar de "Mais alto" na guilda: passou quem era o 1º (que segue no placar), está à
    frente dele por nível (não pelo XP, que vai e volta entre quem upa junto), com pelo menos 3 no
    placar; uma vez por nível;
  - bateu um marco: a posição na guilda (só com 3+ no placar; senão, o marco sem posição) e, com o
    #46, no realm;
  - primeiro 60 da guilda (com 3+ no placar).
  - Antes de o roster da guilda chegar, nada se decide.
  - No máximo uma mensagem a cada 10 minutos; o que passar do limite é descartado.
  - Sempre começando por "[Lodestar]".
- **Toast privado** (ligado, com opção de desligar): alguém passou você, ou você passou alguém,
  em "Mais alto" na guilda. No máximo um a cada 5 minutos.

## Interface

- Painel "Corrida": abas Guilda / Realm; Mais alto / Mais rápido; seletor de marco no "Mais
  rápido"; linhas com posição, nome na cor da classe, valor, online ou "visto há". Vazio:
  explica que só aparece quem usa o Lodestar.
- Abre por `/ls corrida` (e `race`), e pelas entradas do antigo "Na rota" (`/ls squad`, `/ls party`,
  Configurações › Painéis).
- Rodapé da guilda: "X de Y com Lodestar"; botões "Postar placar" (o top 5 do placar aberto no chat
  da guilda, com o link; manual, no máximo 1 a cada 10 min) e "Chamar a guilda".
- Configurações › Grupo: "Avisos da corrida no chat da guilda" e "Avisos de ultrapassagem".

## Fora desta versão

Anti-trapaça de verdade (exigiria servidor), placar por classe, marcos de reputação e PvP,
retrospectiva e splits (issues próprias).
