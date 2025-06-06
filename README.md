# tree-sitter-bicep-params

[![Build Status](https://github.com/oWretch/tree-sitter-bicep-params/actions/workflows/ci.yml/badge.svg)](https://github.com/oWretch/tree-sitter-bicep-params/actions/workflows/ci.yml)
[![Discord](https://img.shields.io/discord/1063097320771698699?logo=discord)](https://discord.gg/w7nTvsVJhm)

Bicep Parameters grammar for [tree-sitter](https://github.com/tree-sitter/tree-sitter).

Forked from the [Bicep grammar](https://github.com/tree-sitter/tree-sitter-bicep).

Adapted from [the official spec](https://docs.microsoft.com/en-us/azure/azure-resource-manager/bicep/overview)

## Features

### Outline Support

This grammar includes support for generating an outline of Bicep Parameter files. The outline feature analyzes the syntax tree and produces a hierarchical summary of the main constructs:

- **Parameters** (`param`) - Input parameters with their types and default values
- **Variables** (`var`) - Variable declarations and assignments  
- **Types** (`type`) - Custom type definitions
- **Import statements** (`import`) - Module imports and functionality imports
- **Using statements** (`using`) - Namespace/template declarations

The outline information is extracted using tree-sitter queries in `queries/outline.scm` and can be used by editor integrations to provide symbol navigation and outline views.

#### Usage

The outline query is available in the Rust and Python bindings:

**Rust:**
```rust
use tree_sitter_bicep_params::OUTLINE_QUERY;

// Use with tree-sitter query API to extract outline information
let query = Query::new(&language, OUTLINE_QUERY)?;
// ... execute query on parsed tree
```

**Python:**
```python
import tree_sitter_bicep_params

# The outline query is lazily loaded
outline_query = tree_sitter_bicep_params.OUTLINE_QUERY

# Use with tree-sitter query API
# ... execute query on parsed tree
```

Each construct captured by the outline includes:
- `@name` - The identifier/name of the construct
- `@detail` - Additional context (type information, file paths, etc.)
- `kind` - Classification for editor integration (parameter, variable, type, import, using)
