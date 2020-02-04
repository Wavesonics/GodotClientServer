extends "res://common/lobby/Lobby.gd"

func _ready():
	if not ServerNetwork.is_hosting():
		if not ServerNetwork.host_game():
			print("Failed to start server, shutting down.")
			get_tree().quit()
			return
	
	ClientNetwork.connect("start_game", self, "on_start_game")


func on_start_game():
	get_tree().change_scene("res://server/game/ServerGame.tscn")
