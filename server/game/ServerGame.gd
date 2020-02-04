extends "res://common/game/Game.gd"

var unreadyPlayers := {}

func _ready():
	ClientNetwork.connect("remove_player", self, "remove_player")
	
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


func remove_player(playerId: int):
	# If all players are gone, return to lobby
	if GameData.players.empty():
		print("All players disconnected, returning to lobby")
		get_tree().change_scene("res://server/lobby/ServerLobby.tscn")
	else:
		print("Players remaining: %d" % GameData.players.size())
