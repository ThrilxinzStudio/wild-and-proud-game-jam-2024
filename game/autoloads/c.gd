@tool
extends "res://addons/popochiu/engine/interfaces/i_character.gd"

# classes ----
const PCPlayer := preload("res://game/characters/player/character_player.gd")
const PCDashawn := preload("res://game/characters/dashawn/character_dashawn.gd")
# ---- classes

# nodes ----
var Player: PCPlayer : get = get_Player
var Dashawn: PCDashawn : get = get_Dashawn
# ---- nodes

# functions ----
func get_Player() -> PCPlayer: return super.get_runtime_character("Player")
func get_Dashawn() -> PCDashawn: return super.get_runtime_character("Dashawn")
# ---- functions

