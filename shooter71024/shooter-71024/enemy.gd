extends Sprite2D

@export var time = 5
@export var speed = 10
@onready var player = $"../Player"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	var to_player:Vector2 = player.global_position - global_position
	
	if to_player.length() > 0.1:
		DebugDraw2D.set_text("Dist to player", to_player.length())
		
		to_player = to_player.normalized()
		DebugDraw2D.set_text("Normalized to player", to_player.length())
		
		global_position = global_position + to_player * speed * delta
	#DebugDraw2D.set_text("tot_time", tot_time)
		
	#tot_time +=delta
		
	pass

#  
