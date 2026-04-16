cask "magenta-ide" do
  version "0.1.3"

  on_arm do
    sha256 "b9d0f2938af015665540de33c3bf57ff6d238df95069f6377f19a75dcbf76f10"
    url "https://github.com/baoduy/multi-agent-ide/releases/download/v#{version}/Magenta.IDE-#{version}-mac-arm64.dmg"
  end

  on_intel do
    sha256 "9c465ccb91fe5470a3704e9824b2b07d731bc67b2ef3d8324ca540ac5a54c15b"
    url "https://github.com/baoduy/multi-agent-ide/releases/download/v#{version}/Magenta.IDE-#{version}-mac-x64.dmg"
  end

  name "Magenta IDE"
  desc "Multi-repo multi-agent IDE for spec-driven development"
  homepage "https://github.com/baoduy/multi-agent-ide"

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
