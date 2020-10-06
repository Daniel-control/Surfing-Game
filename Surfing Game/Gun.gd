extends Area2D

var same_gun = "no"

func _on_Gun_body_entered(body):
	if body.name == "Player":
		var same_gun = "yes"
		while same_gun == "yes":
			var player_pos = get_position()
			print(player_pos)
