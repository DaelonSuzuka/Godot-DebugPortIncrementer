tool
extends EditorPlugin


# ******************************************************************************


const default_port = 6007
const max_port = default_port + 100


func _enter_tree():
	var settings = get_editor_interface().get_editor_settings()
	var port = settings.get_setting('network/debug/remote_port')

	port += 1
	if port > max_port:
		port = default_port

	settings.set_setting('network/debug/remote_port', port)


func _exit_tree():
	pass
