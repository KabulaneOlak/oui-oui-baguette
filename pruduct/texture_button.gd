extends TextureButton

@export var _prod : Array[Node]

var _last_products = ""

var rng = RandomNumberGenerator.new()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
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
