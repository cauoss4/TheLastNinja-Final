extends Button
export var reference_path = ""

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	connect("mouse_entered",self,"_on_Button_mouse_enterd")
	connect("pressed",self,"_on_Button_Pressed")
func _on_Button_mouse_entered():
	grab_focus()

func _on_Button_Pressed():
		if(reference_path!= ""):
			get_tree().change_scene(reference_path)	
		
		else:
			get_tree().quit()	
