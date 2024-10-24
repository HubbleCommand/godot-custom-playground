extends TextureRect

@export var sheer_axis = HORIZONTAL
@export var shear_factor = 0.0
@export var sheer_interpolation = Image.INTERPOLATE_NEAREST

@export var process = false
var factor = 0
func _ready():
	if process:
		return
	var image = texture.get_image()
	image.shear(sheer_axis, shear_factor, sheer_interpolation)
	texture = ImageTexture.create_from_image(image)


func _process(delta: float) -> void:
	if not process:
		return
	
	factor += 0.01
	var image = texture.get_image()
	image.shear(sheer_axis, factor, sheer_interpolation)
	texture = ImageTexture.create_from_image(image)
