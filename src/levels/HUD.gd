extends CanvasLayer
onready var pause_menu = $Exit



func _on_MenuButton_pressed():
	pause_menu.show_menu()
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
