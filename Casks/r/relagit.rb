cask "relagit" do
  arch arm: "arm64", intel: "x64"

  version "0.12.12"
  sha256 arm: "78434530e51e1208923703cb43504b01a39a121d5a084debff5566dd5b953acd",
         intel: "a0f370116f8b30d697b9c205572549d93bb3cfa2bc0d97ff18106cf0f54bc0c4"

  url "https://github.com/relagit/relagit/releases/download/v#{version}/RelaGit-mac-#{arm}.dmg",
      verified: "github.com/relagit/relagit/"
  name "RelaGit"
  desc "The elegant solution to graphical version control."
  homepage "https://git.rela.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "RelaGit.app"

  zap trash: [
    "~/Library/Application Support/RelaGit",
    "~/Library/Logs/RelaGit",
    "~/.relagit",
  ]
end
