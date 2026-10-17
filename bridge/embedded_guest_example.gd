extends Control
## Minimal Godot WRY WebView host for an HTML game inside a Godot desktop app.
## Install Godot WRY first and include guest HTML in the project export.
signal return_requested

const GAME_PAGE := "res://bridge/games/my_html_game/index.html"
var webview: Control

func _ready() -> void:
    if not ClassDB.class_exists("WebView"):
        push_error("Godot WRY extension is required")
        return
    webview = ClassDB.instantiate("WebView") as Control
    if webview == null:
        push_error("Could not instantiate WebView")
        return
    add_child(webview)
    webview.set_anchors_and_offsets_preset(Control.PRESET_FULL_RECT)
    webview.set("full_window_size", true)
    webview.connect("ipc_message", Callable(self, "_on_guest_message"))
    webview.call("load_url", GAME_PAGE)

func _on_guest_message(raw_message: String) -> void:
    var payload: Variant = JSON.parse_string(raw_message)
    if not payload is Dictionary:
        return
    if payload.get("type", "") == "return_to_menu":
        webview.queue_free()
        return_requested.emit()
