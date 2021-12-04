extends CollisionShape
var G = 9.8
		
func drop(delta):		
	var fall = Vector3.ZERO
	fall.y += G * delta
	
	
		
