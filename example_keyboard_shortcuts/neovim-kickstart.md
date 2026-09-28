# Neovim (kickstart.nvim) Keyboard Shortcuts

<!-- Leader is Space (vim.g.mapleader = ' ' in ~/.config/nvim/init.lua) -->
```laptop-layout
    .-------------.
    | Shift ⇧     |
    |--------.----'-----.-------.--------------------------.
    | ctrl ^ | option ⌥ | CMD ⌘ | Space Bar ␣  = <leader>  |
    '--------'----------'-------'--------------------------'
    
```

- [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim)
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [ripgrep (required for live grep)](https://github.com/BurntSushi/ripgrep)

---

## Telescope Search

| Key Sequence | Result |
|---|---|
| `␣` `/` | Fuzzy search in current buffer |
| `␣` `s` `g` | Live grep across all files |
| `␣` `s` `w` | Grep word under cursor (or visual selection) |
| `␣` `s` `/` | Live grep limited to open files |
| `␣` `s` `f` | Search file names |
| `␣` `s` `.` | Search recent files |
| `␣` `␣` | Find open buffers |
| `␣` `s` `r` | Resume last Telescope search |
| `␣` `s` `k` | Search keymaps |
| `␣` `s` `h` | Search help |
| `␣` `s` `c` | Search commands |
| `␣` `s` `d` | Search diagnostics |
| `␣` `s` `s` | Select a Telescope picker |
| `␣` `s` `n` | Search Neovim config files |

---

## Telescope Picker

| Key Sequence | Result |
|---|---|
| `^` `n` | Next result |
| `^` `p` | Previous result |
| `Enter` | Open selected result |
| `^` `q` | Send all results to quickfix list |
| `Esc` | Close picker |

---

## Quickfix List

| Key Sequence | Result |
|---|---|
| `:cnext` | Next quickfix match |
| `:cprev` | Previous quickfix match |
| `:cdo s/old/new/g` | Replace across every quickfix match |

---

## Health Checks

| Key Sequence | Result |
|---|---|
| `:checkhealth telescope` | Verify Telescope and ripgrep |
| `:checkhealth` | Run all health checks |
