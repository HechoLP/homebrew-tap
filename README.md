# HechoLP Homebrew Tap

Personal Homebrew Tap for public HechoLP macOS app releases.

## CodexMeter

CodexMeter is a local Codex token-usage meter for the macOS menu bar.

```bash
brew install --cask HechoLP/tap/codexmeter
```

The current preview is ad-hoc signed and not notarized by Apple. Homebrew verifies the published ZIP with the Cask's SHA-256 checksum, but macOS blocks the first launch until quarantine is removed from this app:

```bash
xattr -dr com.apple.quarantine /Applications/CodexMeter.app
open /Applications/CodexMeter.app
```

Run the `xattr` command only after installing the Cask from this Tap. It applies to `/Applications/CodexMeter.app` only.

Update or uninstall with standard Homebrew commands:

```bash
brew upgrade --cask codexmeter
brew uninstall --cask codexmeter
```

Releases and checksums are published in [CodexMeter-Releases](https://github.com/HechoLP/CodexMeter-Releases/releases).
