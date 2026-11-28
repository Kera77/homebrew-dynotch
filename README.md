# Homebrew tap for Dynotch – moved

Dynotch is now **Wingmate**, in its own tap:

```bash
brew tap kera77/wingmate
brew trust kera77/wingmate
brew install --cask wingmate
```

An installed `dynotch` cask moves there by itself on the next `brew upgrade` (`tap_migrations.json`).
