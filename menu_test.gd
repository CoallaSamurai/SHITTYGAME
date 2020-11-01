extends Control
var scene_to_change

func _ready():
	$ColorRect/AnimationPlayer.play("fade_in")



func _on_Game_bla_pressed():
	$ColorRect2.visible=true
	$ColorRect2/fade_out.play("fade_out_menu")
	scene_to_change = "res://Main.tscn"
	
func _on_Game_ne_pressed():
	$ColorRect2.visible=true
	$ColorRect2/fade_out.play("fade_out_menu")
	scene_to_change = "res://objects/Instr.tscn"

func _on_AnimationPlayer_animation_finished(anim_name):
	$ColorRect.visible=false


func _on_fade_out_animation_finished(anim_name):
	get_tree().change_scene(scene_to_change)
	scene_to_change=""


func _on_Quit_pressed():
	get_tree().quit()
