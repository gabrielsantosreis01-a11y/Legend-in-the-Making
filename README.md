# Legend in the Making — Wrestling Game Bridge

Godot 4 can host a **complete HTML/JavaScript game inside its own desktop window** using [Godot WRY](https://github.com/doceazedo/godot_wry). This repository tracks a **reusable, source-only integration foundation**.

## What this does
- Add a menu entry in the Godot game.
- Launch a local HTML game via a native WebView2 WebView inside Godot on Windows 10/11.
- Send messages between GDScript and JavaScript using WRY's `ipc_message` / `ipc.postMessage`.
- Preserve each game's own save format. Never write guest snapshots over `user://career_save.tres`.
- Return from the embedded game to the Godot main menu.

## Getting started
1. Open the **full integrated Godot project ZIP** supplied in ChatGPT; it includes the full guest HTML, patched menu and save/restore implementation.
2. Install Godot WRY v1.0.2 from [upstream GitHub Releases](https://github.com/doceazedo/godot_wry/releases/tag/v1.0.2), or use the SHA-256 checking `INSTALL_GODOT_WRY.ps1` included in the project ZIP.
3. Restart Godot; press F5; choose **PLAY FAST CAREER SIM (EMBEDDED)**.
4. Save the guest checkpoint using its top-right button, then return to the native menu.

## Repository scope
The **public** repository deliberately contains only generic code and documentation. It does **not** include personal saves, imported Pro Wrestling Sim databases, proprietary executables, or the user's full HTML guest career data. The working project is in the separately supplied ZIP.

`bridge/embedded_guest_example.gd` is a minimal example for other HTML games. The complete build's `scripts/ui/embedded_fast_sim_ui.gd` adds recovery/validation.

This mode embeds **an HTML game into Godot**, not a commercial Windows game executable. Godot WRY requires a native desktop export and is not compatible with Godot's HTML5 Web export.

Upstream: [Godot WRY API documentation](https://godot-wry.doce.sh/reference/webview.html), [Godot WRY licence (MIT)](https://github.com/doceazedo/godot_wry/blob/main/LICENSE).

**Status:** source integration and JS parsing checked; native Windows + Godot runtime playtest still required.
