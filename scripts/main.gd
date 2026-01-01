extends Node2D

@onready var blocks_container: Node2D = $Blocks
@onready var block_menu: BlockMenu = $UI/BlockMenu

var current_block_scene: PackedScene

func _ready():
	block_menu.block_selected.connect(Callable(self, "_on_block_selected"))


func _on_block_selected(scene: PackedScene):
	current_block_scene = scene
	print("Selected block:", scene.resource_path)
	
	
func _unhandled_input(event):
	if event is InputEventMouseButton \
	and event.button_index == MOUSE_BUTTON_LEFT \
	and event.pressed:

		# Optional: Ignore clicks that happen over UI
		if get_viewport().gui_get_hovered_control() != null:
			return

		if current_block_scene == null:
			return

		var spawn_pos := get_global_mouse_position()
		spawn_block(spawn_pos)


func spawn_block(spawn_pos: Vector2):
	var block_instance = current_block_scene.instantiate()
	blocks_container.add_child(block_instance)
	block_instance.global_position = spawn_pos
