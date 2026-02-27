cask "clipvault" do
  version "1.0.0"
  sha256 :no_check

  url "https://github.com/Liamlowenthal/ClipVault-V1/releases/download/v#{version}/ClipVault-#{version}.dmg"
  name "ClipVault"
  desc "Terminal-aesthetic media vault for YouTube, TikTok, and Instagram"
  homepage "https://github.com/Liamlowenthal/ClipVault-V1"

  depends_on formula: "yt-dlp"
  depends_on formula: "ffmpeg"

  app "ClipVault.app"

  zap trash: [
    "~/.clipvault",
    "~/Videos/ClipVault",
    "~/Pictures/ClipVault",
  ]
end
