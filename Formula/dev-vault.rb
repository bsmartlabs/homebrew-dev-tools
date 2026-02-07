# typed: false
# frozen_string_literal: true

class DevVault < Formula
  desc "Scaleway Secret Manager CLI to sync -dev secrets to disk for local development"
  homepage "https://github.com/bsmartlabs/dev-vault"
  version "0.0.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bsmartlabs/dev-vault/releases/download/v0.0.5/dev-vault_0.0.5_darwin_arm64.tar.gz"
      sha256 "491fe63af18d66fb0b1ccd8f6cd9146a5ade0ac37cbc11e11b2674f53c355d8f"
    else
      url "https://github.com/bsmartlabs/dev-vault/releases/download/v0.0.5/dev-vault_0.0.5_darwin_amd64.tar.gz"
      sha256 "8d47cf119e379b642ae3ac5043965208b616233a54b8b71cea032b5fa2db0cc5"
    end
  end

  def install
    bin.install "dev-vault"
  end

  test do
    system "#{bin}/dev-vault", "version"
  end
end
