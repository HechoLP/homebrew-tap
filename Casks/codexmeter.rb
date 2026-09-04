cask "codexmeter" do
  version "1.3.1"
  sha256 "c07e58b939194bc348f0f6da95ccbb58189ceeceffbc1e0f5ee06f8a95475ca7"

  url "https://github.com/HechoLP/CodexMeter/releases/download/v#{version}/CodexMeter-#{version}.zip"
  name "CodexMeter"
  desc "Local Codex and Claude Code token usage in the menu bar"
  homepage "https://github.com/HechoLP/CodexMeter"

  auto_updates true
  depends_on macos: :sonoma

  app "CodexMeter.app"

  caveats <<~EOS
    CodexMeter is ad-hoc signed and is not notarized by Apple. Homebrew verifies
    the downloaded archive against this Cask's SHA-256 checksum, but macOS will
    still block the first launch.

    After reviewing the release source and confirming this Cask installed it,
    remove quarantine from CodexMeter only and open the app:

      xattr -dr com.apple.quarantine /Applications/CodexMeter.app
      open /Applications/CodexMeter.app
  EOS
end
