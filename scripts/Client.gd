extends KinematicBody2D



var poss = Smpts
var names = ["Kaka", "Sraka", "Ochlo", "Yebun", "Pukich"]
var socalling = ""
var illness = []


func give_smpt():
	poss = poss.genetate()
	for i in range(3):
		illness.append()
		pass

# Called when the node enters the scene tree for the first time.
func _ready():
	print(names[0])
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
