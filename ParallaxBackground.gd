extends ParallaxBackground

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var scrolling_speed = 300
	scroll_offset.x -= delta * scrolling_speed
