extends Area3D

signal coinCollected

func _physics_process(_delta):
	rotate_y(deg_to_rad(2))

func _on_body_entered(body):
	if body.name == "Player":
		emit_signal("coinCollected")
		queue_free()
