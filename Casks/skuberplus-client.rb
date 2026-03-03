cask "skuberplus-client" do
  version "0.5.5"
  sha256 "c5e08041f6f9b2b41834906f6342a183056bdbde80a2c2142c3ef3f7f2c6d634"

  url "https://djrpgwk5x3cu7.cloudfront.net/SkuberPlusClient-#{version}-arm64.dmg"
  name "SkuberPlus Client"
  desc "Kubernetes management tool"
  homepage "https://github.com/Wondermove-Inc/homebrew-skuberplus-client"

  depends_on macos: ">= :big_sur"
  depends_on arch: :arm64

  app "Skuber+ Client.app"

  zap trash: [
    "~/Library/Application Support/Skuber+ Client",
    "~/Library/Preferences/com.wondermove.skuberplus-client.plist",
    "~/Library/Caches/com.wondermove.skuberplus-client",
    "~/Library/Saved Application State/com.wondermove.skuberplus-client.savedState",
  ]
end
