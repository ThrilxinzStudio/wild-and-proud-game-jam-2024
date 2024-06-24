@tool
extends "res://addons/popochiu/engine/interfaces/i_room.gd"

# classes ----
const PRNewBeginning := preload("res://game/rooms/new_beginning/room_new_beginning.gd")
# ---- classes

# nodes ----
var NewBeginning: PRNewBeginning : get = get_NewBeginning
# ---- nodes

# functions ----
func get_NewBeginning() -> PRNewBeginning: return super.get_runtime_room("NewBeginning")
# ---- functions

