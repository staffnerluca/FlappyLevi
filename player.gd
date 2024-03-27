extends CharacterBody2D

const Rope = preload("res://rope.tscn")

const SPEED = 300.0

var first = false

func _physics_process(delta):
	velocity.x = SPEED
	move_and_slide()


func _input(event):
	if event is InputEventMouseButton:
		if(first):
			print("mouse pressed")
			shoot()
		first = true


func shoot():
	var r = Rope.instantiate()
	add_child(r)
	r.transform = $Shooter.transform
	

func _on_rope_titan_hit(rope_position):
	print("rope hitted titan at"+str(rope_position))
