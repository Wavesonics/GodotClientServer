extends ClientBase

func _ready():
	print("Client 3d setup")
	var serverIp := "127.0.0.1"
	var playerName = "Client 3D"
	
	ClientNetwork.join_game(serverIp, playerName)