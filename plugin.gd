tool
extends Editor


# ******************************************************************************


func _enter_tree():
	var settings = get_editor_interface().get_editor_settings()
	var port = settings.get_setting('network/debug/remote_port')

	# default godot debug port is 6007
	port += 1
	if port > 6107:
		port = 6007

	settings.set_setting('network/debug/remote_port', port)


func _exit_tree():
	pass
