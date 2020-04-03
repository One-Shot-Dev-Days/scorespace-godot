extends "res://Bouncer.gd"

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var health = 3

func _damage():
	health -= 1
	print("health =", health)
	if health == 2:
		$Sprite.texture = load("res://assets/environment/brick-crack1.png")
	elif health == 1:
		$Sprite.texture = load("res://assets/environment/brick-crack2.png")
	else:
		queue_free()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
