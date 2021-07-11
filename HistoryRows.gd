extends VBoxContainer

extends InputResponse
func _on_Input_text_entered(new_text: String) -> void:
	add_child(InputResponse, true)
