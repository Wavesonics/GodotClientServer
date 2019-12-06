extends "res://game/Game.gd"

func _ready():
	print("Client 2d setup")
	var serverIp := "127.0.0.1"
	var playerName = "Client 2D"
	
	ClientNetwork.join_game(serverIp, playerName)