extends StaticBody2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

func kill(target):
	var game_over_label = get_node("../CanvasLayer/GameOver")
	game_over_label.visible = true
	target.die()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
