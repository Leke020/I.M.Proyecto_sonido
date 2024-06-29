extends Node2D

var keys
var onrea

func _ready():
	keys = get_tree().get_nodes_in_group("key")

func play_notes(notes):
	
	for note in notes:
		var note_number = str(note[0])
		var duration = note[1]
		 
		
		get_node("Piano_Key" + note_number).key_on(duration)
		#get_tree().get_nodes_in_group("key" + note_number).key_on(duration)
		#get_node(get_tree().get_nodes_in_group("key") + note_number).key_on(duration)
		
	
