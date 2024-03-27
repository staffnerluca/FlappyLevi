extends Area2D

var speed = 200

signal rope_titan_hit(hit_position)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position += transform.x * delta * speed


func _on_body_entered(body):
	print("rope Speed = " + str(speed))
	if body.is_in_group("Enemy"):
		print("hit titan")
		speed = -100
		print(speed)
	#emit_signal("rope_titan_hit", $RopePosition.global_position)
