extends Node2D


func _on_button_start_pressed():
	$Timer.start(Global.time_accurancy)
	
	if Global.notes.has("0"):
		$Piano_Manager.play_notes(Global.notes["0"])
		
		$Music.play()


func _on_timer_timeout():
	pass # Replace with function body.
