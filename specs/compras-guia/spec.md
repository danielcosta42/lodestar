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

- **A lista (`Shopping.Needs` / `Shopping.Missing`):** junta os goals `collect`/`get` com item dos passos ativos do
  guia atual, do passo de agora até o fim, menos os pulados e os já feitos. Por item, vale o maior pedido de cada
  quest (o mesmo objetivo aparece em mais de um passo), somado entre quests diferentes. Desconta o que já está na
  bolsa e no banco (`C_Item.GetItemCount(id, true)`).
- **Negociável (`Shopping.Tradeable`):** a classe (`GetItemInfoInstant`) não é 12 e o vínculo (`GetItemInfo`, 14º
  retorno) é nenhum (0), ao equipar (2) ou ao usar (3). Item ainda fora do cache: pede os dados e refaz quando chegam.
- **Quando refaz:** com a lista suja, no máximo uma vez por segundo. Fica suja ao mudar o passo ou o guia, com a
  bolsa, o diário e os dados de item chegando. A janela do guia é redesenhada quando a lista muda.
- **Na janela do guia:** com itens a comprar, uma linha "N itens do guia na casa de leilões", logo abaixo das ações
  rápidas. O clique põe a casa de leilões mais perto como parada antes do passo (`Services:GoTo("auction")`);
  Shift+clique vai direto. A dica lista os itens e quantos faltam.
- **Na casa de leilões (`AUCTION_HOUSE_SHOW`):** o painel "Compras do guia" ao lado da janela, com até 10 itens
  (ícone, nome no idioma do cliente, "faltam N", botão "Buscar") e "+N" para o resto.
  - "Buscar" faz a busca exata (`"nome"`) na casa de leilões nova (`AuctionHouseFrame.SearchBar`) ou na antiga
    (`BrowseName` + `AuctionFrameBrowse_Search`). Quem compra é o jogador.
  - Com o Auctionator (API v1), um botão cria a lista de compras "Lodestar" com os itens, buscas exatas e as
    quantidades.
  - O painel some ao fechar a casa de leilões.
- **Configurações → Navegação:** "Compras do guia" (ligado).

## Critérios de aceite

- A lista só tem itens negociáveis que o resto do guia pede, menos o que já se tem; objetivo feito, passo pulado ou
  inativo fica de fora.
- A linha no guia leva à casa de leilões mais perto.
- O painel na casa de leilões busca cada item; o Auctionator recebe a lista se estiver instalado.
- Testes: núcleo em `tools/lodestar3-tests.lua` e fumaça "Guide shopping" em `tools/ui-smoke.lua`.
