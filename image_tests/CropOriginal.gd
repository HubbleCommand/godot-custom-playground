extends TextureRect


func _ready():
	var image = texture.get_image()
	image.crop(200, 100)
	texture = ImageTexture.create_from_image(image)
