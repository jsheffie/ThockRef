- [Master VS Code's keyboard shortcuts in 13 minutes](https://www.youtube.com/watch?v=nWIRJBCjls8)
- [vscode keyboard shortcuts for mac](https://code.visualstudio.com/shortcuts/keyboard-shortcuts-macos.pdf)

```laptop-layout
               .-------------.   
               | Shift ⇧     |  
               |--------.----'-----.-------.
Laptop Layout: | ctrl ^ | option ⌥ | CMD ⌘ | 
                `-------'----------'-------'
```

## General

| Key Seq | Result |
|---------|--------|
| ⌘ ⇧ p, F1 | Command Palette |
| ⌘ p | Quick Open / Go to File |
| ⌘ ⇧ n | New window/instance |
| ⌘ w | Close window/instance |
| ⌘ , | User Settings |
| ⌘k ⌘s | Keyboard Shortcuts |

## Basic Editing

| Key Seq | Result |
|---------|--------|
| ⌘ x | Cut line (empty selection) |
| ⌘ c | Copy line (empty selection) |
| ⌥ ↓ / ⌥ ↑ | Move line down/up |
| ⇧ ⌥ ↓ / ⇧ ⌥ ↑ | Copy line down/up |
| ⇧ ⌘ k | Delete line |
| ⌘ Enter / ⇧ ⌘ Enter | Insert line below/above |
| ⇧ ⌘ \ | Jump to matching bracket |
| ⌘ ] / ⌘ [ | Indent/outdent line |
| Home / End | Go to beginning/end of line |
| ⌘ ↑ / ⌘ ↓ | Go to beginning/end of file |
| ^ PgUp / ^ PgDn | Scroll line up/down |
| ⌘ PgUp / ⌘ PgDn | Scroll page up/down |
| ⌥ ⌘ [ / ⌥ ⌘ ] | Fold/unfold region |
| ⌘k ⌘[ / ⌘k ⌘] | Fold/unfold all subregions |
| ⌘k ⌘0 / ⌘k ⌘j | Fold/unfold all regions |
| ⌘k ⌘c | Add line comment |
| ⌘k ⌘u | Remove line comment |
| ⌘ / | Toggle line comment |
| ⇧ ⌥ a | Toggle block comment |
| ⌥ z | Toggle word wrap |

## Multi-cursor and Selection

| Key Seq | Result |
|---------|--------|
| ⌥ + click | Insert cursor |
| ⌥ ⌘ ↑ | Insert cursor above |
| ⌥ ⌘ ↓ | Insert cursor below |
| ⌘ u | Undo last cursor operation |
| ⇧ ⌥ i | Insert cursor at end of each line selected |
| ⌘ l | Select current line |
| ⇧ ⌘ l | Select all occurrences of current selection |
| ⌘ F2 | Select all occurrences of current word |
| ^ ⇧ ⌘ → / ← | Expand/shrink selection |
| ⇧ ⌥ ⌘ ↑ / ↓ | Column (box) selection up/down |
| ⇧ ⌥ ⌘ ← / → | Column (box) selection left/right |
| ⇧ ⌥ ⌘ PgUp | Column (box) selection page up |
| ⇧ ⌥ ⌘ PgDn | Column (box) selection page down |

## Search and Replace

| Key Seq | Result |
|---------|--------|
| ⌘ f | Find |
| ⌥ ⌘ f | Replace |
| ⌘ g / ⇧ ⌘ g | Find next/previous |
| ⌥ Enter | Select all occurrences of Find match |
| ⌘ d | Add selection to next Find match |
| ⌘k ⌘d | Move last selection to next Find match |

## Rich Languages Editing

| Key Seq | Result |
|---------|--------|
| ^ Space, ⌘ i | Trigger suggestion |
| ⇧ ⌘ Space | Trigger parameter hints |
| ⇧ ⌥ f | Format document |
| ⌘k ⌘f | Format selection |
| F12 | Go to Definition |
| ⌥ F12 | Peek Definition |
| ⌘k F12 | Open Definition to the side |
| ⌘ . | Quick Fix |
| ⇧ F12 | Show References |
| F2 | Rename Symbol |
| ⌘k ⌘x | Trim trailing whitespace |
| ⌘k m | Change file language |

## Navigation

| Key Seq | Result |
|---------|--------|
| ⌘ t | Show all Symbols |
| ^ g | Go to Line |
| ⌘ p | Go to File |
| ⇧ ⌘ o | Go to Symbol |
| ⇧ ⌘ m | Show Problems panel |
| F8 / ⇧ F8 | Go to next/previous error or warning |
| ^ ⇧ Tab | Navigate editor group history |
| ^ - / ^ ⇧ - | Go back/forward |
| ^ ⇧ m | Toggle Tab moves focus |

## Editor Management

| Key Seq | Result |
|---------|--------|
| ⌘ w | Close editor |
| ⌘k f | Close folder |
| ⌘ \ | Split editor |
| ⌘ 1 / ⌘ 2 / ⌘ 3 | Focus into 1st, 2nd, 3rd editor group |
| ⌘k ⌘ ← / ⌘k ⌘ → | Focus into previous/next editor group |
| ⌘k ⇧ ⌘ ← / ⌘k ⇧ ⌘ → | Move editor left/right |
| ⌘k ← / ⌘k → | Move active editor group |

## File Management

| Key Seq | Result |
|---------|--------|
| ⌘ n | New File |
| ⌘ o | Open File |
| ⌘ s | Save |
| ⇧ ⌘ s | Save As |
| ⌥ ⌘ s | Save All |
| ⌘ w | Close |
| ⌘k ⌘w | Close All |
| ⇧ ⌘ t | Reopen closed editor |
| ⌘k Enter | Keep preview mode editor open |
| ^ Tab / ^ ⇧ Tab | Open next/previous |
| ⌘k p | Copy path of active file |
| ⌘k r | Reveal active file in Finder |
| ⌘k o | Show active file in new window/instance |

## Display

| Key Seq | Result |
|---------|--------|
| ^ ⌘ f | Toggle full screen |
| ⌥ ⌘ 0 | Toggle editor layout (horizontal/vertical) |
| ⌘ = / ⇧ ⌘ - | Zoom in/out |
| ⌘ b | Toggle Sidebar visibility |
| ⇧ ⌘ e | Show Explorer / Toggle focus |
| ⇧ ⌘ f | Show Search |
| ^ ⇧ g | Show Source Control |
| ⇧ ⌘ d | Show Debug |
| ⇧ ⌘ x | Show Extensions |
| ⇧ ⌘ h | Replace in files |
| ⇧ ⌘ j | Toggle Search details |
| ⇧ ⌘ u | Show Output panel |
| ⇧ ⌘ v | Open Markdown preview |
| ⌘k v | Open Markdown preview to the side |
| ⌘k z | Zen Mode (Esc Esc to exit) |

## Debug

| Key Seq | Result |
|---------|--------|
| F9 | Toggle breakpoint |
| F5 | Start/Continue |
| F11 / ⇧ F11 | Step into/out |
| F10 | Step over |
| ⇧ F5 | Stop |
| ⌘k ⌘i | Show hover |

## Integrated Terminal

| Key Seq | Result |
|---------|--------|
| ^ ` | Show/toggle integrated terminal |
| ^ ⇧ ` | Create new terminal |
| ⌘ c | Copy selection |
| ⇧ ⌘ ] / ⇧ ⌘ [ | Focus next/previous terminal |
| ⌘ ↑ / ⌘ ↓ | Scroll up/down |
| PgUp / PgDn | Scroll page up/down |
| ⌘ Home / End | Scroll to top/bottom |
| ⌘ k | Clear terminal |

---

```
Windows: CMD⌘    == Ctrl
         option == Alt
```
