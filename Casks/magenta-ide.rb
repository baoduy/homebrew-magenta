cask "magenta-ide" do
  version "0.1.16"

  on_arm do
    sha256 "7856d7dfbad987dcfbb4c2d8ae49a73458e7a138978e24359e57a9e865f75866"
    url "https://github.com/baoduy/multi-agent-ide/releases/download/v#{version}/Magenta.IDE-#{version}-mac-arm64.dmg"
  end

  on_intel do
    sha256 "08baea50f2db37be9e2b74e76b61da5de5cd106951a5e4980f333268804221eb"
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
