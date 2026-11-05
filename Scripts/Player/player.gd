extends CharacterBody2D
@export var movement_speed: float = 250.0


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var input_direction:= Input.get_vector("move_down","move_left","move_right","move_up")
	input_direction = input_direction.normalized()
	velocity = input_direction * movement_speed
	
	move_and_slide()
