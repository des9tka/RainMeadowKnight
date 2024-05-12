extends Area2D

@onready var animation_player = $AnimationPlayer
@onready var score_manager = %ScoreManager

func _ready():
	add_to_group('Coin')

func _on_body_entered(body):
	animation_player.play("pick_up")
	score_manager.add_point()
