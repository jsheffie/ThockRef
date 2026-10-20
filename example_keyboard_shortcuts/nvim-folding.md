# Neovim Code Folding Keyboard Shortcuts

<!-- All keys are normal mode. Fold commands all start with z. -->
- [:help folding](https://neovim.io/doc/user/fold.html)
- [nvim-ufo (VS Code style folds)](https://github.com/kevinhwang93/nvim-ufo)

---

## Open / Close Folds

| Key Sequence | Result |
|---|---|
| `z` `c` | Close fold under cursor |
| `z` `o` | Open fold under cursor |
| `z` `a` | Toggle fold under cursor |
| `z` `C` | Close fold under cursor recursively |
| `z` `O` | Open fold under cursor recursively |
| `z` `A` | Toggle fold under cursor recursively |
| `z` `v` | Open just enough folds to reveal the cursor line |

---

## Whole Buffer

| Key Sequence | Result |
|---|---|
| `z` `M` | Close all folds |
| `z` `R` | Open all folds |
| `z` `m` | Fold one level more |
| `z` `r` | Fold one level less |
| `z` `n` | Disable folding (keeps fold state) |
| `z` `N` | Re-enable folding |
| `z` `i` | Toggle folding on / off |

---

## Navigate Folds

| Key Sequence | Result |
|---|---|
| `z` `j` | Move to start of next fold |
| `z` `k` | Move to end of previous fold |
| `[` `z` | Move to start of current open fold |
| `]` `z` | Move to end of current open fold |

---

## Create / Delete Folds

<!-- Manual and marker foldmethod only -->
| Key Sequence | Result |
|---|---|
| `z` `f` `a` `p` | Fold a paragraph (`zf` + any motion) |
| `z` `F` | Fold N lines |
| `:{range}fold` | Fold a line range |
| `z` `d` | Delete fold under cursor |
| `z` `D` | Delete folds under cursor recursively |
| `z` `E` | Eliminate all folds |

---

## Fold Method Settings

<!-- Treesitter is the best default for most languages -->
| Command | Result |
|---|---|
| `:set foldmethod=expr` | Fold by `foldexpr` (use with treesitter) |
| `:set foldmethod=indent` | Fold by indentation |
| `:set foldmethod=syntax` | Fold by syntax file |
| `:set foldmethod=marker` | Fold by `{{{` `}}}` markers |
| `:set foldmethod=manual` | Create folds yourself with `zf` |
| `:set foldexpr=v:lua.vim.treesitter.foldexpr()` | Treesitter folds |
| `:set foldlevel=99` | Open all folds |
| `:set foldlevelstart=99` | Open all folds when opening a file |
| `:set foldcolumn=1` | Show fold indicator column |
| `:help folding` | Folding docs |
