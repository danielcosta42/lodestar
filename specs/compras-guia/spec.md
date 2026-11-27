# Compras do guia na casa de leilões

Issue: #134.

## Problema

Pedido em jogo: "da uma verificada se da pra descobrir se itens de quest são compraveis, ai oferece a opção da pessoa
passar na AH e comprar tudo o que o guia precisa". Escolhas do jogador: uma lista com busca na casa de leilões (sem
compra automática), olhando o resto do guia atual.

## Verificação (dados do Forever, `tools/build/forever/items.json`)

Dos 1.233 itens de coleta dos guias de leveling, 1.139 são da classe "quest" (12): presos ao pegar, fora da casa de
leilões. Uns 85 não são de quest: tecido (Linen Cloth), carnes (Chunk of Boar Meat, Strider Meat, Buzzard Wing),
ervas (Liferoot, Earthroot), as páginas de Stranglethorn, Un'Goro Soil, Felcloth e outros. Quem decide no jogo é o
vínculo do item.

## Comportamento

- **A lista (`Shopping.Needs` / `Shopping.Missing`):** junta os goals `collect`/`get` de **objetivo de quest** (`|q`).
  O `collect` sem quest é o "pegue o item aqui", e o id dele é de objeto, não de item. Entram os passos ativos do guia
  atual, do passo de agora até o fim, menos os pulados.
  - **Passos à frente:** são julgados pelo estado simulado. As quests que os passos de antes pegam e entregam valem
    para o `haveq`/`completed` das condições (`ns:EvalCondition(cond, sim)`); a coleta atrás de `haveq` da própria
    quest entra.
  - **Feito:** só a quest já entregue ou o objetivo marcado à mão. O objetivo pronto e ainda não entregue tem os
    itens na bolsa, e eles contam para o que as outras quests pedem.
  - **Quanto:** o pedido do diário para quest já pegada (`QuestState.GoalCounts`), senão o número do guia. Sem
    nenhum, o item fica com a conta desconhecida: "faltam ?", ou "faltam N+" quando parte é conhecida.
  - **Por item:** vale o maior pedido de cada quest (o mesmo objetivo aparece em mais de um passo), somado entre
    quests diferentes.
  - **O que já se tem:** desconta a bolsa e o banco (`ns.ItemCount(id, true)`).
- **Negociável (`Shopping.Tradeable`):** a classe (`ns.ItemInfoInstant`, instantânea) não é 12 e o vínculo
  (`ns.ItemInfo`, 14º retorno) é nenhum (0), ao equipar (2) ou ao usar (3). A classe é vista primeiro, então o item de
  quest não pede dados ao servidor. Item negociável ainda fora do cache pede os dados e a lista é refeita quando
  chegam. A resposta fica guardada por item.
- **Quando refaz:** com a lista suja, no máximo uma vez por segundo. Fica suja ao mudar o passo ou o guia, com a
  bolsa, o diário e os dados de item chegando. A janela do guia é redesenhada quando a lista muda.
- **Na janela do guia:** com itens a comprar, uma linha "N itens do guia na casa de leilões", logo abaixo das ações
  rápidas. O clique põe a casa de leilões mais perto como parada antes do passo (`Services:GoTo("auction")`);
  Shift+clique vai direto. A dica lista até 10 itens e quantos faltam, e "+N" para o resto.
- **Na casa de leilões (`AUCTION_HOUSE_SHOW`), só com algo a comprar:** o painel "Compras do guia" ao lado da janela,
  com até 10 itens (ícone, nome no idioma do cliente, "faltam N", botão "Buscar") e "+N" para o resto.
  - "Buscar" põe a casa de leilões no modo de compra e faz a busca exata (`"nome"`) pela barra de busca
    (`AuctionHouseFrame.SearchBar`; o Forever só tem a `Blizzard_AuctionHouseUI`). Quem compra é o jogador.
  - Com o Auctionator (API v1), um botão cria a lista de compras "Lodestar", com busca exata e a quantidade que falta
    em cada termo (`ConvertToSearchString`).
  - O painel some ao fechar a casa de leilões.
- **Configurações → Navegação:** "Compras do guia" (ligado).

## Critérios de aceite

- A lista só tem itens negociáveis de objetivo de quest que o resto do guia pede (os passos à frente pelo estado
  simulado), menos o que já se tem; quest entregue, passo pulado ou inativo fica de fora; o pedido do diário vence o
  número do guia.
- A linha no guia leva à casa de leilões mais perto.
- O painel na casa de leilões busca cada item; o Auctionator recebe a lista se estiver instalado.
- Testes: núcleo em `tools/lodestar3-tests.lua` e fumaça "Guide shopping" em `tools/ui-smoke.lua`.
