extends TextureButton
var par
var nam = "goblin sagebrush"


func _ready():
	par = get_parent()


func _on_Mushroom_pressed():
	if nam in par.recipe:
		par.recipe.erase(nam)
		toggle_mode = false
	else:
		par.recipe.append(nam)
		toggle_mode = true
