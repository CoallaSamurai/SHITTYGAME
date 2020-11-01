extends Control

var current_page = 0
var page_amount=10
var page_parth
var page1 = preload("res://textures/ui/book/ui_qeust_smol.png")
var page2 = preload("res://textures/ui/book/ui_qeust_smol.png")
var page3 = preload("res://textures/ui/book/ui_qeust_smol.png")
var page4 = preload("res://textures/ui/book/ui_qeust_smol.png")
var page5 = preload("res://textures/ui/book/ui_qeust_smol.png")
onready var button_left=$left
onready var Pages=$Pages
onready var button_right=$right

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if current_page==0:
		button_left.disabled=true
	elif current_page==page_amount:
		button_right.disabled=true
	else:
		button_left.disabled=false
		button_right.disabled=false


func _on_right_pressed():
	current_page+=1
	Pages.set_texture(page1)


func _on_left_pressed():
	current_page-=1
