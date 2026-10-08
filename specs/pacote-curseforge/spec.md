# Pacote do CurseForge vazio

Issue #11.

## Problema

O app do CurseForge não lista o Lodestar no flavor Forever. Projeto e arquivos estão aprovados,
mas todo zip publicado (v1.0.0 a v2.1.0) tem só `Lodestar/CHANGELOG.md` — o v2.1.0, 891 bytes.
Sem addon dentro, o CurseForge marca o arquivo como incompatível com o cliente e o esconde.

## Causa

`.pkgmeta` com comentário no fim dos itens de `ignore`. O `yaml_listitem` do BigWigsMods/packager
não tira comentário inline; o item entra com aspas, `#` e `;`, e o `eval copy_directory_tree ...`
quebra no `;`: a cópia roda com destino vazio (`Copying files into :`, `mkdir: cannot create
directory ''`). O build não falha — só o CHANGELOG, gerado depois, entra no zip.

## Solução

- Comentário do `.pkgmeta` só em linha própria (o packager pula `^\s*#`).
- `package-check` abre o zip do build e falha sem `Lodestar/Lodestar.toc`, com menos de 50 `.lua`
  ou com arquivo de desenvolvimento (`tools/`, `docs/`, `specs/`, `.github/`, `.png`).

## Critérios de aceite

- O zip do build tem o addon inteiro e nada de desenvolvimento.
- O CI falha com o `.pkgmeta` antigo e passa com o novo.
- O próximo release aparece na lista de arquivos e no app do CurseForge (Forever).
