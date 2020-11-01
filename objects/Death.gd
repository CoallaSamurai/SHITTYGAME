extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	
func _input(event):
   if event is InputEventMouseButton:
	   $fadein.play("fade out")

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_fadein_animation_finished(anim_name):
	get_tree().change_scene("res://objects/Menu.tscn")
