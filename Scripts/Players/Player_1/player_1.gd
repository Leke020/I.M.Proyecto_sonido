extends Node2D

@export var velocidad = 50

var objetivo

func _physics_process(delta):
	controles()

func controles():
	if Input.is_action_pressed("ui_right"):
		self.position.x += velocidad 
	if Input.is_action_pressed("ui_left"):
		self.position.x -= velocidad
	
func recibir_Objetivo(nuevoObjetivo):
	objetivo = nuevoObjetivo

func _on_area_2d_area_entered(area):
	if area.get_parent()._asignacion() == objetivo:
		get_parent().sumar_Puntaje()
	else:
		get_parent().restar_Puntaje()
	area.get_parent().desaparecer()
	

