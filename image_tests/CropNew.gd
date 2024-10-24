extends TextureRect


func _ready():
	var image = texture.get_image()
	#image.crop_from_point_new(20, 20, 200, 100)
	image.crop_from_point(50, 100, 200, 100)
	texture = ImageTexture.create_from_image(image)
