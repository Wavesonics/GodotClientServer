extends "res://common/game/Game.gd"

var unreadyPlayers := {}

func _ready():
	for playerId in GameData.players:
		unreadyPlayers[playerId] = playerId

remote func on_client_ready(playerId):
	print("client ready: %s" % playerId)
	unreadyPlayers.erase(playerId)
	print("Still waiting on %d players" % unreadyPlayers.size())
	
	# All clients are done, unpause the game
	if unreadyPlayers.empty():
		print("Starting the game")
		rpc("on_pre_configure_complete")
