# homebrew-magenta

Homebrew tap for [Magenta IDE](https://github.com/baoduy/multi-agent-ide) — a multi-repo multi-agent IDE for spec-driven development.

## Installation

```bash
brew tap baoduy/magenta
brew install --cask magenta-ide
```

## Upgrade

If the tap already contains a newer pinned cask version, upgrade with:

```bash
brew upgrade --cask magenta-ide
```

If `livecheck` reports a newer GitHub release but this tap has not been updated yet, first update [Casks/magenta-ide.rb](/Users/steven/_CODE/GIT/homebrew-magenta/Casks/magenta-ide.rb) with the new `version` and `sha256` values, commit that change to the tap, run `brew update`, and then run the upgrade command above.

## Check For New Releases

The cask uses Homebrew `livecheck` to detect the latest GitHub release while keeping installs pinned to an explicit version and checksum.

```bash
brew livecheck --cask baoduy/magenta/magenta-ide
```

## Uninstall

```bash
brew uninstall --cask magenta-ide
```
