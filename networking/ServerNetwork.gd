extends "BaseNetwork.gd"

const SERVER_ID := 1

func _player_connected(id):
	print("Player connected: " + str(id))
	
	# Catch the new player up on who is already here
	for playerId in GameData.players:
		if playerId != id:
			var player = GameData.players[playerId]
			ClientNetwork.register_player(id, playerId, player.name)

# Called by clients when they connect
func register_self(playerId, playerName):
	rpc_id(SERVER_ID, "on_register_self", playerId, playerName)

remote func on_register_self(playerId, playerName):
	ClientNetwork.on_register_player(playerId, playerName)
	
	for curPlayerId in GameData.players:
		ClientNetwork.register_player(curPlayerId, playerId, playerName)

func host_game() -> bool:
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