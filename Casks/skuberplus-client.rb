cask "skuberplus-client" do
  version "0.6.3"

  on_arm do
    sha256 "a59360c6ebb8eac529ae785be69ec6735856871246e7e029e585f02c0bd0a70c"
    url "https://djrpgwk5x3cu7.cloudfront.net/SkuberPlusClient-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "dadd4f2623ceb89e1771f20c900afc439994bd950287b70ec1c9df707d62714c"
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
