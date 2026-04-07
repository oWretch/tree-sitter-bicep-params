# tree-sitter-bicep-params

[![Build Status](https://github.com/oWretch/tree-sitter-bicep-params/actions/workflows/ci.yml/badge.svg)](https://github.com/oWretch/tree-sitter-bicep-params/actions/workflows/ci.yml)
[![Discord](https://img.shields.io/discord/1063097320771698699?logo=discord)](https://discord.gg/w7nTvsVJhm)

Bicep Parameters grammar for [tree-sitter](https://github.com/tree-sitter/tree-sitter), supporting `.bicepparam` files.

Forked from the [Bicep grammar](https://github.com/tree-sitter/tree-sitter-bicep).

Adapted from [the official spec](https://docs.microsoft.com/en-us/azure/azure-resource-manager/bicep/overview).

## Supported Features

This grammar supports the full `.bicepparam` file syntax, including:

- **`using` statement** — Link to a Bicep template (`using './main.bicep'`) or use standalone (`using none`)
- **`extends` statement** — Inherit parameters from another `.bicepparam` file (`extends './base.bicepparam'`)
- **`param` declarations** — Parameter assignments without type annotations (`param location = 'eastus'`)
- **`var` declarations** — Variable assignments for reuse within the parameter file
- **`import` statements** — Import types and values from other Bicep files
- **`type` declarations** — Type definitions
- **Spread operator** — Merge objects and arrays using `...expr` (e.g., `...base.tags`)
- **Expressions** — Full expression support including string interpolation, function calls, ternary, binary, and unary operators
- **Comments** — Line (`//`), block (`/* */`), and diagnostic (`#disable-next-line`) comments

## Merging with tree-sitter-bicep

This repository could be merged into [tree-sitter-bicep](https://github.com/oWretch/tree-sitter-bicep) as a multi-grammar repository, similar to how [tree-sitter-typescript](https://github.com/tree-sitter/tree-sitter-typescript) supports TypeScript, TSX, and Flow in a single repo. This would use the `path` field in `tree-sitter.json` to point each grammar to its own subdirectory.
