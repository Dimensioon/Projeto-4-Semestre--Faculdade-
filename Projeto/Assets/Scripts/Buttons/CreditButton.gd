extends Button
func _on_CreditButton_pressed():
	get_tree().change_scene("res://Src/GUI/UI/Credits/Scenes/Credit.tscn")
	queue_free()
