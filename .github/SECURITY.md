# Security policy

## Supported versions

| Component | Support |
|-----------|---------|
| BestROM brand / docs (this hub) | Best effort |
| Device trees / WIP A17 builds | Experimental — report issues early |
| Signed official builds | When OFFICIAL builds ship |

## Reporting a vulnerability

**Do not** open a public issue for sensitive security bugs (auth bypass, remote code exec, key leaks).

Prefer:

1. GitHub **Security advisories** on the affected repo (if enabled), or  
2. Contact the maintainer **@Mohithash** via GitHub with a private message / draft advisory  

Include:

- Affected repo + branch + build date  
- Device (e.g. peridot)  
- Impact and reproduction steps  
- Whether a fix is already known  

## Signing keys

Never commit real release keys. Use `vendor/bestrom-priv/keys` templates only. Compromised keys → rotate and announce.

## Scope notes

Third-party blobs (vendor firmware) follow upstream vendor security. Report OEM/blob issues upstream when possible.
