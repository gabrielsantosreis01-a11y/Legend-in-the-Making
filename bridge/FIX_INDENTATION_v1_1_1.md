# Game Bridge v1.1.1 — Indentation fix

Godot parsing error fixed in **`scripts/ui/main_menu_ui.gd`**.

## Issue

Lines 63–71 of `_show_game_bridge_hub() -> void:` in the v1.1 Godot project were indented with 4 / 8 literal spaces, while the rest of the file used tabs. Godot reports:

> Used space character for indentation instead of tab as used before in the file.

## Safe repair

Replace each of the **nine lines' indentation only**, using:
- one tab instead of four leading spaces;
- two tabs instead of eight leading spaces.

Do not change content, saves or imported wrestling data. Godot should then accept the function's indentation style.

Example:

```gdscript
func _show_game_bridge_hub() -> void:
	if is_instance_valid(_screen):
		_screen.queue_free()
	var screen := Control.new()
	screen.set_script(load("res://scripts/ui/game_bridge_hub_ui.gd"))
	_screen = screen
	add_child(_screen)
	_screen.set_anchors_and_offsets_preset(Control.PRESET_FULL_RECT)
	_screen.connect("return_requested", Callable(self, "_show_current_state"))
	_screen.connect("launch_guest_requested", Callable(self, "_show_embedded_fast_sim"))
```

## Validation

v1.1.1 fixed packages were produced separately in ChatGPT. Archive CRC, a consistency scan over 118 GDScript files, the existing bridge static test and Node.js JavaScript parse checks passed. Only the existing file `scripts/ui/main_menu_ui.gd` was modified; a regression test and release note were added. **Native Windows Godot + Godot WRY playtest has not been performed.**

The public GitHub repository contains these safe instructions; the complete playable project and personal saves are not uploaded.
