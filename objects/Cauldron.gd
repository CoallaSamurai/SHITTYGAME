extends TextureButton
var par


func _ready():
	par = get_parent()


func _on_Cauld_button_pressed():
	par.pot_ready = true
