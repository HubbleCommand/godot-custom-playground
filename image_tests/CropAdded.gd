extends TextureRect


func _ready():
	var image = texture.get_image()
	image.crop_from_point(0, 0, 200, 100)
	texture = ImageTexture.create_from_image(image)
