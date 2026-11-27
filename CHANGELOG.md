## [2.23.0](https://github.com/danielcosta42/lodestar/compare/v2.22.0...v2.23.0) (2026-11-27)


### Features

* **grupo:** avisar o grupo vem ligado e também avisa cada objetivo ([#127](https://github.com/danielcosta42/lodestar/issues/127)) ([9ffef3e](https://github.com/danielcosta42/lodestar/commit/9ffef3e86391ead99c36090de1eae91b118f6cac))
* **xp:** a previsão da faixa conta a XP das quests do diário ([#126](https://github.com/danielcosta42/lodestar/issues/126)) ([3831972](https://github.com/danielcosta42/lodestar/commit/3831972cdb9efe32c87ffa5842db9fe41df4fe0f))


### Bug Fixes

* **grupo:** objetivo sem texto não conta, quest pronta não volta a falar; testes provam limite, repetição e migração ([#127](https://github.com/danielcosta42/lodestar/issues/127)) ([79e8bdb](https://github.com/danielcosta42/lodestar/commit/79e8bdbe27d6c4bd9bff3eda48cd1cc51a58eff3))
* **rota:** o bonde e o tique sem posição não enganam o salto ([#123](https://github.com/danielcosta42/lodestar/issues/123)) ([21fe714](https://github.com/danielcosta42/lodestar/commit/21fe7144d5dc910c645f71fbf23ef7b8214d0969))
* **rota:** o teleporte do zepelim não conta como trecho da rota dele ([#123](https://github.com/danielcosta42/lodestar/issues/123)) ([e78b40c](https://github.com/danielcosta42/lodestar/commit/e78b40cfa744d29040912d93d37e1376f282eb7e))
* **rota:** portal ou teleporte refaz a rota no tique seguinte ([#123](https://github.com/danielcosta42/lodestar/issues/123)) ([0f4a931](https://github.com/danielcosta42/lodestar/commit/0f4a931b5030e1416e414657f7e5ca4a0fc8c7ef))
* **rota:** saída do bonde refaz e o barco mede pelos trechos da rota ([#123](https://github.com/danielcosta42/lodestar/issues/123)) ([21e102e](https://github.com/danielcosta42/lodestar/commit/21e102e5b55db8b26fd368fe1dcb0feb4266f148))
* **viagem:** a pé sem medida não troca a rota antes de medir; dois estados por nó no planejador ([#125](https://github.com/danielcosta42/lodestar/issues/125)) ([d073bf4](https://github.com/danielcosta42/lodestar/commit/d073bf4c5d4bde9d383c4aa40af5b5be013fc49c))
* **viagem:** desvio da perna atual fica guardado; raio cresce com a perna ([#125](https://github.com/danielcosta42/lodestar/issues/125)) ([bc4dfe7](https://github.com/danielcosta42/lodestar/commit/bc4dfe7faf3dc5f0f19f858262280a1ebb2a6e45))
* **viagem:** desvio vale do pouso ao lado e na perna atual; a pé não emenda em a pé ([#125](https://github.com/danielcosta42/lodestar/issues/125), [#124](https://github.com/danielcosta42/lodestar/issues/124)) ([90b14f0](https://github.com/danielcosta42/lodestar/commit/90b14f08577a72ec9a35327bc3664cd8659528d3))
* **viagem:** não segura a rota cujo voo o mapa de voo desmentiu ([#125](https://github.com/danielcosta42/lodestar/issues/125)) ([c248fc6](https://github.com/danielcosta42/lodestar/commit/c248fc632e4ccf1a2021284d3cb3f399d20b7a20))
* **viagem:** replanejar forçado com o mesmo destino também mede antes de trocar ([#125](https://github.com/danielcosta42/lodestar/issues/125)) ([3bb5c46](https://github.com/danielcosta42/lodestar/commit/3bb5c466de4c8abe934f2a3ac1c98646e0692bef))
* **viagem:** voo junto só quando o jogo voa assim; a pé pelo terreno corrige a rota ([#124](https://github.com/danielcosta42/lodestar/issues/124), [#125](https://github.com/danielcosta42/lodestar/issues/125)) ([b6997cf](https://github.com/danielcosta42/lodestar/commit/b6997cfdbcff469d953652c0b82f7164c560b725))
* **viagem:** voos seguidos viram um só, com o via ([#124](https://github.com/danielcosta42/lodestar/issues/124)) ([7017ad1](https://github.com/danielcosta42/lodestar/commit/7017ad15c764410f56cc5f0142a1f9bf6c17e9c3))
* **xp:** a XP/hora total só entra na previsão com uma hora de sessão ([#126](https://github.com/danielcosta42/lodestar/issues/126)) ([1b7ba13](https://github.com/danielcosta42/lodestar/commit/1b7ba137bd246ae4d92861e694e9e9a3a4df4f99))
* **xp:** previsão sem contar a entrega duas vezes; fora as quests puladas e falhadas ([#126](https://github.com/danielcosta42/lodestar/issues/126)) ([7b01d7c](https://github.com/danielcosta42/lodestar/commit/7b01d7cf9d13005c16efa98f8bca25b2d458df8d))

