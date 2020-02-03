extends "res://common/lobby/Lobby.gd"

func _ready():
	ClientNetwork.connect("start_game", self, "on_start_game")

func _on_StartButton_pressed():
	ClientNetwork.start_game()

func on_start_game():
	get_tree().change_scene("res://client/game/ClientGame.tscn")
