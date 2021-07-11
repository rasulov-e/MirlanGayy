extends VBoxContainer

func set_text(input: String, response: String):
	$InputHisoty.text = " > " + input
	$ResponseHistory.text = response
