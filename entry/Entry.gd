extends Node

# Entry point for the whole app
# Determine the type of app this is, and load the entry point for that type
func _ready():
	print("Application started")
	if OS.has_feature("server"):
		print("Is server")
		get_tree().change_scene("res://server/Server.tscn")
	elif OS.has_feature("2d"):
		print("Is client: 2d")
		get_tree().change_scene("res://clients/2d/Client2d.tscn")
	elif OS.has_feature("3d"):
		print("Is client: 3d")
		get_tree().change_scene("res://clients/3d/Client3d.tscn")
	else:
		print("Could not detect application type! Defaulting to client.")
		#get_tree().change_scene("res://clients/2d/Client2d.tscn")
		get_tree().change_scene("res://server/Server.tscn")