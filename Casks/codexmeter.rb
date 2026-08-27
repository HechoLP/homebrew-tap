cask "codexmeter" do
  version "0.1.6"
  sha256 "87c3154ef0e8af5ce09aff52dfb2db5880bad730e3838422d5f95eaea0ce5fb9"

  url "https://github.com/HechoLP/CodexMeter-Releases/releases/download/v#{version}/CodexMeter-#{version}.zip"
  name "CodexMeter"
  desc "Local Codex token usage in the menu bar"
  homepage "https://github.com/HechoLP/CodexMeter-Releases"

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
