extends Node

# Do any server specific setup here
# Then open a lobby and start listening for users
func _ready():
	get_tree().change_scene("res://server/lobby/ServerLobby.tscn")
