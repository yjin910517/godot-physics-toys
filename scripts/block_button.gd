extends TextureButton
class_name BlockButton

@onready var highlight: ColorRect = $Highlight

var block_id: String = ""
var block_scene: PackedScene

func _ready():	
	highlight.visible = false
	

func set_selected(selected: bool):
	highlight.visible = selected
