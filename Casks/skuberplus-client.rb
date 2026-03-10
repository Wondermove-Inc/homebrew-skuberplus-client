cask "skuberplus-client" do
  version "0.5.7"

  on_arm do
    sha256 "57adcf1a7f2cbdf774eebae4036e4de4e9da935ea3803281b70c01189ecb780d"
    url "https://djrpgwk5x3cu7.cloudfront.net/SkuberPlusClient-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "f9efc844d434c377be96bcd23c7e99fffdaf4cbd633508edb7e50eea4736835a"
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
