extends RigidBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var speed = 1000

func _physics_process(delta):
	if Input.is_action_pressed("move_left"):
		position.x -= speed * delta
	if Input.is_action_pressed("move_right"):
		position.x += speed * delta

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
