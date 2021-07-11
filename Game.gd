extends Control

var max_scroll_leangth = 0

const InputResponse = preload("res://InputResponse.tscn")
onready var history_rows = $Background/MarginContainer/Rows/GameInfo/Scroll/HistoryRows
onready var scroll = $Background/MarginContainer/Rows/GameInfo/Scroll
onready var scrollbar = scroll.get_v_scrollbar()


func _ready() -> void:
	scrollbar.connect("changed", self, "handle_scrollbar_changed")
	max_scroll_leangth = scrollbar.max_value


func handle_scrollbar_changed():
	if max_scroll_leangth != scrollbar.max_value:
		max_scroll_leangth = scrollbar.max_value
		scroll.scroll_vertical = max_scroll_leangth
		


func _on_Input_text_entered(new_text: String) -> void:
	var input_response = InputResponse.instance()
	if new_text == "hello":
		input_response.set_text(new_text, "wasup mate")
	else:
		input_response.set_text(new_text, "fuck u mate")
	
	
	history_rows.add_child(input_response)
