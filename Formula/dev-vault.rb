# typed: false
# frozen_string_literal: true

class DevVault < Formula
  desc "Scaleway Secret Manager CLI to pull/push -dev secrets to disk for local development"
  homepage "https://github.com/bsmartlabs/dev-vault"
  version "0.0.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bsmartlabs/dev-vault/releases/download/v0.0.6/dev-vault_0.0.6_darwin_arm64.tar.gz"
      sha256 "e496ef2bf40fdfa29a2facb4d519d563f3559f98bbc5ae49474554dfcea74bc6"
    else
      url "https://github.com/bsmartlabs/dev-vault/releases/download/v0.0.6/dev-vault_0.0.6_darwin_amd64.tar.gz"
      sha256 "1a6fa9cb304e21f5d785f1505398d5f1605ce4dfa574c2c1abefa47bd60fff7c"
    end
  end

  def install
    bin.install "dev-vault"
  end

  test do
    system "#{bin}/dev-vault", "version"
  end
end
