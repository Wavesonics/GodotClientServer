extends KinematicBody2D

const SPEED := 50.0

puppet func network_update(networkPosition: Vector2):
	self.position = networkPosition

func _physics_process(delta):
	if is_network_master():
		var velocity := Vector2.ZERO
		if Input.is_action_pressed("ui_down"):
			velocity.y += SPEED
		if Input.is_action_pressed("ui_up"):
			velocity.y -= SPEED
		if Input.is_action_pressed("ui_left"):
			velocity.x -= SPEED
		if Input.is_action_pressed("ui_right"):
			velocity.x += SPEED
		
		velocity = move_and_slide(velocity)
		
		rpc_unreliable("network_update", self.position)

func set_player_name(playerName: String):
	$NameLabel.text = playerName
