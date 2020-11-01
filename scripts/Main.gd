extends Control
const CLIENT = preload("res://objects/Client.tscn")


var recipe = []
var is_client = false
var current_client


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	print(get_children())


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if is_client == false:
		current_client = CLIENT.instance()
		current_client.set_name("current_client")
		add_child(current_client)
		$current_client.position += Vector2(300, 200)
		is_client = true
	else:
		print("ass")
	
