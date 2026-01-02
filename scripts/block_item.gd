extends TextureRect
class_name BlockItem

signal item_pressed(block_id)

@onready var highlight: ColorRect = $Highlight
@onready var click_detect: Control = $ClickControl

var block_id: String = ""
var block_scene: PackedScene


func _ready():	
	click_detect.connect("gui_input", Callable(self, "_on_item_gui_input"))
	highlight.visible = false


func set_full_rect():
	click_detect.size = self.size
	highlight.size = self.size
	

func set_selected(selected: bool):
	highlight.visible = selected
	

func _on_item_gui_input(event):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		emit_signal("item_pressed", block_id)
