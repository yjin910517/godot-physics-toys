extends Node2D

signal is_in_playground(status: bool)
signal place_block()

@onready var blocks_container: Node2D = $Blocks
@onready var pg_control: Control = $Ground/Control

var current_block_scene: PackedScene
var selected_block_id: String = ""


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pg_control.connect("mouse_entered", Callable(self, "_on_mouse_entered"))
	pg_control.connect("mouse_exited", Callable(self, "_on_mouse_exited"))
	pg_control.connect("gui_input", Callable(self, "_on_pg_gui_input"))


func _on_mouse_entered():
	emit_signal("is_in_playground", true)
	

func _on_mouse_exited():
	emit_signal("is_in_playground", false)


func _on_pg_gui_input(event):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		print("can create block")
		emit_signal("place_block")


func add_block_to_pg(block_instance):
	blocks_container.add_child(block_instance)
