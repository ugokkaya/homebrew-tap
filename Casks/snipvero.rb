cask "snipvero" do
  version "0.1.0-beta.4"
  sha256 "92e4bf4ba9c2cdbdf89595f8413aeeae4a52db16c3e9aea002b045117a9c3a6e"

  url "https://github.com/ugokkaya/Snipvero/releases/download/v#{version}/Snipvero_#{version}_aarch64.dmg"
  name "Snipvero"
  desc "Screenshot and annotation tool"
  homepage "https://snipvero.app"

  livecheck do
    skip "Beta channel: updated after a verified release"
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Snipvero.app"
end
