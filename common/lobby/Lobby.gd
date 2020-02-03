extends Control

func _ready():
	ClientNetwork.connect("create_player", self, "create_player")
	ClientNetwork.connect("remove_player", self, "remove_player")

func create_player(playerId: int):
	print("Creating player in lobby")
	#var player = GameData.players[playerId]
	var namePlateScene = preload("res://common/lobby/NamePlate.tscn")
	
	var namePlateNode = namePlateScene.instance()
	namePlateNode.set_network_master(playerId)
	namePlateNode.set_name(str(playerId))
	
	var player = GameData.players[playerId]
	namePlateNode.get_node("Name").text = player[GameData.PLAYER_NAME]
	
	#playerNode.position.x = 100
	#playerNode.position.y = 100
	
	$Players.add_child(namePlateNode)

func remove_player(playerId: int):
	var name = str(playerId)
	for child in $Players.get_children():
		if child.name == name:
			print("Player removed")
			$Players.remove_child(child)
			break
