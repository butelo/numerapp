extends Control

onready var player = AudioStreamPlayer.new()
onready var currentLabelIndex = 3
onready var labels = [$HBoxContainer/firstNumberLabel, $HBoxContainer/secondNumberLabel, $HBoxContainer/thirdhNumberLabel, $HBoxContainer/fourthNumberLabel]
const CorrectSound = preload("res://sound/numbers/CorrectSound.gd")

	
func _ready():
	self.add_child(player)
	
	
#	var config = ConfigFile.new()
#	var err = config.load("user://settings.cfg")
#	if err == OK: # if not, something went wrong with the file loading
#		var screen_width = config.get_value("display", "width", 1024)
#	# Store a variable if and only it hasn't been defined yet
#	if not config.has_section_key("audio", "mute"):
#		config.set_value("audio", "mute", true)
#	# Save the changes by overwriting the previous file
#
#	config.set_value("audio", "mute", true)
#	config.save("user://settings.cfg")
#	print(config.get_value("audio", "mute"))
	

func _on_BackButton_pressed():
	Global.goto_scene("res://main_menu/MainMenu.tscn")

func _on_NumberButtons_number_button_pressed_signal(number, sound):
	writeNumber(sound, number)




func _on_DeleteButton_pressed():
	var labelsLastIndex = labels.size()-1
	var indicator = labelsLastIndex-currentLabelIndex
	
	if(indicator == 0):
		return

	for n in range(indicator-1):
		labels[currentLabelIndex+(indicator-n)].text =labels[currentLabelIndex+(indicator-n)-1].text


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
