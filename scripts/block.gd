extends RigidBody2D
class_name Block

signal block_clicked(block)

@onready var click_shield = $Sprite2D/ClickShield


func _ready() -> void:
	click_shield.modulate.a = 0.0
	click_shield.connect("gui_input", Callable(self, "_on_block_gui_input"))


func _on_block_gui_input(event):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		emit_signal("block_clicked", self)
