# typed: false
# frozen_string_literal: true

class DevVault < Formula
  desc "Scaleway Secret Manager CLI to sync -dev secrets to disk for local development"
  homepage "https://github.com/bsmartlabs/dev-vault"
  version "0.0.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bsmartlabs/dev-vault/releases/download/v0.0.7/dev-vault_0.0.7_darwin_arm64.tar.gz"
      sha256 "ca78a29e116f6ae22e1052a8970da35b41f238f2bd21090247530a8a88eef69e"
    else
      url "https://github.com/bsmartlabs/dev-vault/releases/download/v0.0.7/dev-vault_0.0.7_darwin_amd64.tar.gz"
      sha256 "fb57838f7c3cb363d98d8afc5d3dbcb4b4ca542d6d6e485d073ab747a60423dc"
    end
  end

  def install
    bin.install "dev-vault"
  end

  test do
    system "#{bin}/dev-vault", "version"
  end
end
