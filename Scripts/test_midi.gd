extends Node2D

var termino = false

func _on_button_start_pressed():
	termino = false
	$Timer.start(Global.time_accurancy)
	
	if Global.notes.has("0"):
		$Piano_Manager.play_notes(Global.notes["0"])
		
		$Music.play()


func _on_button_stop_pressed():
	termino = true
	$Music.stop()


func _on_timer_timeout():
	var time_of_song = str(snapped($Music.get_playback_position(), Global.time_accurancy))
	
	if Global.notes.has(time_of_song) and !termino:
		$Piano_Manager.play_notes(Global.notes[time_of_song])


func _on_music_finished():
	termino = true

