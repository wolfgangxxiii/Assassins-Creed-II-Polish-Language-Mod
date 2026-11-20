#!/usr/bin/env bash
# AC2 Polish V4 installer with conservative two-file backup and staging.
set -euo pipefail

if [[ $# -ne 1 || ! -d "$1" ]]; then
  printf 'Użycie: bash install.sh "/ścieżka/do/katalogu/gry"\n' >&2
  exit 2
fi

package_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd -P)"
game_dir="$(cd -- "$1" && pwd -P)"
for name in DataPC.forge DataPC_extra.forge; do
  if [[ ! -f "$package_dir/$name" || ! -f "$game_dir/$name" ]]; then
    printf 'Brakuje %s w katalogu paczki lub gry.\n' "$name" >&2
    exit 1
  fi
  if [[ -L "$game_dir/$name" ]]; then
    printf 'Odmowa nadpisania dowiązania: %s\n' "$name" >&2
    exit 1
  fi
done

backup_root="${XDG_STATE_HOME:-$HOME/.local/state}/ac2-polish-v4-backups"
mkdir -p -- "$backup_root"
backup_dir="$(mktemp -d -- "$backup_root/backup-XXXXXXXX")"
cp -p -- "$game_dir/DataPC.forge" "$backup_dir/DataPC.forge"
cp -p -- "$game_dir/DataPC_extra.forge" "$backup_dir/DataPC_extra.forge"

staged_main="$(mktemp -- "$game_dir/.DataPC.v4.XXXXXXXX")"
staged_extra="$(mktemp -- "$game_dir/.DataPC_extra.v4.XXXXXXXX")"
cleanup() { rm -f -- "$staged_main" "$staged_extra"; }
trap cleanup EXIT
cp -- "$package_dir/DataPC.forge" "$staged_main"
cp -- "$package_dir/DataPC_extra.forge" "$staged_extra"
cmp -s -- "$staged_main" "$package_dir/DataPC.forge"
cmp -s -- "$staged_extra" "$package_dir/DataPC_extra.forge"
mv -f -- "$staged_main" "$game_dir/DataPC.forge"
mv -f -- "$staged_extra" "$game_dir/DataPC_extra.forge"
trap - EXIT

printf 'Zainstalowano eksperymentalne spolszczenie V4.\n'
printf 'Kopia poprzednich plików: %s\n' "$backup_dir"
