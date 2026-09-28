# ThockRef

A macOS menu-bar app that shows a searchable reference of keyboard shortcuts, read from Markdown files in `~/.config/thockref/`. Click the keyboard icon in the menu bar, search across every library, or open one to browse its sections, keyboard-layout legend, and links.

## Linux (Omarchy)

The Omarchy version lives in its own repository, [omarchy-thockref](https://github.com/jsheffie/omarchy-thockref), as a bar-widget plugin for the Omarchy shell. It reads the same files from the same directory, so one set of cheat sheets works on both platforms.

## Install (macOS)

Build and install from source:

```sh
make install     # builds, assembles ThockRef.app, installs to /Applications
make seed        # copies the example libraries into ~/.config/thockref/
```

See [README.dev.md](README.dev.md) for every Makefile target and how the example files are ordered.

## Writing a library

Libraries are Markdown files with two-column pipe tables. `## Heading` lines become sections, a ```` ```laptop-layout ```` fenced block becomes a collapsible legend, and `[label](https://...)` links are collected into a Links section. [thockref-keybind-template.md](thockref-keybind-template.md) shows every supported form. Files are listed in filename order; a `NNN-` prefix controls the order and is stripped from the display name.

## License

[MIT](LICENSE)
