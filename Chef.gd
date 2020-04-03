extends KinematicBody2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

export var speed = 100
export var gravity = 98

var vert_speed = 0

func bounce(bounce_speed):
	print("BOUNCE!")
	vert_speed = -bounce_speed

func die():
	Globals.game_over = true
	rotation_degrees = -90

func _physics_process(delta):
	if Globals.game_over:
		return
		
	var move = Vector2(0, 0)
	if Input.is_action_pressed("move_left"):
		move.x = -speed * delta
	elif Input.is_action_pressed("move_right"):
		move.x = speed * delta

	vert_speed += gravity * delta
	move.y = vert_speed
	
	print("chef move", move)
	
	var collision = move_and_collide(move)
	if collision:
		vert_speed = 0
		if collision.collider.has_method('kill'):
			collision.collider.kill(self)
		elif collision.collider.has_method('bounce'):
			collision.collider.bounce(self)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Globals.game_over and Input.is_action_pressed("restart"):
		Globals.game_over = false
		Globals.score = 0
		get_tree().reload_current_scene()

