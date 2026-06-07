# Homebrew Taps

Homebrew tap for dobbo-ca tools.

## Installation

```bash
brew tap dobbo-ca/taps
```

## Available Formulae

### az-go

Azure CLI alternative written in Go.

```bash
brew install az-go
```

### graphify-go

Turn a codebase into a queryable knowledge graph (Go/JS/TS).

```bash
brew install graphify-go
```

## Conflict Resolution

The `az-go` formula conflicts with the official `azure-cli` package. If you have `azure-cli` installed, you must uninstall it first:

```bash
brew uninstall azure-cli
brew install az-go
```

The `graphify-go` formula installs a `graphify` binary and conflicts with the official `graphify` package. If you have `graphify` installed, you must uninstall it first:

```bash
brew uninstall graphify
brew install graphify-go
```

