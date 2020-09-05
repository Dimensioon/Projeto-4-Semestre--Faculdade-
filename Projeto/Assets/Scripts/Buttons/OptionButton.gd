extends Button



func _on_OptionButton_pressed():
	get_tree().change_scene("res://Src/GUI/UI/Options/Scenes/Options.tscn")
	queue_free()
