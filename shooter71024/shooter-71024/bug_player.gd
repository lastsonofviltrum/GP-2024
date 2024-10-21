extends CharacterBody2D

@export var speed = 200

@export var explosion_scene:PackedScene

@onready var laser:Node2D=$laser

@onready var bug = $"../bug"


var can_move = true

func _ready():
	laser.visible = false

@export var rot_speed:float = 200
var rs = rot_speed

func _process(delta):
	if Input.is_action_pressed("fire"):
		can_move = true
		var h = 16		
		# Have we hit the bug
		var p = laser.get_point_position(0)
		var space_state = get_world_2d().direct_space_state
		# use global coordinates, not local to node
		var query = PhysicsRayQueryParameters2D.create(Vector2(0, 0), Vector2(50, 100))
		var _result = space_state.intersect_ray(query)
		var to_bug	
		if bug && position.x > bug.position.x - h and position.x < bug.position.x + h:
			to_bug = laser.global_position.y - bug.global_position.y			
		else:
			to_bug = laser.global_position.y
		p.y = - to_bug			
		laser.set_point_position(1, p)
		laser.visible = true						
	else:
		laser.visible = false
		can_move = true

		

		
		laser.visible = false
		can_move = true

	

		if position.x < 25:
			position.x = 25
		
		

	if Input.is_key_pressed(KEY_LEFT):
		translate(Vector2(-5, 0))
	if Input.is_key_pressed(KEY_RIGHT):
		translate(Vector2(5, 0))
	if Input.is_key_pressed(KEY_UP):
		translate(Vector2(0, -5))
	if Input.is_key_pressed(KEY_DOWN):
		translate(Vector2(0, 5))
		
	if Input.is_key_pressed(KEY_A):
		rotate(deg_to_rad(- rs * delta))
	if Input.is_key_pressed(KEY_D):
		rotate(deg_to_rad(rs * delta))
		
func print_stuff():
			DebugDraw2D.set_text("pos", position)
			DebugDraw2D.set_text("rotation", rotation)
			DebugDraw2D.set_text("rotation deg", rad_to_deg(rotation))
			DebugDraw2D.set_text("transform.x", transform.x)
			DebugDraw2D.set_text("transform.y", transform.y)	
			DebugDraw2D.set_text("global_transform.x", global_transform.x)
			DebugDraw2D.set_text("global_transform.y", global_transform.y)



	
			
		
		
func _on_area_2d_area_entered(area):
	print(area)
	var explosion = explosion_scene.instantiate()
	explosion.global_position = global_position
	explosion.emitting = true
	get_tree().root.add_child(explosion)
	queue_free()	
	pass # Replace with function body.
