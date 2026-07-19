# LidRun — Homebrew tap

[![brew install --cask lidrun](https://img.shields.io/badge/brew%20install-%2D%2Dcask%20lidrun-1f9d55?style=for-the-badge&logo=homebrew&logoColor=white)](https://lidrun.com/download)
[![lidrun.com](https://img.shields.io/badge/lidrun.com-7b61ff?style=for-the-badge&logo=googlechrome&logoColor=white)](https://lidrun.com)
&nbsp;
![macOS 13+](https://img.shields.io/badge/macOS-13%2B-black)
![Signed & Notarized](https://img.shields.io/badge/Signed%20%26%20Notarized-1f9d55)
![Pay once](https://img.shields.io/badge/Pay%20once-no%20subscription-black)

Install **[LidRun](https://lidrun.com)** with Homebrew — the macOS menu-bar app that [keeps your Mac awake](https://lidrun.com) with the **lid closed**, so Claude Code, Cursor, Codex, Docker and Ollama keep running while you step away. It releases the Mac automatically when the work is done or when battery/thermal limits are reached.

## Install

```sh
brew tap aibrickai/lidrun
brew install --cask lidrun
```

Homebrew 6+ refuses a third-party tap until you trust it once. If you see
`Refusing to load cask ... from untrusted tap`, run:

```sh
brew trust aibrickai/lidrun
brew install --cask lidrun
```

The DMG is **Developer-ID signed and Apple-notarized**, so it installs with no
Gatekeeper workaround — and LidRun keeps itself up to date via Sparkle. Prefer a
direct download instead? Grab it from **[lidrun.com/download](https://lidrun.com/download)**.

## What you get

LidRun is a safe **runtime layer**, not just an anti-sleep toggle:

- **Closed-lid workflow** — a guarded [clamshell mode](https://lidrun.com) with no external display, so an agent or build survives the moment you shut the lid.
- **Auto Mode** — holds the Mac awake only while real work is running (Claude Code, Cursor, Codex, Ollama, Docker, long builds), then lets it sleep.
- **Guardrails** — low-battery auto-stop, charging-only mode, thermal back-off, and a 30 min–8 h session timer.
- **`lidrun` CLI** — `lidrun -- <command>` keeps the Mac awake for exactly one job, then releases it.
- **Why Awake / Why Stopped** — full transparency on every keep-awake decision, plus optional push notifications.

Free forever for simple keep-awake sessions — no trial, no subscription. [Pricing](https://lidrun.com/pricing).

## Popular uses

- [Keep Claude Code running when the MacBook is closed](https://lidrun.com/blog/keep-claude-code-running-when-macbook-closed)
- [Prevent Mac sleep during a Docker build](https://lidrun.com/blog/prevent-mac-sleep-during-docker-build)
- [Clamshell mode on a Mac, explained](https://lidrun.com/blog/clamshell-mode-on-mac)
- [Run your Mac overnight, safely](https://lidrun.com/safety)

## Requirements

- macOS 13 (Ventura) or later — Apple Silicon or Intel.
- Homebrew ([brew.sh](https://brew.sh)).

## Update

```sh
brew update
brew upgrade --cask lidrun
```

Existing installs also update themselves in the background via Sparkle, so this is
optional — the cask only gates the first install.

## Uninstall

```sh
brew uninstall --cask lidrun          # remove the app
brew uninstall --zap --cask lidrun    # also remove LidRun's local data
```

LidRun installs a privileged helper for its closed-lid and safety features. `--zap`
removes user files but can't remove that system helper — turn LidRun off in
**System Settings → General → Login Items & Extensions** before uninstalling to
remove it fully.

## Learn more

New to this? Start with [how to keep your Mac from sleeping](https://lidrun.com) or
see what a [closed-lid AI workflow](https://lidrun.com) actually looks like. More:

- 🌐 Website — [lidrun.com](https://lidrun.com) · [changelog](https://lidrun.com/changelog) · [safety](https://lidrun.com/safety)
- 📦 Main repo — [github.com/aibrickai/lidrun](https://github.com/aibrickai/lidrun) (README, docs, releases)
- 📖 Guides — [keeping your Mac awake](https://lidrun.com/blog/what-is-keeping-your-mac-awake) · [caffeinate explained](https://lidrun.com/blog/caffeinate-mac-command) · [LidRun vs the built-ins](https://lidrun.com/blog/best-mac-keep-awake-app-for-developers)

---

<div align="center">
<sub>This is the official Homebrew tap for <a href="https://lidrun.com">LidRun</a> — a closed-source, signed &amp; notarized macOS app. © LidRun.</sub>
</div>
