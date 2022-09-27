tool
extends EditorPlugin

func _enter_tree():
	add_custom_type('FrameTimer', 'Node', preload('frame_timer.gd'), preload('assets/frame_timer_logo_node.png'))

func _exit_tree():
	remove_custom_type('FrameTimer')
