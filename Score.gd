extends Label

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Globals.game_over:
		return

	Globals.score += delta
	text = str(int(Globals.score))
