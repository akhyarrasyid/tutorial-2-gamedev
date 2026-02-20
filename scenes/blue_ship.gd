extends RigidBody2D

# Atur angka ini di Inspector kalau masih kurang kencang
@export var thrust_power = 1200 
@export var side_power = 800

func _physics_process(delta):
	# TERBANG KE ATAS
	if Input.is_action_pressed("move_up"):
		apply_central_force(Vector2.UP * thrust_power)
	
	# TERBANG KE BAWAH (Rem/Mesin Bawah)
	if Input.is_action_pressed("move_down"):
		apply_central_force(Vector2.DOWN * side_power)
		
	# GERAK KE KIRI
	if Input.is_action_pressed("move_left"):
		apply_central_force(Vector2.LEFT * side_power)
		
	# GERAK KE KANAN
	if Input.is_action_pressed("move_right"):
		apply_central_force(Vector2.RIGHT * side_power)
