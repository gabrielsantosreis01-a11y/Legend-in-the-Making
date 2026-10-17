# Game Bridge v1.1 — integration guide

This bridge lets **Wrestle Legends Career Simulator (Godot 4)** run the entire **Gabriel Reis Fast Career Simulator v1.4 (HTML)** as an embedded game, then return to Godot. A native Game Bridge hub compares both careers as **read-only profiles**.

## Components
- `scripts/ui/game_bridge_hub_ui.gd`: native game selector and career comparison.
- `scripts/ui/embedded_fast_sim_ui.gd`: Godot WRY WebView host; handles checkpoint backup/restore.
- `scripts/managers/career_game_bridge.gd`: read-only native and guest career summaries.
- `bridge/games/fast_career/index.html`: complete HTML guest plus UI for Godot ↔ JavaScript messaging.
- `INSTALL_GODOT_WRY.ps1`: optional PowerShell installer, with upstream SHA-256 verification.

These source files are distributed in the **full game ZIP** and **patch-only ZIP** produced in the ChatGPT conversation. The repository intentionally does not publish the bundled personal career game, the proprietary Pro Wrestling Sim database, or the user's saves.

## Protocol
Guest → host:
```json
{"type":"wcs:ready"}
{"type":"wcs:save","state":{"date":"1999-09-07"}}
{"type":"wcs:save_exit","state":{"date":"1999-09-07"}}
```
Host → guest:
```json
{"type":"wcs:context","profile":{"available":true,"name":"Example Wrestler","date":"1993-01-01"}}
{"type":"wcs:restore","state":{"date":"1999-09-07"}}
{"type":"wcs:save_result","ok":true}
```
Save and restore messages carry the **full** validated guest state; the shown date-only examples illustrate the envelope, not a complete valid save. The bridge's `wcs:context` is a read-only profile, never an instruction to rewrite another game's data.

## Requirements
Godot 4.1+, the upstream [Godot WRY v1.0.2 release](https://github.com/doceazedo/godot_wry/releases/tag/v1.0.2), and WebView2 on Windows. Native Godot desktop build only; Web/HTML5 export is unsupported by this extension. WRY uses `ipc.postMessage()` in JS and `WebView.post_message()` in GDScript.

## Verification
Static checks, Node.js parsing, and a headless Chromium simulation of the guest bridge passed. **Godot-on-Windows runtime testing remains outstanding**. The original native `user://career_save.tres` remains separate from `user://embedded_fast_career_v1_4.json` and its backup.

## Constraints
This is an actual **game-inside-game** bridge for HTML → native Godot. It is **not** a launcher for the proprietary PWS Windows executable, and it does not merge RNG, booking, match or championship histories.
