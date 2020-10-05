extends KinematicBody2D

const Acceleration = 512
const Max_Speed = 512
var motion = Vector2.ZERO

func _physics_process(delta):
	var y_input = Input.get_action_strength("up") - Input.get_action_strength("down")
	var x_input = Input.get_action_strength("right") - Input.get_action_strength("left")
	
	if x_input != 0:
		motion.x += x_input * Acceleration * delta
		motion.x = clamp(motion.x, -Max_Speed, Max_Speed)
	else:
		motion.x = lerp(motion.x, 0, 0.06)
		
	if y_input != 0:
		motion.y += y_input * Acceleration * delta
		motion.y = clamp(motion.y, -Max_Speed, Max_Speed)
	else:
		motion.y = lerp(motion.y, 0, 0.06)
	

	move_and_slide(motion)


