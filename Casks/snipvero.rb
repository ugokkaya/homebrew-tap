cask "snipvero" do
  version "0.1.0-beta.5"
  sha256 "85abc4365813db32e3207bd4faed35e3b90c07594e1ac525789787c52e47eee7"

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
