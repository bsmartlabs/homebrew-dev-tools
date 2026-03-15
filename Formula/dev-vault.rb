# typed: false
# frozen_string_literal: true

class DevVault < Formula
  desc "Scaleway Secret Manager CLI to pull/push -dev secrets to disk for local development"
  homepage "https://github.com/bsmartlabs/dev-vault"
  version "0.0.8"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bsmartlabs/dev-vault/releases/download/v0.0.8/dev-vault_0.0.8_darwin_arm64.tar.gz"
      sha256 "8e0f8479958efa35499088b5387e7bea8704f0878e49d281fff390b9158adfcc"
    else
      url "https://github.com/bsmartlabs/dev-vault/releases/download/v0.0.8/dev-vault_0.0.8_darwin_amd64.tar.gz"
      sha256 "67b58c75fbfc7b4933e45505c671ad3cfb0da266fda4e3df00521ae5b0adcb5d"
    end
  end

  def install
    bin.install "dev-vault"
  end

  test do
    system "#{bin}/dev-vault", "version"
  end
end
