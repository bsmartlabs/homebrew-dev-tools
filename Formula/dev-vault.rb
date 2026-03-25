# typed: false
# frozen_string_literal: true

class DevVault < Formula
  desc "Scaleway Secret Manager CLI to pull/push -dev secrets to disk for local development"
  homepage "https://github.com/bsmartlabs/dev-vault"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bsmartlabs/dev-vault/releases/download/v0.1.0/dev-vault_0.1.0_darwin_arm64.tar.gz"
      sha256 "6014d694b15e666f626a78720bda228fb9c6134c66b3db9b9ae30b4c430f6e92"
    else
      url "https://github.com/bsmartlabs/dev-vault/releases/download/v0.1.0/dev-vault_0.1.0_darwin_amd64.tar.gz"
      sha256 "ab735348dbcd17f6f9dfebb89c3174490426685d5c7bac52d2b68be62d5b2f2b"
    end
  end

  def install
    bin.install "dev-vault"
  end

  test do
    system "#{bin}/dev-vault", "version"
  end
end
