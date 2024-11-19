extends Button

#@onready var _products = [$"../Godot0", $"../Godot1", $"../Godot2", $"../Godot3", $"../Godot4"]

@export var _prod : Array[Node]

var _last_products = ""

var rng = RandomNumberGenerator.new()

func _ready():
	#randomize()

	#var tmp_oui = rng.randi_range(0, _products.size()-1 )
	#
	#_products[tmp_oui].show()
	pass

func get_products():
	var random_products = _prod[randi() % _prod.size()]
	return random_products

func _on_pressed() -> void:
	for element in _prod:
		element.hide()
	
	
	
	var tmp_oui = rng.randi_range(0, _prod.size()-1 )
	#print(tmp_oui)
	_prod[tmp_oui].show()
