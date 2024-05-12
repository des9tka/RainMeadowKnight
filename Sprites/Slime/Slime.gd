extends Node2D

const SPEED = 60
var direction = 1

@onready var animated_sprite_2d = $AnimatedSprite2D
@onready var ray_cast_right = $RayCastRight
@onready var ray_cast_left = $RayCastLeft

var is_example = null

func _ready():
	add_to_group('Slime')
	is_example = get('z_index') == -1

func _process(delta):		

	if ray_cast_right.is_colliding():
		var collider = ray_cast_right.get_collider()

		if collider and collider.is_in_group('Player') or collider and collider.is_in_group('Slime'):
				print('Player/Slime')
		else:
			direction = -1
			animated_sprite_2d.flip_h = true
			
	elif ray_cast_left.is_colliding():
		var collider = ray_cast_left.get_collider()
		
		if collider and collider.is_in_group('Player') or collider and collider.is_in_group('Slime'):
				print('Player')
		else:
			animated_sprite_2d.flip_h = false
			direction = 1
	
	if not is_example:
		position.x += direction * SPEED * delta
