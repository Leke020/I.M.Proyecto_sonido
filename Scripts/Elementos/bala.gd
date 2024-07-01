extends Node2D

@export var velocidad = 400
@export var images = []

var asignacion

func _ready():
	var random = RandomNumberGenerator.new().randi_range(0, 4)
	$Icon.texture = images[1]
	$Icon.texture = images[random]
	asignacion = random
	
	

func _process(delta):
	#position += vel * delta
	global_position.y += velocidad * delta

func _asignacion():
	return asignacion

func desaparecer():
	queue_free()

func _on_visible_on_screen_enabler_2d_screen_exited():
	desaparecer()
