extends Node2D

func _ready() -> void:
	pass
	
func _process(delta: float) -> void:
	pass
	
func _draw() -> void:
	var r = Rect2(10, 10, 100, 30)
	draw_rect(r, Color.MEDIUM_SEA_GREEN)
	draw_line(Vector2(50, 50), Vector2(200, 200), Color.BROWN)
	draw_circle(Vector2(500, 500), 100, Color.FUCHSIA, true)
	
	var v = get_viewport_rect()
	
	draw_line(Vector2(0, v.size.y), Vector2(v.size.x, 0), Color.AQUAMARINE)
	
	for i in range(10):
		print(i)
		
	for i in range(10, -1, -1):
		print("LOL")
	
	pass
	
	var basket = ["apple", "banana", "carrot"]
	
	for i in range(basket.size()):
		print(basket[i])
	
	
