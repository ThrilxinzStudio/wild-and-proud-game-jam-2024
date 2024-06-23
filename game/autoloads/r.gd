@tool
extends "res://addons/popochiu/engine/interfaces/i_room.gd"

# classes ----
const PRMainScene := preload("res://game/rooms/main_scene/room_main_scene.gd")
# ---- classes

# nodes ----
var MainScene: PRMainScene : get = get_MainScene
# ---- nodes

# functions ----
func get_MainScene() -> PRMainScene: return super.get_runtime_room("MainScene")
# ---- functions

