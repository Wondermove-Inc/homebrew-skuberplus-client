cask "skuberplus-client" do
  version "0.2.11"
  sha256 "624dec55f8b78a1622986bd836f340309930db26bb432b4d49b534c33f9ab79d"

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
