# Homebrew tap for Dynotch – moved

Dynotch is now **Wingmate**, in its own tap:

```bash
brew tap kera77/wingmate
brew trust kera77/wingmate
brew install --cask wingmate
```

Already installed as `dynotch`? Wingmate's own update has replaced `Dynotch.app` with
`Wingmate.app`, so move Homebrew's record over once:

```bash
brew update
brew trust kera77/wingmate
rm -rf "$(brew --prefix)/Caskroom/dynotch"            # only Homebrew's record; the app stays
brew install --cask --adopt kera77/wingmate/wingmate  # takes over the Wingmate.app already there
```

