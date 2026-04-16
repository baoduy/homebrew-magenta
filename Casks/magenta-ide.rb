cask "magenta-ide" do
  version "0.1.4"

  on_arm do
    sha256 "b37765d418022e4acfd776d8e88755581f7a952df4616c14d83bb50bdaf482db"
    url "https://github.com/baoduy/multi-agent-ide/releases/download/v#{version}/Magenta.IDE-#{version}-mac-arm64.dmg"
  end

  on_intel do
    sha256 "c7f964f1ec673166958287910159767feee2cc7134c879956134ab69cd47ea3b"
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
