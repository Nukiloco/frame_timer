extends GutTest

func test_frame_timer():
	var godot_timer = Timer.new()
	godot_timer.wait_time = 2
	godot_timer.connect('timeout', self, '_on_Timer_timeout')
	get_node("/root").add_child(godot_timer)

	var frame_timer = FrameTimer.new()
	frame_timer.wait_time = 2
	frame_timer.connect('timeout', self, '_on_FrameTimer_timeout')
	get_node("/root").add_child(frame_timer)

	godot_timer.start()
	frame_timer.start()

	# Delay for around 4 seconds
	OS.delay_msec(4 * 1000)

# This will print "Yummy! I have ate 1 cheeseburger!"
func _on_Timer_timeout():
	print('Yummy! I have ate 1 cheeseburger!')

# This will print "Yummy! I have ate 2 cheeseburgers!"
func _on_FrameTimer_timeout(amount):
	print('Yummy! I have ate %s cheeseburgers!' % [amount])