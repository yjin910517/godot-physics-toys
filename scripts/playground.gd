extends Node2D

signal is_in_playground(status: bool)
signal place_block()

@onready var blocks_container: Node2D = $Blocks
@onready var bg: ColorRect = $Ground
@onready var pg_control: Control = $Ground/Control

var current_block_scene: PackedScene
var selected_block_id: String = ""

var delete_mode: bool = false


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pg_control.connect("mouse_entered", Callable(self, "_on_mouse_entered"))
	pg_control.connect("mouse_exited", Callable(self, "_on_mouse_exited"))
	pg_control.connect("gui_input", Callable(self, "_on_pg_gui_input"))
	
	bg.modulate.a = 0.0


func _on_mouse_entered():
	emit_signal("is_in_playground", true)
	

func _on_mouse_exited():
	emit_signal("is_in_playground", false)


func _on_pg_gui_input(event):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		emit_signal("place_block")


func _wakeup_blocks():
	for child in blocks_container.get_children():
		child.sleeping = false


func add_block_to_pg(block_instance):
	_wakeup_blocks()
	blocks_container.add_child(block_instance)
	block_instance.connect("block_clicked", Callable(self, "_on_block_click"))


func set_delete_mode(status):
	delete_mode = status
	

func _on_block_click(block_instance):
	if delete_mode:
		block_instance.queue_free()
		_wakeup_blocks()


func reset_pg():
	for child in blocks_container.get_children():
		child.queue_free()
