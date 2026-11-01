cask "snipvero" do
  version "0.1.0-beta.3"
  sha256 "31fb4045f05c5842872586b31a9f3f0cbb108edf634ba85916ceb38f29d15812"

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
