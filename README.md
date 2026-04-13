# homebrew-magenta

Homebrew tap for [Magenta IDE](https://github.com/baoduy/multi-agent-ide) — a multi-repo multi-agent IDE for spec-driven development.

## Installation

```bash
brew tap baoduy/magenta
brew install --cask magenta-ide
```

## Upgrade

```bash
brew upgrade --cask magenta-ide
```

## Check For New Releases

The cask uses Homebrew `livecheck` to detect the latest GitHub release while keeping installs pinned to an explicit version and checksum.

```bash
brew livecheck --cask baoduy/magenta/magenta-ide
```

## Uninstall

```bash
brew uninstall --cask magenta-ide
```
