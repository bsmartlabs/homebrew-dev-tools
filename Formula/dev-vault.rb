# typed: false
# frozen_string_literal: true

class DevVault < Formula
  desc "Scaleway Secret Manager CLI to pull/push -dev secrets to disk for local development"
  homepage "https://github.com/bsmartlabs/dev-vault"
  version "0.1.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bsmartlabs/dev-vault/releases/download/v0.1.2/dev-vault_0.1.2_darwin_arm64.tar.gz"
      sha256 "4a2d67a01d6fa987a05a303df49271ea46f915b04b5f28c85a425398da337a0c"
    else
      url "https://github.com/bsmartlabs/dev-vault/releases/download/v0.1.2/dev-vault_0.1.2_darwin_amd64.tar.gz"
      sha256 "9f1b91629f1e88581dec2716584c2d29aef63ff3576c82a96a421d6016cb78f2"
    end
  end

  def install
    bin.install "dev-vault"
  end

  test do
    system "#{bin}/dev-vault", "version"
  end
end
