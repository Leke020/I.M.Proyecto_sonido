extends Node2D

func _ready():
	get_child(0).test_print()

func test_print():
	print("hola")
