# Homebrew Tap for SkuberPlus Client

Homebrew tap for installing SkuberPlus Client, a Kubernetes management tool.

## Installation

### 1. Add the tap
```bash
brew tap wondermove-inc/skuberplus-client
```

### 2. Install SkuberPlus Client
```bash
brew install --cask skuberplus-client
```

Or combine both steps:
```bash
brew install --cask wondermove-inc/skuberplus-client/skuberplus-client
```

## Update

To update to the latest version:
```bash
brew update
brew upgrade --cask skuberplus-client
```

## Uninstall

To completely remove SkuberPlus Client:
```bash
brew uninstall --cask skuberplus-client
```

To remove all associated data:
```bash
brew uninstall --zap --cask skuberplus-client
```

## For Maintainers

### Publishing a New Version

1. Update the DMG file on S3/CloudFront with the new version number:
   ```
   SkuberPlusClient-X.Y.Z-arm64.dmg
   ```

2. Get the SHA256 checksum of the new DMG:
   ```bash
   curl -sL "https://djrpgwk5x3cu7.cloudfront.net/SkuberPlusClient-X.Y.Z-arm64.dmg" | shasum -a 256
   ```

   Or if you have the file locally:
   ```bash
   shasum -a 256 SkuberPlusClient-X.Y.Z-arm64.dmg
   ```

3. Update `Casks/skuberplus-client.rb`:
   - Update the `version` field
   - Update the `sha256` field with the checksum from step 2

4. Commit and push the changes:
   ```bash
   git add Casks/skuberplus-client.rb
   git commit -m "Update SkuberPlus Client to version X.Y.Z"
   git push origin main
   ```

5. Users will get the update automatically with `brew update && brew upgrade`

## Current Version

**Version**: 0.2.8
**Platform**: macOS Apple Silicon (arm64)
**Minimum macOS**: Big Sur (11.0)

## Support

For issues with the app itself, please visit the main project repository.
For issues with this Homebrew tap, please open an issue in this repository.
