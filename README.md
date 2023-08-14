[Nixpkgs](https://github.com/NixOS/nixpkgs)/NixOS overlay for [Mobile
Verification Toolkit (MVT)](https://mvt.re/), a collection of utilities to
simplify and automate the process of gathering forensic traces helpful to
identify a potential compromise of Android and iOS devices.

Included packages:

- [MVT](https://pypi.org/project/mvt/) 2.4.1
- [NSKeyedUnArchiver](https://pypi.org/project/NSKeyedUnArchiver/) 1.5
- [iOSbackup](https://pypi.org/project/iOSbackup/) 0.9.925

Unfortunately, I don't think any of these packages could be included in mainline
NixOS, because of questionable or undefined licensing.

## Building

```bash
nix build
```

## Running

```bash
nix run '.#mvt-android'
nix run '.#mvt-ios'
```

