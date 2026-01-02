extends Node

# Added to autoload in project setting
var blocks := {
	"rect_1": {
		"scene": preload("res://scenes/blocks/Rect01.tscn"),
		"icon": preload("res://arts/square 1.png"),
		"pos": Vector2(100,100)
	},
	"rect_2": {
		"scene": preload("res://scenes/blocks/Rect02.tscn"),
		"icon": preload("res://arts/square 2.png"),
		"pos": Vector2(100,200)
	},
	"round_1_1": {
		"scene": preload("res://scenes/blocks/Wide01.tscn"),
		"icon": preload("res://arts/wide 1.png"),
		"pos": Vector2(100,300)
	},
}
