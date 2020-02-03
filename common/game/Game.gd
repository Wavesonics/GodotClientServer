extends Node2D

func _ready():
	print("Entering game")
	get_tree().paused = true
	
	pre_configure()


func pre_configure():
	var order := 0
	for playerId in GameData.players:
		spawn_player(playerId, order)
		++order
	
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
	
	node.position.x = 100 * order
	node.position.y = 100
	node.set_player_name(playerName)
	
	add_child(node)


remotesync func on_pre_configure_complete():
	print("All clients are configured. Starting the game.")
	get_tree().paused = false
