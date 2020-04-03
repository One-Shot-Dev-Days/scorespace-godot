extends "res://Pacer.gd"

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

export var vert_speed = 0.5
export var spawn_time = 1.0

const potato = preload("res://Potato.tscn")

var move_up = false
var time_since_last_spawn = 0.0
var start_y = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	start_y = position.y

func _physics_process(delta):
	if move_up:
		move_y = -vert_speed
	else:
		move_y = vert_speed
	._physics_process(delta)
	if position.y > start_y + 20:
		move_up = true
	elif position.y < start_y - 20:
		move_up = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Globals.game_over:
		return
		
	time_since_last_spawn += delta
	if time_since_last_spawn > spawn_time:
		time_since_last_spawn = 0
		var new_potato = potato.instance()
		new_potato.position = position
		get_parent().add_child(new_potato)
