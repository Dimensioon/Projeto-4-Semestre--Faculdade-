extends Control

onready var console_label = $CanvasLayer/CenterContainer/Label

var save_path = "user://save.dat"

func _on_SaveButton_pressed():
	var data = {
		"name" : "Teste",
		"jump_height" : 2.5,
		"max_health" : 6,
		"health" : 4,
		"strength" : 11,
	}
	
	var file = File.new()
	var error = file.open(save_path, File.WRITE)
	if error == OK:
		file.store_var(data)
		file.close()
	
	
	console_write("data salved")
	

func _on_LoadButton_pressed():
	
	var file = File.new()
	if file.file_exists(save_path):
		var error = file.open(save_path, File.READ)
		if error == OK:
			var player_data = file.get_var()
			file.close()
			console_write(player_data)
	
	console_write("data loaded")

func console_write(value):
	console_label.text += str(value) + "\n"


func _on_Return_pressed():
	get_tree().change_scene("res://Src/GUI/UI/TittleScreen/Scenes/MainMenu.tscn")
	queue_free()
	pass


func _on_Button_pressed():
	get_tree().change_scene("res://Src/Scenes/Main/Main.tscn")
	queue_free()
	pass
