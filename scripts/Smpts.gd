extends Resource

class_name Smpts


var candy = Smpt
var pumpkin = Smpt
var slug = Smpt
var psycho = Smpt
var warts = Smpt
var fcom = Smpt
#var undead = Smpt
var vamp = Smpt


func generate():
	return [
		candy.new("candy overdose", ["goblin sagebrush"], [], true),
		pumpkin.new("pumpkinhead syndrome", ["beauty gel", "tears of beuty"], 
		[], true),
		slug.new("slug nose rheum", ["firefly flower", "gunpowder"], 
		["amanita mix"], true),
		psycho.new("halloween psychosis", ["goblin sagebrush", "amanita mix"],
		["tears of beauty"], false),
		warts.new("witch warts", ["beauty gel", "tears of beuty"],
		["firefly flower"], true),
		fcom.new("franyk", ["goblin sagebrush", "amanita mix"],
		[], false),
		vamp.new("vampd", ["firefly flower", "gunpowder"], 
		[], false)
	]
