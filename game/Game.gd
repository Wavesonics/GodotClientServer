extends Node2D

func _ready():
	ClientNetwork.connect("create_player", self, "create_player")
	ClientNetwork.connect("remove_player", self, "remove_player")

func create_player(playerId: int):
	print("Creating player game object")
	#var player = GameData.players[playerId]
	var playerScene = preload("res://game/Player.tscn")
	
	var playerNode = playerScene.instance()
	playerNode.set_network_master(playerId)
	playerNode.set_name(str(playerId))
	
	playerNode.position.x = 100
	playerNode.position.y = 100
	
	$Players.add_child(playerNode)

func remove_player(playerId: int):
	var name = str(playerId)
	for child in $Players.get_children():
		if child.name == name:
			print("Player removed")
			$Players.remove_child(child)
			break