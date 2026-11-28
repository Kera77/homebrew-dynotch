# Homebrew tap for Wingmate

```bash
brew tap kera77/wingmate
brew trust kera77/wingmate   # Homebrew 7 asks to trust third-party taps
brew install --cask wingmate
```

The cask always installs the latest [Wingmate release](https://github.com/Kera77/Wingmate/releases).
Wingmate updates itself afterwards (Settings › About). The app used to be called Dynotch:
`cask_renames.json` moves an installed `dynotch` cask to `wingmate` on the next `brew upgrade`.

The cask is kept in the main repository under `Packaging/Homebrew` and copied here.
