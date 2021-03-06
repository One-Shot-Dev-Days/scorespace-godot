extends "res://Bouncer.gd"

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
	move_right = randi() % 2 == 0
