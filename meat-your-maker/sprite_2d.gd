extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position += Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down").normalized() * delta * 16
	#if (Input.is_action_pressed("ui_up")):
		#position.y -= 1 * delta
	#if (Input.is_action_pressed("ui_down")):
		#position.y += 1 * delta
	#if (Input.is_action_pressed("ui_left")):
		#position.x -= 1 * delta
	#if (Input.is_action_pressed("ui_right")):
		#position.x += 1 * delta
	pass
