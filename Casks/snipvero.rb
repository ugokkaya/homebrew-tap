cask "snipvero" do
  version "0.1.0-beta.8"
  sha256 "4347f93c37980cab500ac4a611cb9f0e5d8591fc8330a7e330710625338dbd4b"

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
