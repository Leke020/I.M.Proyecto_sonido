extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_salir_pressed():
	get_tree().quit()


func _on_button_empezar_pressed():
	get_tree().change_scene_to_file("res://Escenas/test_midi.tscn")


func _on_button_prueba_pressed():
	get_tree().change_scene_to_file("res://Escenas/Prueba.tscn")
