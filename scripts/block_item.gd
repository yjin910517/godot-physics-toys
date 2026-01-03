extends TextureRect
class_name BlockItem

signal item_pressed(block_id)

@onready var click_detect: Control = $ClickControl

var block_id: String = ""


func _ready():	
	click_detect.connect("gui_input", Callable(self, "_on_item_gui_input"))


func set_full_rect():
	click_detect.size = self.size
	

func set_selected(selected: bool):
	# TBD on selected item vfx
	pass
	

func _on_item_gui_input(event):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		emit_signal("item_pressed", block_id)
