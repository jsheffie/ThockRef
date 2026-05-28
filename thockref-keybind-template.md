# App Name Keyboard Shortcuts

<!-- Optional: ASCII art keyboard layout rendered as a collapsible section in the UI -->
```laptop-layout
    .-------------.
    | Shift ⇧     |
    |--------.----'-----.-------.--------------.
    | ctrl ^ | option ⌥ | CMD ⌘ | Space Bar ␣  |
    '--------'----------'-------'--------------'
```

<!-- Optional: links anywhere in the file are extracted and shown in a Links section -->
- [Official keyboard shortcut docs](https://example.com/docs/shortcuts)

---

## Section Name

<!-- Basic 2-column table — most common format -->
| Key Seq | Result |
|---------|--------|
| ⌘ ⇧ p   | Command Palette |
| ⌘ p     | Quick Open |
| ⌘ ,     | Preferences |

---

## Modifier Symbols Reference

<!-- These are the modifier symbols the app understands -->
| Symbol | Key      |
|--------|----------|
| ⌘      | Command  |
| ⇧      | Shift    |
| ^      | Control  |
| ⌥      | Option / Alt |
| ⇥      | Tab      |
| ␣      | Space    |
| ↑ ↓ ← → | Arrow keys |

---

## Chord Sequences (multi-step shortcuts)

<!-- Keys written together without a separator mean press simultaneously -->
<!-- Keys written with a space between them indicate a chord (sequence) -->
| Key Seq | Result |
|---------|--------|
| ⌘k ⌘s  | Open Keyboard Shortcuts |
| ⌘k z   | Zen Mode |
| ⌘k 1   | Fold level 1 |

---

## Backtick-wrapped Key Names

<!-- Backtick-wrapped names are supported and stripped on display -->
<!-- ` -> ` between keys is normalized to → -->
| Key Seq | Result |
|---------|--------|
| `Esc`            | Cancel / interrupt |
| `Esc` -> `Esc`   | Rewind (double-escape) |
| `Cmd` -> `Shift` -> `4` | Screenshot |
| `Ctrl` -> `V`    | Paste |

---

## Table with Optional Extra Columns

<!-- The parser picks the first non-empty cell as key seq, the next non-empty cell as description -->
<!-- Extra columns (like source references or alternate bindings) are parsed but not displayed -->
| Key Seq | Result | Source |
|---------|--------|--------|
| ⌘ s     | Save   | docs   |
| ⌘ z     | Undo   | docs   |

---

## Table with Reverse-Binding Column

<!-- A blank first column is skipped — the first non-empty cell becomes the key seq -->
| Key Seq | RKey Seq | Result |
|---------|----------|--------|
| ⌘ ↑     |          | Go to top of file |
| ⌘ ↓     |          | Go to bottom of file |
| ^ ↑     |          | Mission Control |

---

## Slash Commands / Text Entries

<!-- Tables don't have to contain modifier-key shortcuts — any two-column table works -->
| Command       | Result |
|---------------|--------|
| `/help`       | Show help |
| `/compact`    | Summarize and compact context |
| `@filename`   | Attach a file to the prompt |
