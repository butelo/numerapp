extends Control

onready var player = AudioStreamPlayer.new()
onready var currentLabelIndex = 3
onready var labels = [$HBoxContainer/firstNumberLabel, $HBoxContainer/secondNumberLabel, $HBoxContainer/thirdhNumberLabel, $HBoxContainer/fourthNumberLabel]
const CorrectSound = preload("res://sound/numbers/CorrectSound.gd")
	
	
func _ready():
	self.add_child(player)
	

func _on_BackButton_pressed():
	Global.goto_scene("res://main_menu/MainMenu.tscn")

func _on_NumberButtons_number_button_pressed_signal(number, sound):
	writeNumber(sound, number)




func _on_DeleteButton_pressed():
	var labelsLastIndex = labels.size()-1
	var indicator = labelsLastIndex-currentLabelIndex
	
	if(indicator == 0):
		return
	
#	backwards loop
	for n in range(indicator, 1, -1):
		labels[currentLabelIndex+n].text =labels[currentLabelIndex+n-1].text

	labels[currentLabelIndex+1].text =""
	currentLabelIndex = currentLabelIndex +1
	

func writeNumber(sound, text):
	player.stream = load(sound)
	player.play()
	if(currentLabelIndex == -1):
		return
	
	var labelsLastIndex = labels.size()-1
	var indicator = labelsLastIndex-currentLabelIndex

	for n in (indicator):
		labels[currentLabelIndex + n].text= labels[currentLabelIndex + n +1].text
		
	labels[labelsLastIndex].text= text
	currentLabelIndex = currentLabelIndex -1


func _on_DeleteAllButton_pressed():
	for label in labels:
		label.text = ""
	currentLabelIndex = 3


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
