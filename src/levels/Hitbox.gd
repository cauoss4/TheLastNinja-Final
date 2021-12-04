extends Area


signal hit

func _on_Hitbox_area_entered(Hurtbox):
	emit_signal("hit")
	
	Hurtbox.emit_signal("hurt")
