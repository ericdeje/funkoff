extends MarginContainer

signal beat
var input

func _ready():
	input = $InputBar.get_children()

func on_beat():
	emit_signal('beat')

func play():
	for i in input:
		i.play()

func set_speed(note):
	for i in input:
		i.set_speed(note)