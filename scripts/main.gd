extends Node2D

@onready var playground: Node2D = $Playground
@onready var blocks_container: Node2D = $Blocks
@onready var block_menu: ToyBox = $Menu
@onready var ghost: Ghost = $Ghost

var current_block_scene: PackedScene
var selected_block_id: String = ""


func _ready():
	block_menu.connect("block_selected", Callable(self, "_on_block_selected"))
	playground.connect("is_in_playground", Callable(self, "_on_playground"))

	
	ghost.visible = false


func _process(delta):
	if not ghost.visible:
		return

	ghost.global_position = get_global_mouse_position()
	

func _on_block_selected(block_id: String):
	selected_block_id = block_id
	var data: Dictionary = BlockDatabase.blocks[selected_block_id]
	current_block_scene = data["scene"]
	
	# update ghost
	ghost.set_texture(data["icon"])


func _on_playground(status):
	if selected_block_id == "":
		return
	
	ghost.visible = status
	
	
func _unhandled_input(event):
	if event is InputEventMouseButton \
	and event.button_index == MOUSE_BUTTON_LEFT \
	and event.pressed:

		# WIP: Ignore clicks that happen over UI
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
