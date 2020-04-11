extends Control

onready var player = AudioStreamPlayer.new()
onready var currentLabelIndex = 0
onready var labels = [$FirstNumberGroup/firstNumberLabel, $SecondNumberGroup/secondNumberLabel, $ThirdNumberGroup/thirdhNumberLabel, $FourthNumberGroup/fourthNumberLabel]

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
	loadFirstNumber()
	yield(player, "finished")
	loadSecondNumber()
	yield(player, "finished")
	loadThirdNumber()
	yield(player, "finished")
	loadFourthNumber()

		
	
	
func loadFirstNumber():
	match labels[0].text:
		"1":
			player.stream = load("res://sound/numbers/mil.wav")
		"2":
			player.stream = load("res://sound/numbers/dosmil.wav")
		"3":
			player.stream = load("res://sound/numbers/tresmil.wav")
		"4":
			player.stream = load("res://sound/numbers/cuatromil.wav")
		"5":
			player.stream = load("res://sound/numbers/cincomil.wav")
		"6":
			player.stream = load("res://sound/numbers/seismil.wav")
		"7":
			player.stream = load("res://sound/numbers/sietemil.wav")
		"8":
			player.stream = load("res://sound/numbers/ochomil.wav")
		"9":
			player.stream = load("res://sound/numbers/nuevemil.wav")
	player.play()

func loadThirdNumber():
	match labels[2].text:
		"1":
			player.stream = load("res://sound/numbers/dieci.wav")
		"2":
			player.stream = load("res://sound/numbers/veinti.wav")
		"3":
			player.stream = load("res://sound/numbers/treintai.wav")
		"4":
			player.stream = load("res://sound/numbers/cuarentai.wav")
		"5":
			player.stream = load("res://sound/numbers/cincuentai.wav")
		"6":
			player.stream = load("res://sound/numbers/sesentai.wav")
		"7":
			player.stream = load("res://sound/numbers/setentai.wav")
		"8":
			player.stream = load("res://sound/numbers/ochentai.wav")
		"9":
			player.stream = load("res://sound/numbers/noventai.wav")
	player.play()
	
	
func loadFourthNumber():
	match labels[3].text:
		"1":
			player.stream = load("res://sound/numbers/uno.wav")
		"2":
			player.stream = load("res://sound/numbers/dos.wav")
		"3":
			player.stream = load("res://sound/numbers/tres.wav")
		"4":
			player.stream = load("res://sound/numbers/cuatro.wav")
		"5":
			player.stream = load("res://sound/numbers/cinco.wav")
		"6":
			player.stream = load("res://sound/numbers/seis.wav")
		"7":
			player.stream = load("res://sound/numbers/siete.wav")
		"8":
			player.stream = load("res://sound/numbers/ocho.wav")
		"9":
			player.stream = load("res://sound/numbers/nueve.wav")
	player.play()
	
	
	
func loadSecondNumber():
	match labels[1].text:
		"1":
			player.stream = load("res://sound/numbers/ciento.wav")
		"2":
			player.stream = load("res://sound/numbers/doscientos.wav")
		"3":
			player.stream = load("res://sound/numbers/trescientos.wav")
		"4":
			player.stream = load("res://sound/numbers/cuatrocientos.wav")
		"5":
			player.stream = load("res://sound/numbers/quinientos.wav")
		"6":
			player.stream = load("res://sound/numbers/seiscientos.wav")
		"7":
			player.stream = load("res://sound/numbers/setecientos.wav")
		"8":
			player.stream = load("res://sound/numbers/ochocientos.wav")
		"9":
			player.stream = load("res://sound/numbers/novecientos.wav")
	player.play()
	
	
	




