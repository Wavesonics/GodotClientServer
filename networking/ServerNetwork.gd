extends Node

const SERVER_ID := 1
const SERVER_PORT := 3000
const MAX_PLAYERS := 15

func _player_connected(id):
	print("Player connected: " + str(id))


# Called by clients when they connect
func register_self(playerId: int, playerName: String):
	rpc_id(SERVER_ID, "on_register_self", playerId, playerName)


remote func on_register_self(playerId, playerName):
	# Register this client with the server
	ClientNetwork.on_register_player(playerId, playerName)
	
	# Register the new player with all existing clients
	for curPlayerId in GameData.players:
		ClientNetwork.register_player(curPlayerId, playerId, playerName)
	
	# Catch the new player up on who is already here
	for curPlayerId in GameData.players:
		if curPlayerId != playerId:
			var player = GameData.players[curPlayerId]
			ClientNetwork.register_player(playerId, curPlayerId, player.name)


func is_hosting() -> bool:
	if get_tree().network_peer != null and get_tree().network_peer.get_connection_status() != NetworkedMultiplayerENet.ConnectionStatus.CONNECTION_DISCONNECTED:
		return true
	else:
		return false

func host_game() -> bool:
	ClientNetwork.reset_network()
	
	var peer = NetworkedMultiplayerENet.new()
	var result = peer.create_server(SERVER_PORT, MAX_PLAYERS)
	if result == OK:
		get_tree().set_network_peer(peer)
		
		get_tree().connect("network_peer_connected", self, "_player_connected")
		
		print("Server started.")
		return true
	else:
		print("Failed to host game: %d" % result)
		return false
