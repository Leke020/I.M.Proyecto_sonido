extends Node2D

var termino = false
var puntaje = 0
@onready var _puntajeContador = $CanvasLayer/puntaje

@export var images = []
@export var songs = []

func _ready():
	var random = RandomNumberGenerator.new().randi_range(0, 4)
	get_child(0).recibir_Objetivo(random)
	$Icon.texture = images[random]
	_puntajeContador.text = str(puntaje)
	print(random)

func _on_button_start_pressed():
	$Control/VBoxContainer.visible =  not $Control/VBoxContainer.visible
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
	$Control/VBoxContainer.visible =  not $Control/VBoxContainer.visible

func sumar_Puntaje():
	puntaje += 10
	_puntajeContador.text = str(puntaje)

func restar_Puntaje():
	puntaje -= 10
	_puntajeContador.text = str(puntaje)

func pausa():
	$Menu_Pausa.visible = true
	get_tree().paused = true
