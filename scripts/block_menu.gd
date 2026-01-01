extends PanelContainer
class_name BlockMenu

signal block_selected(scene: PackedScene)

@export var block_button_scene: PackedScene
@onready var buttons_container: HBoxContainer = $Buttons

var _buttons: Array[BlockButton] = []
var _selected_id: String = ""


func _ready():
	build_menu()

	if BlockDatabase.blocks.size() > 0:
		var first_id: String = str(BlockDatabase.blocks.keys()[0])
		select_block(first_id)


func build_menu():
	
	for child in buttons_container.get_children():
		child.queue_free()

	_buttons.clear()

	var keys: Array = BlockDatabase.blocks.keys()
	keys.sort()

	for id in keys:
		var block_id: String = str(id)
		var data: Dictionary = BlockDatabase.blocks[block_id]

		var btn := block_button_scene.instantiate() as BlockButton
		btn.block_id = block_id
		btn.block_scene = data["scene"]
		
		btn.texture_normal = data["icon"]
		btn.custom_minimum_size = Vector2(24, 24)
		btn.stretch_mode = TextureButton.STRETCH_SCALE

		btn.pressed.connect(func(): select_block(block_id))

		buttons_container.add_child(btn)
		_buttons.append(btn)


func select_block(block_id: String):
	_selected_id = block_id

	for btn in _buttons:
		btn.set_selected(btn.block_id == block_id)

	var scene: PackedScene = BlockDatabase.blocks[block_id]["scene"]
	emit_signal("block_selected", scene)
