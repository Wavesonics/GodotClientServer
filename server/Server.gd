extends Node
class_name Server

func _ready():
	if not ServerNetwork.host_game():
		print("Failed to start server, shutting down.")
		get_tree().quit()