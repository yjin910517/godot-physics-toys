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
		"pos": Vector2(200,100)
	},
	"rect_3": {
		"scene": preload("res://scenes/blocks/Rect03.tscn"),
		"icon": preload("res://arts/square 3.png"),
		"pos": Vector2(300,100)
	},
	"rect_4": {
		"scene": preload("res://scenes/blocks/Rect04.tscn"),
		"icon": preload("res://arts/square 4.png"),
		"pos": Vector2(420,100)
	},
	"pillar_1": {
		"scene": preload("res://scenes/blocks/Pillar01.tscn"),
		"icon": preload("res://arts/pillar 1.png"),
		"pos": Vector2(100,220)
	},
	"pillar_2": {
		"scene": preload("res://scenes/blocks/Pillar02.tscn"),
		"icon": preload("res://arts/pillar 2.png"),
		"pos": Vector2(180,220)
	},
	"pillar_3": {
		"scene": preload("res://scenes/blocks/Pillar03.tscn"),
		"icon": preload("res://arts/pillar 3.png"),
		"pos": Vector2(260,220)
	},
	"pillar_4": {
		"scene": preload("res://scenes/blocks/Pillar04.tscn"),
		"icon": preload("res://arts/pillar 4.png"),
		"pos": Vector2(340,220)
	},
	"triangle_1": {
		"scene": preload("res://scenes/blocks/Triangle01.tscn"),
		"icon": preload("res://arts/triangle 1.png"),
		"pos": Vector2(100,320)
	},
	"triangle_2": {
		"scene": preload("res://scenes/blocks/Triangle02.tscn"),
		"icon": preload("res://arts/triangle 2.png"),
		"pos": Vector2(240,320)
	},
	"wide_1": {
		"scene": preload("res://scenes/blocks/Wide01.tscn"),
		"icon": preload("res://arts/wide 1.png"),
		"pos": Vector2(100,430)
	},
	"wide_2": {
		"scene": preload("res://scenes/blocks/Wide02.tscn"),
		"icon": preload("res://arts/wide 2.png"),
		"pos": Vector2(260,430)
	},
	"round_1_1": {
		"scene": preload("res://scenes/blocks/Round01-1.tscn"),
		"icon": preload("res://arts/round 1-1.png"),
		"pos": Vector2(100,540)
	},
	"round_1_2": {
		"scene": preload("res://scenes/blocks/Round01-2.tscn"),
		"icon": preload("res://arts/round 1-2.png"),
		"pos": Vector2(180,540)
	},
	"dome_1": {
		"scene": preload("res://scenes/blocks/Dome01.tscn"),
		"icon": preload("res://arts/dome 1.png"),
		"pos": Vector2(280,540)
	},
	"dome_2": {
		"scene": preload("res://scenes/blocks/Dome02.tscn"),
		"icon": preload("res://arts/dome 2.png"),
		"pos": Vector2(420,540)
	},
	
	# special buttons
	"delete": {
		"icon": preload("res://arts/delete.png"),
		"pos": Vector2(200,680)
	},
}
