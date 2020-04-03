extends "res://Pacer.gd"

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

func _damage():
	Globals.score += 5
	queue_free()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
