extends KinematicBody2D

export var bounce_speed = 100

func bounce(target):
	target.bounce(bounce_speed)
