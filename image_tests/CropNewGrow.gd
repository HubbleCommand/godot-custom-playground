extends TextureRect


func _ready():
	var image = texture.get_image()
	# image w/h is 320 x 240
	image.crop_from_point(40, 90, 400, 400)
	texture = ImageTexture.create_from_image(image)
