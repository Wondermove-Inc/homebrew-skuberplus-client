cask "skuberplus-client" do
  version "0.6.0"

  on_arm do
    sha256 "dd38d42becff0580f27e91ee835e67a05423f90fbfd13c15244a063b27fa14d1"
    url "https://djrpgwk5x3cu7.cloudfront.net/SkuberPlusClient-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "59b95d51e279b620f69780083e9636b013dc8ac598da057ccce4d23d4820960e"
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
