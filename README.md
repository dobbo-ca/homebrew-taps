# Homebrew Taps

Homebrew tap for cdobbyn tools.

## Installation

```bash
brew tap cdobbyn/taps
```

## Available Formulae

### az-go

Azure CLI alternative written in Go.

```bash
brew install az-go
```

## Conflict Resolution

The `az-go` formula conflicts with the official `azure-cli` package. If you have `azure-cli` installed, you must uninstall it first:

```bash
brew uninstall azure-cli
brew install az-go
```

