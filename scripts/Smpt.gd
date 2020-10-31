extends Resource

class_name Smpt

export(String) var name = ""
export(String) var cures = []
export(String) var anticures = []
export(String) var visual = false


func new(new_name, new_cure, new_anticure, is_visual):
	name = new_name
	cures = new_cure
	anticures = new_anticure
	visual = is_visual
	
