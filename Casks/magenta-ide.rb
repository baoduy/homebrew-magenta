cask "magenta-ide" do
  version "0.0.4"

  on_arm do
    sha256 "79341cbbcc9c01cf733aa37ee001b44f0ee6450bb9e51636a291bfb60dfd7591"
    url "https://github.com/baoduy/multi-agent-ide/releases/download/v#{version}/Magenta.IDE-#{version}-mac-arm64.dmg"
  end

  on_intel do
    sha256 "957ff33b459c822573f183be974b0410970d8b2646ccd5d226d8b63dabec6ca3"
    url "https://github.com/baoduy/multi-agent-ide/releases/download/v#{version}/Magenta.IDE-#{version}-mac-x64.dmg"
  end

  name "Magenta IDE"
  desc "Multi-repo multi-agent IDE for spec-driven development"
  homepage "https://github.com/baoduy/multi-agent-ide"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "Magenta IDE.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Magenta IDE.app"]
  end

  zap trash: [
    "~/Library/Application Support/Magenta IDE",
    "~/Library/Preferences/com.magenta-ide.plist",
    "~/Library/Logs/Magenta IDE",
  ]
end
