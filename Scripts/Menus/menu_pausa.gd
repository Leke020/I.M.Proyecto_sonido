extends Control



func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("Pausa"):
		$VBoxContainer.visible = not $VBoxContainer.visible
		get_tree().paused = not get_tree().paused


func _on_button_reanudar_button_up():
	$VBoxContainer.visible = not $VBoxContainer.visible
	get_tree().paused = not get_tree().paused


func _on_button_menu_principal_pressed():
	get_tree().paused = not get_tree().paused
	get_tree().change_scene_to_file("res://Escenas/Menus/menu_principal.tscn")
