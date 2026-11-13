cask "snipvero" do
  version "0.1.0-beta.7"
  sha256 "d880e38154db6959b6142d78aec0cbb752c67a7d179151494f16226cb08d276c"

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
