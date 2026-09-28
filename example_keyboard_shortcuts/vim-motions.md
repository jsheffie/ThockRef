# Vim Motions Keyboard Shortcuts

```laptop-layout
                 k  (up)            gg  (first line of file)
                 ^
    h (left) <       > l (right)    H / M / L  (top / middle / bottom of screen)
                 v
                 j  (down)          G   (last line of file)

   0 <-- B <-- b <--  [cursor]  --> w --> W --> $
 line   WORD  word               word   WORD   line
 start                                          end
```

- [Vim motion docs (Neovim)](https://neovim.io/doc/user/motion.html)

---

## Cursor Movement

| Key Sequence | Result |
|---|---|
| `h` | Move cursor left |
| `j` | Move cursor down |
| `k` | Move cursor up |
| `l` | Move cursor right |
| `w` | Move to start of next word |
| `W` | Move to start of next WORD (incl. punctuation) |
| `b` | Move to start of previous word |
| `B` | Move to start of previous WORD (incl. punctuation) |
| `0` | Move to start of line |
| `$` | Move to end of line |
| `gg` | Jump to first line of file |
| `G` | Jump to last line of file |
| `:42` | Jump to line 42 |
| `H` | Move to top of screen |
| `M` | Move to middle of screen |
| `L` | Move to bottom of screen |

---

## Counts & Operator + Motion

| Key Sequence | Result |
|---|---|
| `3yy` | Yank 3 lines (any count works) |
| `d3j` | Delete current line and 3 lines down |
| `y5j` | Yank current line and 5 lines down |
| `y}` | Yank to end of paragraph |
| `yG` | Yank to end of file |
| `dG` | Delete to end of file |
| `ygg` | Yank to start of file |

---

## Insert Mode

| Key Sequence | Result |
|---|---|
| `i` | Insert before cursor |
| `I` | Insert at start of line |
| `a` | Insert after cursor |
| `A` | Insert at end of line |
| `ea` | Append at end of word |
| `o` | Add new line below cursor |
| `O` | Add new line above cursor |
| `Esc` | Exit insert mode |

---

## Change / Replace

| Key Sequence | Result |
|---|---|
| `r` | Replace single character |
| `cc` | Replace line |
| `cw` | Replace to end of word |
| `c$` | Replace to end of line |
| `s` | Substitute character |
| `S` | Substitute line |
| `u` | Undo |
| `^` `r` | Redo |

---

## Yank / Paste

| Key Sequence | Result |
|---|---|
| `y` | Yank (copy) |
| `yy` | Yank a line |
| `yw` | Yank a word |
| `y$` | Yank to end of line |
| `p` | Paste after cursor |
| `P` | Paste before cursor |

---

## Registers / OS Clipboard

| Key Sequence | Result |
|---|---|
| `"+y` | Yank selection to OS clipboard |
| `"+yy` | Yank current line to OS clipboard |
| `"+5yy` | Yank 5 lines to OS clipboard |
| `"+y5j` | Yank current line and 5 down to OS clipboard |
| `"+p` | Paste from OS clipboard after cursor |
| `"+P` | Paste from OS clipboard before cursor |
| `"*y` | Yank to primary selection (X11 / Linux) |
| `:echo has('clipboard')` | Check clipboard support (1 = enabled) |

---

## Delete

| Key Sequence | Result |
|---|---|
| `dd` | Delete (cut) a line |
| `dw` | Delete a word |
| `D` | Delete to end of line |
| `x` | Delete character |

---

## Search & Replace

| Key Sequence | Result |
|---|---|
| `/pattern` | Search forward |
| `?pattern` | Search backward |
| `n` | Next match |
| `N` | Previous match |
| `*` | Search forward for word under cursor |
| `#` | Search backward for word under cursor |
| `:noh` | Clear search highlighting |
| `:%s/old/new/g` | Replace all occurrences in file |
| `:%s/old/new/gc` | Replace all, confirming each |

---

## Visual Mode

| Key Sequence | Result |
|---|---|
| `v` | Enter visual mode |
| `V` | Enter linewise visual mode |
| `^` `v` | Enter visual block mode |
| `>` | Shift selection right |
| `<` | Shift selection left |
| `~` | Change case |
| `Esc` | Exit visual mode |

---

## Indent

| Key Sequence | Result |
|---|---|
| `>>` | Shift line right by shiftwidth |
| `<<` | Shift line left by shiftwidth |
| `==` | Auto-indent line |

---

## Files, Save & Exit

| Key Sequence | Result |
|---|---|
| `:e <file>` | Open file |
| `ZZ` | Save (if changed) and quit |
| `ZQ` | Quit without saving |
| `:w` | Write (save) |
| `:q` | Quit (fails if there are changes) |
| `:wq` | Write and quit |
| `:x` | Write only if changed, then quit |
| `:q!` | Force quit without saving |
| `:qa` | Quit all buffers |
