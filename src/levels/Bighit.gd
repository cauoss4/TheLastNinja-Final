extends KinematicBody
export var max_speed = 10
export var acceleration = 10 / 0.2
var velocity := Vector3.ZERO
enum Direction { DOWN = -1, UP = 1 }

export(Direction) var direction = Direction.DOWN


func _physics_process(delta):
	var over  = velocity.y > 5
	var snap = Vector3.DOWN * 16
	velocity = move_and_slide_with_snap(velocity, snap, Vector3.UP)
	
#	if is_on_wall:
#		direction *= -1
func _on_Area_area_entered(area):
	direction *= -1


func _process(delta):

	velocity.y = move_toward(velocity.y, max_speed * direction, acceleration * delta)
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass









	






