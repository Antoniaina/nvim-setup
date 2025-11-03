# Configuration Neovim personnalisée Antoni

## Langages supportés 🛠️
- **C, C++** : Analyse statique, auto-complétion, formatage, debug
- **Rust** : Analyse statique, auto-complétion, formatage, debug
- **JavaScript/TypeScript** : LSP, formatage, linting, auto-complétion
- (Support aussi Python, Lua, HTML, CSS...)

## Plugins principaux 🌟
- **rust-tools.nvim** : outils avancés pour Rust (actions LSP, exécution, debug...)
- **clangd_extensions.nvim** : support enrichi C/C++ avec clangd
- **nvim-lspconfig** & **mason.nvim** : gestion automatique des serveurs LSP (C/C++: clangd, Rust: rust_analyzer, JS: tsserver, etc.)
- **codelldb & cpptools** : pour le débogage Rust et C++/C
- **clang-format** : pour formatter ton code C/C++
- **prettier, eslint_d** : pour le JS/TS

## Commandes & Raccourcis utiles ⚡
- `:Mason` : gérer les outils/serveurs LSP
- Fichiers `.c`, `.cpp`, `.rs`, `.js`, `.ts` : bénéficient automatiquement des fonctionnalités avancées
- `K` sous le curseur : documentation LSP
- `<leader>rn` : renommer le symbole sous le curseur
- `<leader>ca` : voir/appliquer les actions de code (quickfix/refacto...)
- `[d` / `]d` : naviguer entre les diagnostics (erreurs/avertissements)

### Rust
- Commandes via `:Rust...` (format, run, test, debug...)

### C/C++
- Diagnostics en temps réel (`clangd`)
- Formatage automatique avec `clang-format`
- Debug avec `codelldb` ou `cpptools`

### JS/TS
- Diagnostics via `tsserver`, format `.js/.ts` avec `prettier`, lint avec `eslint_d`

## Extensions complémentaires déjà incluses
- `telescope.nvim`, `nvim-tree`, `bufferline`, `lualine`... pour la navigation et l’UI
- Support du multi-langages, navigation rapide, et détection automatique des serveurs LSP selon le fichier

---

_N’hésite pas à lancer `:Mason` puis à installer les outils manquants si tu veux personnaliser ou ajuster la config selon tes projets !_
