extends Button
@onready var Godot0_2d = $"../Godot0"


func _on_pressed():
	Godot0_2d.visible = not Godot0_2d.visible
