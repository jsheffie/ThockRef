# Claude Code Usage Cheat Sheet

```laptop-layout
    .--------.
    | Tab ⇥  |
    '--------'
    .-------------.
    | Shift ⇧     |
    |--------.----'-----.-------.--------------.
    | ctrl ^ | option ⌥ | CMD ⌘ | Space Bar ␣  |
    '--------'----------'-------'--------------'
```

## Keyboard Shortcuts

| Key Sequence | Result | Source |
|---|---|---|
| ⇧ ⇥ ⇧ ⇥ | Enable Planning Mode | 060 |


| `Esc` | Interrupt Claude — redirect or give alternative instructions | 070 |
| `Esc` -> `Esc` | Rewind conversation to an earlier point | 070 |
| `#` | Enter memory mode — reference or save a memory | 030 |
| `Ctrl` -> `V` | Paste a screenshot | 050 |
| `Cmd` -> `Shift` -> `4` | Take a screenshot (macOS) | 050 |
| `Cmd` -> `Shift` -> `5` | Take a screenshot to clipboard (macOS, select Options → Clipboard) | 050 |
| `Win` -> `Shift` -> `S` | Take a screenshot (Windows) | 050 |

---

## Slash Commands

| Command | Result | Source |
|---|---|---|
| `/init` | Generate a `CLAUDE.md` file in the current project | 020 |
| `/compact` | Clear conversation history but keep a summary in context | 070 |
| `/compact [instructions]` | Compact with custom summarization instructions | 070 |
| `/clear` | Dump current conversation history and free up context | 070 |
| `/<command>` | Run a custom command defined in `.claude/commands/` | 080 |

---

## File & Context References

| Key Sequence | Result | Source |
|---|---|---|
| `@` → path to file | Mention/attach a file to your prompt | 040 |
| `↑` / `↓` | Scroll through file list after typing `@` | 040 |
| `Enter` | Select a file from the `@` list | 040 |

---

## Thinking Mode Prompt Words

Add these words to your prompt to control how much Claude reasons before responding:

| Prompt Word | Thinking Level |
|---|---|
| `"Think"` | Less thinking |
| `"Think more"` | ↑ |
| `"Think a lot"` | ↑ |
| `"Think longer"` | ↑ |
| `"Ultrathink"` | More thinking |

---

## Context Management — When to Use What

| Situation | Use |
|---|---|
| Claude is going in the wrong direction | `Esc` |
| Conversation has gone off on a tangent | `Esc` -> `Esc` |
| Long session — Claude has learned but chat is cluttered | `/compact` |
| Switching to a completely unrelated task | `/clear` |
| Claude keeps making the same mistake | `Esc` then `#` |

---

## Custom Commands Quick Reference

| Step | Action |
|---|---|
| 1 | Create `.claude/commands/` in your project root |
| 2 | Add a markdown file (e.g. `audit.md` → `/audit`) |
| 3 | Use `$ARGUMENTS` placeholder for runtime parameters |
| 4 | Restart Claude Code to pick up the new command |

---

## MCP Servers

| Command | Result |
|---|---|
| `claude mcp add <name> <command>` | Register an MCP server with Claude Code |

**Example:**
```
claude mcp add playwright npx @playwright/mcp@latest
```
