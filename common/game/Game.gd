extends Node2D

func _ready():
	print("Entering game")
	get_tree().paused = true
	
	ClientNetwork.connect("remove_player", self, "remove_player")
	
	pre_configure()


func remove_player(playerId: int):
	var playerNode = get_node(str(playerId))
	playerNode.queue_free()


func pre_configure():
	var order := 0
	var sortedPlayers = []
	for playerId in GameData.players:
		sortedPlayers.push_back(playerId)
	
	sortedPlayers.sort()
	
	for playerId in sortedPlayers:
		spawn_player(playerId, order)
		order += 1
	
	if not get_tree().is_network_server():
		# Report that this client is done
		rpc_id(ServerNetwork.SERVER_ID, "on_client_ready", get_tree().get_network_unique_id())


func spawn_player(playerId, order):
	print("Creating player game object")
	
	var player = GameData.players[playerId]
	var playerName = player[GameData.PLAYER_NAME]
	
	var scene = preload("res://common/game/Player.tscn")
	
	var node = scene.instance()
	node.set_network_master(playerId)
	node.set_name(str(playerId))
	
	node.position.x = 100 * (order + 1)
	node.position.y = 100
	
	node.get_node("NameLabel").text = playerName
	
	add_child(node)


remotesync func on_pre_configure_complete():
	print("All clients are configured. Starting the game.")
	get_tree().paused = false
