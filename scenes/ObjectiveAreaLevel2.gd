extends Area2D

func _on_body_entered(body: RigidBody2D):
	if body.name == "GreenShip":
		get_parent().get_node("Label").visible = true
		
		print("Tutorial 2 SELESAI! Target Tercapai di Logo Fasilkom!")

		Engine.set_time_scale(0)
