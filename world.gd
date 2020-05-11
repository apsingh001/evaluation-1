extends Node2D

var score=0 setget set_score
var result=""

func set_score(value):
	score=value
	get_node("Score").set_text("Score : "+str(score))
	get_node("Result").set_text(result)
