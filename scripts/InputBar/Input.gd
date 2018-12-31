extends TextureRect

signal beat
var pulse

func _ready():
	pulse = $Center/Pulse
	pulse.play('pulse')

func _on_Pulse_animation_finished():
	emit_signal('beat')

func set_speed(note):
	var frames = pulse.frames.get_frame_count('pulse')
	var speed = frames/note;
	pulse.frames.set_animation_speed('pulse', speed)

func play():
	$Center/Pulse.play()