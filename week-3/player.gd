extends CharacterBody2D

const SPEED = 300
const JUMP_VELOCITY = 400
const TURN_RATE = 180

var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _physics_process(delta: float) -> void:
	# Add the gravity.
	var r = Input.get_axis("Turn Left", "Turn Right")
	print(r)
	
	
	
	if not is_on_floor():
		velocity += get_gravity() * delta

	var rot = deg_to_rad(r * TURN_RATE * delta)




# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

@export var speed:float = 1
@export var rot_speed:float = 100

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float):
	# rotate(deg_to_rad(rot_speed * delta))
	# translate(Vector2(0, speed * delta),)
	
	# global_translate(Vector2(0, speed * delta))
	
	var s = speed
	var rs = rot_speed
	if (Input.is_key_pressed(KEY_SHIFT)):
		s = s * 5
		rs = rs * 2
	
	if Input.is_key_pressed(KEY_UP):
		translate(Vector2(-5,  s * delta))
	if Input.is_key_pressed(KEY_DOWN):
		translate(Vector2(5, - s * delta))
	if Input.is_key_pressed(KEY_LEFT):
		translate(Vector2(-5, - s * delta))
	if Input.is_key_pressed(KEY_RIGHT):
		translate(Vector2(5, s * delta))
	if Input.is_key_pressed(KEY_A):
		rotate(-deg_to_rad(rs * delta))
	if Input.is_key_pressed(KEY_D):
		rotate(deg_to_rad(rs * delta))

	pass
# no idea what's happening. can't get project to run, can't get scene to run, couldn't get godot to run until a minute ago

#	if Input.is_key_pressed(KEY_UP):
#		translate(Vector2(5, - s * delta))
#	if Input.is_key_pressed(KEY_DOWN):
#		translate(Vector2(-5, s * delta))
#	if Input.is_key_pressed(KEY_LEFT):
#		rotate(-deg_to_rad(rs * delta))
#	if Input.is_key_pressed(KEY_RIGHT):
#		rotate(deg_to_rad(rs * delta)).
