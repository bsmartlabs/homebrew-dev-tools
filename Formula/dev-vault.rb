# typed: false
# frozen_string_literal: true

class DevVault < Formula
  desc "Scaleway Secret Manager CLI to pull/push -dev secrets to disk for local development"
  homepage "https://github.com/bsmartlabs/dev-vault"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bsmartlabs/dev-vault/releases/download/v0.1.1/dev-vault_0.1.1_darwin_arm64.tar.gz"
      sha256 "6045457dbb1840d7acc3068878578f455de739309320171ff180fa4d6b4a1f2c"
    else
      url "https://github.com/bsmartlabs/dev-vault/releases/download/v0.1.1/dev-vault_0.1.1_darwin_amd64.tar.gz"
      sha256 "0ab53eb530bc974a661914ee57c22ca3fd48c3721869f2399c20bbe318d38263"
    end
  end

  def install
    bin.install "dev-vault"
  end

  test do
    system "#{bin}/dev-vault", "version"
  end
end
