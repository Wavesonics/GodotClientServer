extends Node

# Do any client specific setup here
# Then launch into your first scene
func _ready():
	get_tree().change_scene("res://client/main_menu/MainMenu.tscn")
