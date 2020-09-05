extends Button



func _on_NewGameButton_pressed():
	get_tree().change_scene("res://Src/GUI/UI/Game/Scenes/Game.tscn")
	queue_free()
