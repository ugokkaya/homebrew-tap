# Snipvero Homebrew Tap

Official Homebrew cask for [Snipvero](https://github.com/ugokkaya/Snipvero), an open-source
screenshot and annotation app for macOS.

## Install

Requires macOS 14 (Sonoma) or later on Apple silicon. Intel Macs and Windows are not supported
by this beta.

```sh
brew tap ugokkaya/tap
brew install --cask ugokkaya/tap/snipvero
```

If Homebrew 7 asks you to trust this cask, review `Casks/snipvero.rb` and run
`brew trust --cask ugokkaya/tap/snipvero`, then retry. Trust is limited to this cask, not the whole
Tap, and does not change macOS Gatekeeper settings.

The cask downloads the versioned Developer ID-signed, notarized and stapled DMG from Snipvero's
GitHub release and verifies its SHA-256. It does not disable Gatekeeper or remove quarantine.
If you already installed Snipvero manually, quit it and back up that copy before changing the
installation method; do not use `--force` to overwrite it.

## Updates

Snipvero checks for updates only when you click **Check for Updates…** in its main window,
About window or menu bar. Downloading and restarting require explicit consent. The cask tracks
the beta channel manually; it never discovers a stable release through GitHub's latest feed.

To update with Homebrew instead of the app's updater:

```sh
brew update
brew upgrade --cask --greedy ugokkaya/tap/snipvero
```

## Uninstall

```sh
brew uninstall --cask ugokkaya/tap/snipvero
```

Screenshots you saved are not removed. See the main project's README for Screen Recording
permission guidance and privacy details. No analytics or uploads are added by this cask.
