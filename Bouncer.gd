extends KinematicBody2D

export var bounce_speed = 100

func bounce(target):
	print("bounce", self.name)
	target.bounce(bounce_speed)
	_damage()

func _damage():
	return
