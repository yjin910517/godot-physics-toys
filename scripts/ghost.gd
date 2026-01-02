extends Node2D
class_name Ghost

@onready var sprite: Sprite2D = $Sprite2D


func set_texture(tex: Texture2D) -> void:
	sprite.texture = tex

# TBD
func set_valid(valid: bool) -> void:
	# Optional: green/red tint
	if valid:
		sprite.modulate = Color(1, 1, 1, 0.5)
	else:
		sprite.modulate = Color(1, 0.2, 0.2, 0.5)
