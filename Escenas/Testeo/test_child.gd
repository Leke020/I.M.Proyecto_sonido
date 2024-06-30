extends Node2D

func _ready():
	get_parent().test_print()
	get_parent().get_node("Music").play()
	if get_parent().has_method("test_print"): get_parent().test_print()
	
func test_print():
	print("adios")
