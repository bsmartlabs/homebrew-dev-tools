# bsmartlabs/dev-tools

Package repository for bSmart developer tooling. Serves both Homebrew (macOS/Linux) and Scoop (Windows).

## Homebrew (macOS)

```bash
brew tap bsmartlabs/dev-tools
brew install dev-vault
```

## Scoop (Windows)

```powershell
scoop bucket add bsmartlabs https://github.com/bsmartlabs/homebrew-dev-tools
scoop install dev-vault
```

## Linux

Download `.deb` or `.rpm` packages directly from [GitHub Releases](https://github.com/bsmartlabs/dev-vault/releases).

```bash
# Debian/Ubuntu
sudo dpkg -i dev-vault_*.deb

# RHEL/Fedora
sudo rpm -i dev-vault_*.rpm
```

## Notes

- Homebrew formulae live under `Formula/`.
- Scoop manifests live under `bucket/`.
- Both are generated/updated by CI on `v*` tags from `bsmartlabs/dev-vault`.
