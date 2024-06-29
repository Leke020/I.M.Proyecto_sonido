extends Node2D

func _ready():
	set_meta("note_number", 12) 
	#print(get_meta("note_number"))
	
func asignar_meta(valor):
	set_meta("note_number", valor)


func key_on(duration):
	$AnimatedSprite2D.animation = "on"
	$Timer.start(duration)
	
func _on_timer_timeout():
	$AnimatedSprite2D.animation = "off"

	
