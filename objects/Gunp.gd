extends TextureButton
var par
var nam = "gunpowder"


func _ready():
	par = get_parent()


func _on_Gunpowder_pressed():
	if nam in par.recipe:
		par.recipe.erase(nam)
	else:
		par.recipe.append(nam)

