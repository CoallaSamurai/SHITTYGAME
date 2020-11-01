extends KinematicBody2D



var names = ["Kaka", "Sraka", "Ochlo", "Yebun", "Pukich"]
var socalling = ""
var illness = []
var candy = Smpt.new("candy overdose", ["goblin sagebrush"], [], true)
var pumpkin = Smpt.new("pumpkinhead syndrome", ["beauty gel", "tears of beuty"], [], true)
var slug = Smpt.new("slug nose rheum", ["firefly flower", "gunpowder"], ["amanita mix"], true)
var psycho = Smpt.new("halloween psychosis", ["goblin sagebrush", "amanita mix"], ["tears of beauty"], false)
var warts = Smpt.new("witch warts", ["beauty gel", "tears of beuty"], ["firefly flower"], true)
var fcom = Smpt.new("franyk", ["goblin sagebrush", "amanita mix"], [], false)
#var undead = Smpt
var vamp = Smpt.new("vampd", ["firefly flower", "gunpowder"], [], false)


func generate():
	return [candy,
		pumpkin,
		slug,
		psycho,
		warts,
		fcom,
		vamp]



func give_smpt():
	var popa = generate()
	popa.shuffle()
	illness.append(popa[0])
	illness.append(popa[1])
	illness.append(popa[2])

# Called when the node enters the scene tree for the first time.
func _ready():
	print(get_parent())
	randomize()
	give_smpt()
	print(illness[0].name)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
