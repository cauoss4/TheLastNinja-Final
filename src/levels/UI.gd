extends Control 



func show_menu():
	show()


func hide_menu() :
	hide()
	

func _on_Resume_pressed():
	hide_menu()
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

func _on_Quit_pressed():
	hide_menu()
	get_tree().quit()
	


func _on_Exit_visibility_changed():
	get_tree().paused = visible


