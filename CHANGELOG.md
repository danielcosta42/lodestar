## [2.4.0](https://github.com/danielcosta42/lodestar/compare/v2.3.0...v2.4.0) (2026-10-08)


### Features

* **biblioteca:** lista agrupada com painel de detalhe, um só recomendado ([90e3f50](https://github.com/danielcosta42/lodestar/commit/90e3f50c9c990480e0106fa0b7dbb032a64b500a)), closes [#39](https://github.com/danielcosta42/lodestar/issues/39)
* **boletim:** card vertical para print, números de cada nível, mandar na guilda/grupo ([a00cad4](https://github.com/danielcosta42/lodestar/commit/a00cad4bd7a9ce9a01630bd9b0b37c1a96830bb8)), closes [#35](https://github.com/danielcosta42/lodestar/issues/35)
* **boletim:** visual da proposta A, XP/h certo no nível em andamento ([2797819](https://github.com/danielcosta42/lodestar/commit/27978199c6a2997379432718432a15f15ae51eb1)), closes [#41](https://github.com/danielcosta42/lodestar/issues/41)
* **configurações:** janela fixa que cabe na tela, menu lateral, rolagem e seções reorganizadas ([2b59beb](https://github.com/danielcosta42/lodestar/commit/2b59beb3d52cdd04e1e2cc4bf40c3f6e6cf433f6)), closes [#37](https://github.com/danielcosta42/lodestar/issues/37)
* **scan:** /ls scan pergunta ao servidor os NPCs sem título ([c6e07b8](https://github.com/danielcosta42/lodestar/commit/c6e07b8b3786d52a98c9aa1e614b6402d71bae53)), closes [#17](https://github.com/danielcosta42/lodestar/issues/17)
* **terreno:** a perna a pé segue o terreno — desenho, seta e tempo ([703d7a8](https://github.com/danielcosta42/lodestar/commit/703d7a8c962bfe16d92e63e913897565d106b52e)), closes [#23](https://github.com/danielcosta42/lodestar/issues/23)
* **terreno:** leitor CASC, grade de passagem do cliente e A* ([2a65486](https://github.com/danielcosta42/lodestar/commit/2a6548687a1cde85a80fce97b6b3e1a68f8e423c)), closes [#23](https://github.com/danielcosta42/lodestar/issues/23)
* **treinadores:** lista do cache do cliente depois do /ls scan ([46b77d6](https://github.com/danielcosta42/lodestar/commit/46b77d6be9cbe5808445312a23f5371a68bb68d8))
* **viagem:** horário de barco e zepelim — dados, cálculo e planejador ([32fc287](https://github.com/danielcosta42/lodestar/commit/32fc28782ca0277fe74748ff741fb218225d9e45)), closes [#21](https://github.com/danielcosta42/lodestar/issues/21)
* **viagem:** horário de barco e zepelim em jogo — anúncio, embarque, contagem e aviso ([db4fabc](https://github.com/danielcosta42/lodestar/commit/db4fabca006a78f761b6fd195c640ab457dd526e)), closes [#21](https://github.com/danielcosta42/lodestar/issues/21)


### Bug Fixes

* **automação:** gossip só no NPC do passo, guloso sem cinza/repetível, login respeita aba escolhida ([e4cdec5](https://github.com/danielcosta42/lodestar/commit/e4cdec530517b51607a94f3effa03a47632b153a))
* **boletim:** revisão do [#35](https://github.com/danielcosta42/lodestar/issues/35) ([e21d1e8](https://github.com/danielcosta42/lodestar/commit/e21d1e8a7f935285f4f084d9613094c8a8e4a354))
* **guias:** descartada não trava o passo seguinte, migração do passo salvo sem os injetados, trava do Voltar solta quando o passo está por fazer ([53123bc](https://github.com/danielcosta42/lodestar/commit/53123bc01614b6b56afe12180c91792cfaa2710a)), closes [#25](https://github.com/danielcosta42/lodestar/issues/25)
* **guias:** missão de vários objetivos, sem passos injetados, automação no lugar certo ([cb88b1b](https://github.com/danielcosta42/lodestar/commit/cb88b1bcf5d46811a404ac78eab78c2a3862ed31)), closes [#25](https://github.com/danielcosta42/lodestar/issues/25)
* **guias:** passo salvo recua quando o guia muda (assinatura), aba de guia renomeado segue para o da mesma zona ([be039c6](https://github.com/danielcosta42/lodestar/commit/be039c61d3be81d9925af936568a9c30b46223a6))
* **horário:** período aprendido de verdade, embarque detectável, sem alarme falso ([aba3851](https://github.com/danielcosta42/lodestar/commit/aba3851827b1343c1478f43e09c07005a533d99e)), closes [#22](https://github.com/danielcosta42/lodestar/issues/22) [#21](https://github.com/danielcosta42/lodestar/issues/21)
* **item de missão:** botão seguro não protege a janela do guia ([b1d27d1](https://github.com/danielcosta42/lodestar/commit/b1d27d1cb277ebfeab47377b4b033760673bd8b4)), closes [#25](https://github.com/danielcosta42/lodestar/issues/25)
* **masmorras:** raides sem troca de token, sem repetível, sintonizações vanilla, sem sobras de TBC ([821acad](https://github.com/danielcosta42/lodestar/commit/821acad1ebdab2f9a69c0c2a35f0830f954ceaa3)), closes [#33](https://github.com/danielcosta42/lodestar/issues/33)
* **masmorras:** revisão do [#33](https://github.com/danielcosta42/lodestar/issues/33) e sobras de TBC no addon ([dbb02e1](https://github.com/danielcosta42/lodestar/commit/dbb02e19f8cf34120bf1416a192c6bd48ccfe2b4))
* nome com sobrenome no Squad, /played do addon fora do chat, boletim espera o combate, slider não regrava ao abrir, import não substitui guia embutido ([726d225](https://github.com/danielcosta42/lodestar/commit/726d22555fc33d02d4fb692b7fa7f17d5f1087b0))
* **roteador:** diário cabe em 20, aceite dentro do nível, classe herdada do pré-requisito, sem missão que ninguém recebe ([bf6bc4f](https://github.com/danielcosta42/lodestar/commit/bf6bc4f67befc09adc50dddf08abb21193501b1d)), closes [#27](https://github.com/danielcosta42/lodestar/issues/27)
* **roteador:** revisão no meta do guia, sem sonda de depuração, herança pelo banco, giver no continente ([49a4953](https://github.com/danielcosta42/lodestar/commit/49a495365d6c87e2df16916bf0558c787bdb9530)), closes [#27](https://github.com/danielcosta42/lodestar/issues/27)
* **terreno:** sem troca de rota em laço, objetivo não conclui antes, A* com orçamento ([414ff08](https://github.com/danielcosta42/lodestar/commit/414ff082d734d04d67b63f7740ae2b73e0e7831d)), closes [#24](https://github.com/danielcosta42/lodestar/issues/24) [#23](https://github.com/danielcosta42/lodestar/issues/23)
* **textos:** strings fixas no ns.L, profissões traduzidas, termos do ptBR, sem chaves mortas ([fae1f3e](https://github.com/danielcosta42/lodestar/commit/fae1f3e90e2e982391b5501ceed7018c326cb690)), closes [#31](https://github.com/danielcosta42/lodestar/issues/31)
* **treinadores:** paladino da Horda no banco, pelo título do cache do cliente ([a5ffa4e](https://github.com/danielcosta42/lodestar/commit/a5ffa4e4115506e0ce98ccf7f73a7be3973a0eb9)), closes [#17](https://github.com/danielcosta42/lodestar/issues/17)
* **viagem:** não replaneja a bordo; grito escolhe o zepelim pelo destino ([6d6d7d7](https://github.com/danielcosta42/lodestar/commit/6d6d7d74a97d23671f5ba6a85adb60f013743a5f)), closes [#21](https://github.com/danielcosta42/lodestar/issues/21)
* **viagem:** teleporte e Retorno Astral na seta, minimapa em cidade, bonde do cliente ([cc800e2](https://github.com/danielcosta42/lodestar/commit/cc800e2946bd898f787def37ea97e4bfc941fdc0)), closes [#19](https://github.com/danielcosta42/lodestar/issues/19)
* **viagem:** treinador da classe lembrado em jogo (paladino da Horda) ([fa6abba](https://github.com/danielcosta42/lodestar/commit/fa6abba24ee9199b140184755a6672c7da315a2f)), closes [#17](https://github.com/danielcosta42/lodestar/issues/17)


### Performance Improvements

* **viagem:** mapa, minimapa e bússola só redesenham quando algo muda ([dd1d316](https://github.com/danielcosta42/lodestar/commit/dd1d316a79bc81c12ad4673dde4b67e81879904d)), closes [#19](https://github.com/danielcosta42/lodestar/issues/19)

