extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

onready var state2 = $Potion2
onready var state1 = $Potion

# Called when the node enters the scene tree for the first time.
func _ready():
	activate()


func activate():
	state1.visible = false
	state2.visible = true

func deactivate():
	state1.visible = true
	state2.visible = false
