@tool
extends "res://addons/popochiu/engine/interfaces/i_dialog.gd"

# classes ----
const PDChatWithDashawn := preload("res://game/dialogs/chat_with_dashawn/dialog_chat_with_dashawn.gd")
# ---- classes

# nodes ----
var ChatWithDashawn: PDChatWithDashawn : get = get_ChatWithDashawn
# ---- nodes

# functions ----
func get_ChatWithDashawn() -> PDChatWithDashawn: return E.get_dialog("ChatWithDashawn")
# ---- functions

