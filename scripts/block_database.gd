extends Node

# Added to autoload in project setting
var blocks := {
	"rect_1": {
		"scene": preload("res://scenes/blocks/Rect01.tscn"),
		"icon": preload("res://arts/square 1.png"),
		"pos": Vector2(80,100)
	},
	"rect_2": {
		"scene": preload("res://scenes/blocks/Rect02.tscn"),
		"icon": preload("res://arts/square 2.png"),
		"pos": Vector2(180,100)
	},
	"rect_3": {
		"scene": preload("res://scenes/blocks/Rect03.tscn"),
		"icon": preload("res://arts/square 3.png"),
		"pos": Vector2(280,100)
	},
	"pillar_1": {
		"scene": preload("res://scenes/blocks/Pillar01.tscn"),
		"icon": preload("res://arts/pillar 1.png"),
		"pos": Vector2(80,220)
	},
	"pillar_2": {
		"scene": preload("res://scenes/blocks/Pillar02.tscn"),
		"icon": preload("res://arts/pillar 2.png"),
		"pos": Vector2(160,220)
	},
	"triangle_1": {
		"scene": preload("res://scenes/blocks/Triangle01.tscn"),
		"icon": preload("res://arts/triangle 1.png"),
		"pos": Vector2(80,340)
	},
	"triangle_2": {
		"scene": preload("res://scenes/blocks/Triangle02.tscn"),
		"icon": preload("res://arts/triangle 2.png"),
		"pos": Vector2(200,340)
	},
	"wide_1": {
		"scene": preload("res://scenes/blocks/Wide01.tscn"),
		"icon": preload("res://arts/wide 1.png"),
		"pos": Vector2(80,460)
	},
	"wide_2": {
		"scene": preload("res://scenes/blocks/Wide02.tscn"),
		"icon": preload("res://arts/wide 2.png"),
		"pos": Vector2(240,460)
	},
	"round_1_1": {
		"scene": preload("res://scenes/blocks/Round01-1.tscn"),
		"icon": preload("res://arts/round 1-1.png"),
		"pos": Vector2(80,580)
	},
	"round_1_2": {
		"scene": preload("res://scenes/blocks/Round01-2.tscn"),
		"icon": preload("res://arts/round 1-2.png"),
		"pos": Vector2(160,580)
	},
	"dome_1": {
		"scene": preload("res://scenes/blocks/Dome01.tscn"),
		"icon": preload("res://arts/dome 1.png"),
		"pos": Vector2(80,670)
	},
	"dome_2": {
		"scene": preload("res://scenes/blocks/Dome02.tscn"),
		"icon": preload("res://arts/dome 2.png"),
		"pos": Vector2(240,670)
	},
}
