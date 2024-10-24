extends TextureRect


func _ready():
	var image = texture.get_image()
	image.resize(20, 20, Image.Interpolation.INTERPOLATE_NEAREST)
	texture = ImageTexture.create_from_image(image)
