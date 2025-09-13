extends Camera3D


@export var spring_arm: Node3D
@export var lerp_power: float = 1.0


func _process(delta: float) -> void:
	position = lerp(position, spring_arm.global_position, delta * lerp_power)
	print(spring_arm.position,spring_arm.global_position)
