extends "BaseNetwork.gd"

var playerName: String

func join_game(serverIp: String, playerName: String) -> bool:
	get_tree().connect('connected_to_server', self, 'on_connected_to_server')
	
	self.playerName = playerName
	
	var peer = NetworkedMultiplayerENet.new()
	var result = peer.create_client(serverIp, SERVER_PORT)
	
	if result == OK:
		get_tree().set_network_peer(peer)
		print("Connecting to server...")
		return true
	else:
		return false

func on_connected_to_server():
	print("Connected to server.")
	var playerId = get_tree().get_network_unique_id()
	GameData.add_player(playerId, playerName) # Add your self
	self.broadcast_register_player(playerId, playerName)

func broadcast_register_player(id: int, playerName: String):
	rpc("on_register_player", id, playerName)

func register_player(recipientId: int, id: int, playerName: String):
	rpc_id(recipientId, "on_register_player", id, playerName)

remote func on_register_player(playerId: int, playerName: String):
	GameData.add_player(playerId, playerName)
	print("Total players: %d" % GameData.players.size())