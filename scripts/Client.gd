extends KinematicBody2D


var cured = false
var races = ["wolf_", "ghost_", "kopgob_"]
var race
var socalling = ""
var illness = []
var candy = Smpt.new("suga", ["goblin sagebrush"], [], true)
var pumpkin = Smpt.new("pump", ["beauty gel", "tears of beuty"], [], true)
var slug = Smpt.new("sopl", ["firefly flower", "gunpowder"], ["amanita mix"], true)
var psycho = Smpt.new("hall", ["goblin sagebrush", "amanita mix"], ["tears of beauty"], false)
var warts = Smpt.new("wart", ["beauty gel", "tears of beuty"], ["firefly flower"], true)
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
	randomize()
	races.shuffle()
	race = races[0]
	print(races)
	$Race.play(race)
	$Sopl.play(race)
	$Suga.play(race)
	$Wart.play(race)
	$Zomb.play(race)
	$Pump.play(race)
	give_smpt()
	print(illness[0].name)
	print(illness[1].name)
	print(illness[2].name)
	for ill in illness:
		if ill.name == "sopl":
			$Sopl.visible = true
		if ill.name == "suga":
			$Suga.visible = true
		if ill.name == "wart":
			$Wart.visible = true
		if ill.name == "zomb":
			$Zomb.visible = true
		if ill.name == "pump":
			$Pump.visible = true



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
