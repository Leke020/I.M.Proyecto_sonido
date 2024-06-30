extends Node2D

var vel: Vector2

@export var velocidad = 400
@export var images = []

func _ready():
	#var random = RandomNumberGenerator.new()
	$Icon.texture = images[1]
	$Icon.texture = images[RandomNumberGenerator.new().randf_range(-1, 6)]
	pass

func _process(delta):
	#position += vel * delta
	global_position.y += velocidad * delta
	
func _on_visible_on_screen_enabler_2d_screen_exited():
	queue_free()
