extends "res://common/game/Game.gd"

func _ready():
	pass

remotesync func on_pre_configure_complete():
	print("All clients are configured. Starting the game.")
	get_tree().paused = false
