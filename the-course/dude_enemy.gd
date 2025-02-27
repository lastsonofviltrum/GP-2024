extends CharacterBody2D

@export var speed = 200

var dude

func _ready() -> void:
	dude = $"../../dude"
	
func _physics_process(delta:float) -> void:
	var to_player:Vector2 = dude.position - position
	to_player = to_player.normalized()
	velocity + to_player * speed
	move_and_slide()
	
	func _on_area_2d_body_exited(body: Node2D)
		if body == dude:
			state = State.IDLE
