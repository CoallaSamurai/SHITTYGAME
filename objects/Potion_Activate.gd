extends TextureButton


# Declare member variables here. Examples:

onready var state2 = $Potion2


# Called when the node enters the scene tree for the first time.
func _ready():
	activate()



# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):

func activate():
	self.visible = false
	state2.visible = true

func deactivate():
	self.visible = true
	state2.visible = false
