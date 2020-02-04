extends Control

func _ready():
	get_tree().connect('connected_to_server', self, 'on_connected_to_server')


func _on_ConnectButton_pressed():
	var ip := $ServerIpLabel/ServerIp.text as String
	var playerName := $PlayerNameLabel/PlayerName.text as String
	connect_to_server(playerName, ip)


func connect_to_server(playerName: String, serverIp: String):
	ClientNetwork.join_game(serverIp, playerName)


func on_connected_to_server():
	get_tree().change_scene("res://client/lobby/ClientLobby.tscn")
