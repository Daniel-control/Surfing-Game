extends Area2D

var always_true = true
var is_on_hand = false

func _on_Gun_body_entered(body):
		if body.name == "Player":
			while always_true == true:
				var player_pos = get_parent().get_node("Player").position
				set_position(player_pos)
				is_on_hand = true
				yield(get_tree(), "idle_frame")
				
func _process(delta):
	if is_on_hand == true:
		var mouse_pos = get_local_mouse_position()
		rotation += mouse_pos.angle() * 0.1
