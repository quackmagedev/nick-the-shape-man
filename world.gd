extends Node2D

@onready var collision_polygon_2d: CollisionPolygon2D = $StaticBody2D/CollisionPolygon2D
@onready var polygon_2d: Polygon2D = $StaticBody2D/CollisionPolygon2D/Polygon2D
@onready var collision_polygon_2d_2: CollisionPolygon2D = $StaticBody2D/CollisionPolygon2D2
@onready var polygon_2d_2: Polygon2D = $StaticBody2D/CollisionPolygon2D2/Polygon2D2
@onready var level_completed: ColorRect = $CanvasLayer/LevelCompleted


func _ready():
	RenderingServer.set_default_clear_color(Color.SKY_BLUE)
	polygon_2d.polygon = collision_polygon_2d.polygon
	polygon_2d_2.polygon = collision_polygon_2d_2.polygon
	Events.level_completed.connect(show_level_completed)

func show_level_completed():
	level_completed.show()
	get_tree().paused = true
