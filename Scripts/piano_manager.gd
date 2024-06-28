extends Node2D

func play_notes(notes):
	
	for note in notes:
		var note_number = str(note[0])
		var duration = note[1]
		 
		
		get_node("Piano_Key" + note_number).key_on(duration)
