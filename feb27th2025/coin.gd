extends Area2D


func _process(_delta: float) -> void:
	pass
	

func _on_body_entered(body: Node2D) -> void:
	if body.name == "player":
		body.score = body.score + 1
		self.queue_free
	pass
