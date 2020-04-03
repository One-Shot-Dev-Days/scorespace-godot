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
	queue_free()

func _physics_process(delta):
	var move = Vector2(0, 0)
	if Input.is_action_pressed("move_left"):
		move.x = -speed * delta
	elif Input.is_action_pressed("move_right"):
		move.x = speed * delta

	vert_speed += gravity * delta
	move.y = vert_speed
	
	var collision = move_and_collide(move)
	if collision:
		if collision.collider.has_method('kill'):
			collision.collider.kill(self)
		elif collision.collider.has_method('bounce'):
			collision.collider.bounce(self)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
