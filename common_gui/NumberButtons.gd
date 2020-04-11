extends Control

signal number_button_pressed_signal

var buttonSounds = ["res://sound/numbers/cero.wav",
"res://sound/numbers/uno.wav",
"res://sound/numbers/dos.wav",
"res://sound/numbers/tres.wav",
"res://sound/numbers/cuatro.wav",
"res://sound/numbers/cinco.wav",
"res://sound/numbers/seis.wav",
"res://sound/numbers/siete.wav",
"res://sound/numbers/ocho.wav",
"res://sound/numbers/nueve.wav"]


func _ready():
	for button in self.get_children():
		button.connect("pressed", self, "button_pressed", [button])
		

func getSound(text):
	return buttonSounds[int(text)]
	
func button_pressed(button):
	emit_signal("number_button_pressed_signal", button.text, getSound(button.text))
