extends Node2D

func key_on(duration):
	$AnimatedSprite2D.animation = "on"
	$Timer.start(duration)
	
func _on_timer_timeout():
	$AnimatedSprite2D.animation = "off"
