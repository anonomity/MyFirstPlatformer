extends Area2D

@onready var beep_sound = $beep_sound
@onready var sprite_2d = $Sprite2D

var collected = false



func _on_body_entered(body):
	if body.is_in_group("player") and !collected:
		GlobalScript.add_coffee(1)
		collected= true
		beep_sound.play()
		sprite_2d.hide()


func _on_beep_sound_finished():
	queue_free()
