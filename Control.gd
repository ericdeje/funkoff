extends CanvasLayer

var p1
var p2
var p3
var p4
var accum = 0

func _ready():
	$BPM.start()
	p1 = $Input1/Pulse
	p2 = $Input2/Pulse
	p3 = $Input3/Pulse
	p4 = $Input4/Pulse
	$BPM.wait_time = 60/113

func up_beat():
	p1.show()
	p1.play()
	p2.show()
	p2.play()
	p3.show()
	p3.play()
	p4.show()
	p4.play()

func down_beat():
	$BPM.start()
	p1.stop()
	p1.hide()
	p2.stop()
	p2.hide()
	p3.stop()
	p3.hide()
	p4.stop()
	p4.hide()

func _process(delta):
	pass