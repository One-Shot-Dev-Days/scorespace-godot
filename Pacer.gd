extends "res://Bouncer.gd"


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

export var speed = 10

var move_right = true
var move_y = 0

func _physics_process(delta):
	var move = Vector2(0, move_y)
	if move_right:
		move.x = speed * delta
	else:
		move.x = -speed * delta
	
	var collision = move_and_collide(move)
	if collision:
		move_right = not move_right

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
