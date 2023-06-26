extends MeshInstance

onready var raycast = $Camera/Raycast

onready var b_ecal = preload("res://bulletdecal.tscn")

func _ready():
	pass 

func _process(delta):
	if Input.is_action_just_pressed("fire"):
		var b = b_decal.instance()
		raycast.get_collider().add_child(b)
		b.global_transform.origin = raycast.get_collision_point()
		b.look_at(raycast.get_collision_point() + raycast.get_collision_normal(), Vector3.UP)
