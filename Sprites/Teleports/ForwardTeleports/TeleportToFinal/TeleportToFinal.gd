extends Node2D

@onready var score_manager = %ScoreManager

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_2d_body_entered(body):
	if score_manager.score == score_manager.needed and body.is_in_group('Player'):
		print('Lvl3 finished!')
		get_tree().change_scene_to_file('res://Scenes/Final.tscn')
