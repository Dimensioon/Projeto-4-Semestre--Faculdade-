extends KinematicBody2D

#  // Variaveis do Personagem \\
# Movimentação
export var speed = 200  # How fast the player will move (pixels/sec).
export var run = 400 
var velocity = Vector2() # O movimento do player em 2 posições (x,y)

# // Processos do Personagem Geral \\
func _process(delta):
	_walk(delta)
	
# // Processo da Movimentação \\
func _walk(delta):
	
	if Input.is_action_pressed("ui_run"):
		velocity.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
		velocity.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	
		if abs(velocity.x) == 1 and abs(velocity.y) == 1:
			velocity = velocity.normalized()
		var motion = run * velocity
		
		move_and_slide(motion)
		
	else:
	# get_action_strength é uma boleana
		velocity.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
		velocity.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	
		if abs(velocity.x) == 1 and abs(velocity.y) == 1:
			velocity = velocity.normalized()
		var motion = speed * velocity
		
		move_and_slide(motion)
	
	pass








