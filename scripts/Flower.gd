extends TextureButton
var par
var nam = "firefly flower"


func _ready():
	par = get_parent()


func _on_Flower_pressed():
	if nam in par.recipe:
		par.recipe.erase(nam)
	else:
		par.recipe.append(nam)
