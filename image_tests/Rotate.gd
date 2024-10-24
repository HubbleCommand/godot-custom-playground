extends TextureRect

@export var algorithm = Image.ROTATION_REVERSE_SAMPLING
@export var interpolation = Image.INTERPOLATE_NEAREST
@export var rotation_speed = 0.5

var tmp_image: Image
func _ready():
	var image = texture.get_image()
	tmp_image = image
	# DON'T rotate the tmp_image here, it'll rotate the image as well!!!
	
	"""
	if algorithm == Image.ROTATION_SHEARING:
		angle = PI / 4
		
		var holder = Image.new()
		holder.set_data(tmp_image.get_width(), tmp_image.get_height(), false, tmp_image.get_format(), tmp_image.get_data())
		holder.rotate(angle, CLOCKWISE, algorithm, interpolation)
		texture = ImageTexture.create_from_image(holder)
	"""

var angle = 0
func _process(delta):
	#if algorithm != Image.ROTATION_SHEARING:
	#	return
	
	angle += rotation_speed
	
	print(angle)
	
	var holder = Image.new()
	holder.set_data(tmp_image.get_width(), tmp_image.get_height(), false, tmp_image.get_format(), tmp_image.get_data())
	holder.rotate(angle, CLOCKWISE, algorithm, interpolation)
	texture = ImageTexture.create_from_image(holder)
