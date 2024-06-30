extends Node

var notes = {}
var midis = []
var time_accurancy = 0.1

var file = "res://Sonido/Json_Text/Tetris - Tetris MainTheme.txt"

# Called when the node enters the scene tree for the first time.
func _ready():
	#var file = "res://Sonido/Json_Text/TemaDoble.txt"
	
	var file_as_text = FileAccess.get_file_as_string(file)
	var file_as_dic = JSON.parse_string(file_as_text)
	
	for track in file_as_dic["tracks"]:
		for note in track["notes"]:
			add_note_to_main_array(note)
			add_midi_to_main_array(note)
			
	print(notes)
	print(midis)

func add_note_to_main_array(note):
	# { "duration": 0.15, "durationTicks": 240, "midi": 39, "name": "D#2", "ticks": 0, "time": 0, "velocity": 1 }
	var time = str(snapped(note["time"], time_accurancy))
	#var midi = str(snapped(note["midi"], time_accurancy))
	if !notes.has(time):
		notes[time] = []
	
	notes[time].append([note["midi"], note["duration"]])
	
func add_midi_to_main_array(note):
	var midi = str(snapped(note["midi"], time_accurancy))
	if !midis.has(midi):
		midis.append(midi)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
