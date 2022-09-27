![logo](./addons/frame_timer/assets/frame_timer_logo_asset_lib.png)

# FrameTimer
The advanced timer replacement for Godot!

## Install and enable
To install FrameTimer, download the addon on the asset lib.
Then whenever you want to use FrameTimer just drag and drop the FrameTimer scene onto your scene.

## Features
Almost the same as Godot's built in Timer but also adding in:
* Ratio property (0 to 1) (start to finish), useful for setting position based on time!
* Timeouts with precision! Meaning you can use lower time values! When using lower time values, the amount
of wait time lost is counted up into a variable called ``amount`` in the ``timeout`` callback.

## Example
```py
func _ready():
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
```

## FAQ
### What is the license?
MIT License. It is located in LICENSE.md

### What is even the point of this add-on?
The FrameTimer aims to be more accurate and better timer than Godot's default timer.
In Godot's timer, the amount of time lost between frames is not counted at all.
FrameTimer makes up for this by adding in an ``amount`` variable that keeps track of that time lost.

### I don't like FEATURE or how the add-on works!
Feel free to leave feedback in an issue so I can make improvements to this tool!

### Can you work or improve on FEATURE on this tool?
I would love to improve this tool as much as possible, however I work on this on my spare time so I can't spend much time on it.

You can however help me out in many ways including:
* Finding issues and reporting them!
* Making new features and sending pull requests!
* Helping out with the documentation!
* Advertising the tool! (if you really want to?)

### Donations
You can help me out by donating so I can spend more time improving it!

TODO setup donations