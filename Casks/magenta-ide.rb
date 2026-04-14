cask "magenta-ide" do
  version "0.1.2"

  on_arm do
    sha256 "31334930990fa5bcf44aee55c018c2fdab583ac6b97d21a41b4168a9744e2a95"
    url "https://github.com/baoduy/multi-agent-ide/releases/download/v#{version}/Magenta.IDE-#{version}-mac-arm64.dmg"
  end

  on_intel do
    sha256 "3e7984dcc3b32e84545462c8c90bf0b7f1d0aba026397d758cdaa43d7468dea1"
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
