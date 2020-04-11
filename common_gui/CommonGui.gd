extends Control

onready var player = AudioStreamPlayer.new()
onready var currentLabelIndex = 0
onready var labels = [$FirstNumberGroup/firstNumberLabel, $SecondNumberGroup/secondNumberLabel, $ThirdNumberGroup/thirdhNumberLabel, $FourthNumberGroup/fourthNumberLabel]

const CorrectSound = preload("res://sound/numbers/CorrectSound.gd")
	
	
func _ready():
	self.add_child(player)
	

func _on_BackButton_pressed():
	Global.goto_scene("res://main_menu/MainMenu.tscn")

func _on_NumberButtons_number_button_pressed_signal(number, sound):
	writeNumber(sound, number)


func _on_DeleteButton_pressed():
	if(currentLabelIndex > 0):
		currentLabelIndex = currentLabelIndex -1
	labels[currentLabelIndex].text= ""

func writeNumber(sound, text):
	player.stream = load(sound)
	player.play()
	if(currentLabelIndex < labels.size()):
		labels[currentLabelIndex].text= text
		currentLabelIndex = currentLabelIndex +1


func _on_DeleteAllButton_pressed():
	for label in labels:
		label.text = ""
	currentLabelIndex = 0


func _on_PlayButton_pressed():
	readTheNumber()
	
func readTheNumber():
	CorrectSound.loadFirstNumber(labels, player)
	if (player.playing):
		yield(player, "finished")
	CorrectSound.loadSecondNumber(labels, player)
	if (player.playing):
		yield(player, "finished")
	CorrectSound.loadThirdNumber(labels, player)
	if (player.playing):
		yield(player, "finished")
	CorrectSound.loadFourthNumber(labels, player)
