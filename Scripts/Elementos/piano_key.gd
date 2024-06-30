extends Node2D


var _bala = preload("res://Escenas/Elementos/bala.tscn")
var _instanciar_bala

func _ready():
	set_meta("note_number", 12) 
	#print(get_meta("note_number"))
	
func key_on(duration):
	$AnimatedSprite2D.animation = "on"
	$Timer.start(duration)

func disparar():
	_instanciar_bala = _bala.instantiate()
	add_child(_instanciar_bala)
	
func _on_timer_timeout():
	$AnimatedSprite2D.animation = "off"

	
