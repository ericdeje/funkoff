extends CanvasLayer
	
export (float) var bpm = 120.00

onready var inputs = $InputBar
onready var bpmtimer = $BPM

func _ready():
	reset_bpm()

func up_beat():
	inputs.play()

func down_beat():
	bpmtimer.start()

func reset_bpm():
	var eighthnote = stepify(float(60.00/bpm), 0.01)
	bpmtimer.wait_time = eighthnote
	inputs.set_speed(eighthnote)
	bpmtimer.start()