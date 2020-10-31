extends KinematicBody2D


var poss: Smpts
var names = ["Kaka", "Sraka", "Ochlo", "Yebun", "Pukich"]
var socalling = ""
var illness = []


func give_smpt():
	var popa = poss.genetate()
	popa.shuffle()
	illness.append(popa[0], popa[1], popa[2])

# Called when the node enters the scene tree for the first time.
func _ready():
	give_smpt()
	print(illness)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
