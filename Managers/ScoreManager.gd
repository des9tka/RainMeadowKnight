extends Node

@onready var score_label = %ScoreLabel

var score = 0
var needed = 7

func add_point():
	score += 1
	if score != needed:
		score_label.text = 'You collected ' + str(score) + ' points,\n' + str(needed - score) + ' left to go to next lvl!'
	else:
		score_label.text = 'You collected all ' + str(needed) + ' coins!'
	print(score)
