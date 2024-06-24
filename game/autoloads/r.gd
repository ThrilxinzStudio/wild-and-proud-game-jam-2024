@tool
extends "res://addons/popochiu/engine/interfaces/i_room.gd"

# classes ----
const PRNewBeginning := preload("res://game/rooms/new_beginning/room_new_beginning.gd")
const PRFourCorners := preload("res://game/rooms/four_corners/room_four_corners.gd")
# ---- classes

# nodes ----
var NewBeginning: PRNewBeginning : get = get_NewBeginning
var FourCorners: PRFourCorners : get = get_FourCorners
# ---- nodes

# functions ----
func get_NewBeginning() -> PRNewBeginning: return super.get_runtime_room("NewBeginning")
func get_FourCorners() -> PRFourCorners: return super.get_runtime_room("FourCorners")
# ---- functions

