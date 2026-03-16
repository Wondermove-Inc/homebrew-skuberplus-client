cask "skuberplus-client" do
  version "0.5.9"

  on_arm do
    sha256 "95666b46a590bbfcb629bc98d895821a1abd3cc44f6c86c35f8b7af94ee037ed"
    url "https://djrpgwk5x3cu7.cloudfront.net/SkuberPlusClient-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "77a35fada71fb7e972fd8ddedaf01e4ff516e7a0c9abe8ff7a8e11313c2a939e"
    url "https://djrpgwk5x3cu7.cloudfront.net/SkuberPlusClient-#{version}-x64.dmg"
  end

  name "SkuberPlus Client"
  desc "Kubernetes management tool"
  homepage "https://github.com/Wondermove-Inc/homebrew-skuberplus-client"

  depends_on macos: ">= :big_sur"

  app "Skuber+ Client.app"

  zap trash: [
    "~/Library/Application Support/Skuber+ Client",
    "~/Library/Preferences/com.wondermove.skuberplus-client.plist",
    "~/Library/Caches/com.wondermove.skuberplus-client",
    "~/Library/Saved Application State/com.wondermove.skuberplus-client.savedState",
  ]
end
