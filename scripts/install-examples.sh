#!/bin/sh
# Installs the example shortcut files into ~/.config/thockref in the order
# given by example_keyboard_shortcuts/thockref-files-order.
#
# Each file gets a generated NNN- prefix from its position in the order file.
# The app sorts files by name and strips that prefix from the display name.
#
#   seed  copy files that are not installed yet (matched by name, any prefix)
#   dist  remove all installed .md files, then copy every listed file
set -eu

mode=${1:-}
case "$mode" in
    seed|dist) ;;
    *) echo "usage: $0 seed|dist" >&2; exit 2 ;;
esac

examples_dir=example_keyboard_shortcuts
order_file=$examples_dir/thockref-files-order
config_dir=${HOME}/.config/thockref

names=$(sed -e 's/#.*//' -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//' -e '/^$/d' "$order_file")

# Validate the whole list before touching the config directory.
status=0
for name in $names; do
    if [ ! -f "$examples_dir/$name" ]; then
        echo "error: $name is listed in $order_file but $examples_dir/$name does not exist" >&2
        status=1
    fi
done
duplicates=$(printf '%s\n' $names | sort | uniq -d)
if [ -n "$duplicates" ]; then
    echo "error: listed more than once in $order_file:" $duplicates >&2
    status=1
fi
[ "$status" -eq 0 ] || exit 1

for f in "$examples_dir"/*.md; do
    name=$(basename "$f")
    if ! printf '%s\n' $names | grep -qxF "$name"; then
        echo "warning: $f is not listed in $order_file and will not be installed" >&2
    fi
done

mkdir -p "$config_dir"

if [ "$mode" = dist ]; then
    rm -f "$config_dir"/*.md
    echo "Removed $config_dir/*.md"
fi

n=0
for name in $names; do
    n=$((n + 1))
    dest=$config_dir/$(printf '%03d' "$n")-$name
    if [ "$mode" = seed ]; then
        existing=$(ls "$config_dir"/[0-9][0-9][0-9]-"$name" "$config_dir/$name" 2>/dev/null | head -n 1)
        if [ -n "$existing" ]; then
            echo "Skipped $name (already installed as $existing)"
            continue
        fi
        echo "Seeded $dest"
    else
        echo "Dist $dest"
    fi
    cp "$examples_dir/$name" "$dest"
done
