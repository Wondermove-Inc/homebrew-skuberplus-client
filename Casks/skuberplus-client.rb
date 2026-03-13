cask "skuberplus-client" do
  version "0.5.8"

  on_arm do
    sha256 "1ad8c7f20c7b3bb8427ef373099d37bdd0496662e9a8796acf7cc2d41d7a3f2a"
    url "https://djrpgwk5x3cu7.cloudfront.net/SkuberPlusClient-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "a5dcb3c6323cb5be655a448b9c0590dbcace15229c2df4b3bb02a57e5600a0a7"
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
