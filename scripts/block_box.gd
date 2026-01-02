extends Node2D
class_name ToyBox

signal block_selected(scene: PackedScene)

@onready var block_item_scene: PackedScene = preload("res://scenes/BlockItem.tscn")

var _buttons: Array[BlockItem] = []
var _selected_id: String = ""


func _ready():
	build_menu()


func build_menu():
	
	for child in get_children():
		child.queue_free()

	_buttons.clear()

	var keys: Array = BlockDatabase.blocks.keys()
	keys.sort()

	for id in keys:
		var block_id: String = str(id)
		var data: Dictionary = BlockDatabase.blocks[block_id]

		var menu_item := block_item_scene.instantiate() as BlockItem
		add_child(menu_item)
		
		menu_item.block_id = block_id
		menu_item.block_scene = data["scene"]
		
		menu_item.texture = data["icon"]
		menu_item.position = data["pos"]
		menu_item.set_full_rect()

		menu_item.connect("item_pressed", Callable(self, "_on_select_block"))
		
		_buttons.append(menu_item)


func _on_select_block(block_id: String):
	_selected_id = block_id

	for btn in _buttons:
		btn.set_selected(btn.block_id == block_id)

	var scene: PackedScene = BlockDatabase.blocks[block_id]["scene"]
	emit_signal("block_selected", scene)
