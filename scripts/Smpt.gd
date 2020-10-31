extends Resource

class_name Smpt
var name
var cures
var anticures
var visual


func _init(new_name, new_cure, new_anticure, is_visual):
	self.name = new_name
	self.cures = new_cure
	self.anticures = new_anticure
	self.visual = is_visual
	
	
