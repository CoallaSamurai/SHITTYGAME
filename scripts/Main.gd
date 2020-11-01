extends Control
const CLIENT = preload("res://objects/Client.tscn")


var recipe = []
var points
var is_client = false
var current_client
var pot_ready = false


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	print(get_children())


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if is_client == false:
		points = 0
		current_client = CLIENT.instance()
		current_client.set_name("current_client")
		add_child(current_client)
		$current_client.position += Vector2(300, 200)
		is_client = true
		recipe = [$current_client.illness[0].cures[0], 
		$current_client.illness[1].cures[0], 
		$current_client.illness[2].cures[0]]
		print(recipe)
	else:
		if pot_ready == false:
			for cure in recipe:
				for ill in $current_client.illness:
					if cure in ill.anticures:
						print("SMERT PO PRICHINE PIDORAS")
					elif cure in ill.cures:
						points += 1
			pot_ready = true
			
		if points > 0:
			if points > 3:
				points = 3
			print("sas")
			print(points)
			$current_client.queue_free()
			is_client = false
			pot_ready = false
		else:
			print("SMERT PO PRICHINE PIDORAS")
	
