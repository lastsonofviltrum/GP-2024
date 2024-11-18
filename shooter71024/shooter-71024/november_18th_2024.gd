extends Node2D

var i = 0

func _draw() -> void:
	i += 1
	print ("draw called: " + str(i))
	var r = get_viewport_rect()
	r.size.x = r.size.x / 2
	r.size.y = r.size.y / 2
	#draw_rect(Rect2(r), Color.RED, true, 10, true)
	
	#var p = get_viewport().get_mouse_position()
	#print(p)
	#if p.x < h:
	#	draw_rect(Rect2(0, 0, h, r.size.y), Color.RED, true, 10, true)
	#	draw_rect(Rect2(h, 0, h, r.size.y), Color.BLUE, true, 10, true)
	#else:
	#	draw_rect(Rect2(0, 0, h, r.size.y), Color.BLUE, true, 10, true)
	#	draw_rect(Rect2(h, 0, h, r.size.y), Color.RED, true, 10, true)
	if (get_global_mouse_position().x < (r.size.x)) and (get_global_mouse_position().y < r.size.y):
		print(get_global_mouse_position().x)
		print(get_global_mouse_position().y)
		draw_rect(Rect2(r), Color.RED, true, 10, true)
	elif get_global_mouse_position().x > r.size.x and get_global_mouse_position().y < r.size.y:
		print(get_global_mouse_position().x)
		print(get_global_mouse_position().y)
		draw_rect(Rect2(r.size.x, 0, r.size.x, r.size.y), Color.BLUE, true, 10, true)
	elif get_global_mouse_position().x < r.size.x and get_global_mouse_position().y > r.size.y:
		print(get_global_mouse_position().x)
		print(get_global_mouse_position().y)
		draw_rect(Rect2(0, r.size.y, r.size.x, r.size.y), Color.GREEN, true, 10, true)
	else:
		print(get_global_mouse_position().x)
		print(get_global_mouse_position().y)
		draw_rect(Rect2(r.size.x,r.size.y, r.size.x, r.size.y), Color.YELLOW, true, 10, true)



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
