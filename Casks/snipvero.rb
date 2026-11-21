cask "snipvero" do
  version "0.2.0-beta.1"
  sha256 "91e75dc908e3c27065935533f0c488c26f2dff655751c67124d3a95ac5f1914e"

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
