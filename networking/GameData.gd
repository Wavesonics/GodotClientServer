extends Node

var players = {}

const PLAYER_ID = "id"
const PLAYER_NAME = "name"
func create_new_player(playerId: int, playerName: String) -> Dictionary:
	return { PLAYER_ID: playerId, PLAYER_NAME: playerName }

func add_player(playerId: int, playerName: String):
	var newPlayer = create_new_player(playerId, playerName)
	self.players[playerId] = newPlayer

func reset():
	self.players = {}
