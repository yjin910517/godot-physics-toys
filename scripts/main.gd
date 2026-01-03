extends Node2D

@onready var playground: Node2D = $Playground
@onready var block_menu: ToyBox = $Menu
@onready var ghost: Ghost = $Ghost
@onready var delete_ghost = $DeleteGhost


var current_block_scene: PackedScene
var selected_block_id: String = ""


func _ready():
	block_menu.connect("block_selected", Callable(self, "_on_block_selected"))
	block_menu.connect("reset_playground", Callable(self, "_on_reset_playground"))
	playground.connect("is_in_playground", Callable(self, "_on_playground"))
	playground.connect("place_block", Callable(self, "spawn_block"))
	
	ghost.visible = false
	delete_ghost.visible = false


func _process(delta):
	if ghost.visible:
		ghost.global_position = get_global_mouse_position()
	
	if delete_ghost.visible:
		delete_ghost.global_position = get_global_mouse_position()
		

func _on_block_selected(block_id: String):
	selected_block_id = block_id
	var data: Dictionary = BlockDatabase.blocks[selected_block_id]
	
	if selected_block_id == "delete":
		playground.set_delete_mode(true)
		delete_ghost.visible = true
	else:
		current_block_scene = data["scene"]
		playground.set_delete_mode(false)
		delete_ghost.visible = false
	
	# update ghost
	ghost.set_texture(data["icon"])


func _on_playground(status):
	if selected_block_id == "":
		return
	
	if selected_block_id == "delete":
		return
	
	ghost.visible = status


func spawn_block():
	if current_block_scene == null:
		return
		
	var spawn_pos := get_global_mouse_position()
	var block_instance = current_block_scene.instantiate()
	
	playground.add_block_to_pg(block_instance)
	block_instance.global_position = spawn_pos


func _on_reset_playground():
	playground.reset_pg()
