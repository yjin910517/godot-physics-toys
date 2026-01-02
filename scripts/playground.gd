extends Node2D

signal is_in_playground(status: bool)

# @onready var blocks_container: Node2D = $Blocks
@onready var pg_control: Control = $BG/Control

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pg_control.connect("mouse_entered", Callable(self, "_on_mouse_entered"))
	pg_control.connect("mouse_exited", Callable(self, "_on_mouse_exited"))


func _on_mouse_entered():
	emit_signal("is_in_playground", true)
	

func _on_mouse_exited():
	emit_signal("is_in_playground", false)
