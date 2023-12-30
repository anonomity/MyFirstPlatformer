extends Node2D


func _on_death_area_body_entered(body):
	if body.is_in_group("player"):
		call_deferred("reset_level")
		
func reset_level():
	get_tree().reload_current_scene()
	

func _on_next_level_trigger_body_entered(body):
	if body.is_in_group("player"):
		call_deferred("change_to_next_level")

func change_to_next_level():
	get_tree().change_scene_to_file("res://scenes/level_2.tscn")
