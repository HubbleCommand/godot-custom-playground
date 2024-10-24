extends Camera2D

var speed = 100.0
var zoom_speed = 2.0

func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_WHEEL_DOWN and event.pressed:
			print("Wheel down")
			zoom /= zoom_speed
		if event.button_index == MOUSE_BUTTON_WHEEL_UP and event.pressed:
			print("Wheel up")
			zoom *= zoom_speed
	
func _process(delta: float) -> void:
	if Input.is_key_pressed(KEY_W):
		translate(Vector2(0, -speed * delta))
	if Input.is_key_pressed(KEY_S):
		translate(Vector2(0, speed * delta))
	if Input.is_key_pressed(KEY_A):
		translate(Vector2(-speed * delta, 0))
	if Input.is_key_pressed(KEY_D):
		translate(Vector2(speed * delta, 0))
