extends RigidBody2D
class_name Block

@export var settle_linear_threshold := 8.0
@export var settle_angular_threshold := 0.2
@export var settle_time := 0.25  # how long it must be stable before freezing

var _stable_timer := 0.0
var _has_settled := false

func _physics_process(delta):
	if _has_settled:
		return

	# If block is moving, reset the timer
	if linear_velocity.length() > settle_linear_threshold or abs(angular_velocity) > settle_angular_threshold:
		_stable_timer = 0.0
		return

	_stable_timer += delta
	if _stable_timer >= settle_time:
		freeze = true
		sleeping = true
		_has_settled = true
