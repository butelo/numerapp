class_name CorrectSound


static func loadFirstNumber(labels, player):
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
		_:
			player.stop()
			return
	player.play()


static func loadSecondNumber(labels, player):
	match labels[1].text:
		"1":
			if(labels[2].text.nocasecmp_to("0")==0 && labels[3].text.nocasecmp_to("0")==0):
				player.stream = load("res://sound/numbers/cien.wav")
			else:
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
		_:
			player.stop()
			return
	player.play()
	

static func loadThirdNumber(labels, player):
	match labels[2].text:
		"1":
			match labels[3].text:
				"0":
					player.stream = load("res://sound/numbers/diez.wav")
				"1":
					player.stream = load("res://sound/numbers/once.wav")
				"2":
					player.stream = load("res://sound/numbers/doce.wav")
				"3":
					player.stream = load("res://sound/numbers/trece.wav")
				"4":
					player.stream = load("res://sound/numbers/catorce.wav")
				"5":
					player.stream = load("res://sound/numbers/quince.wav")
				_:
					player.stream = load("res://sound/numbers/dieci.wav")
		"2":
			match labels[3].text:
				"0":
					player.stream = load("res://sound/numbers/veinte.wav")
				_:
					player.stream = load("res://sound/numbers/veinti.wav")
		"3":
			match labels[3].text:
				"0":
					player.stream = load("res://sound/numbers/treinta.wav")
				_:
					player.stream = load("res://sound/numbers/treintai.wav")
		"4":
			match labels[3].text:
				"0":
					player.stream = load("res://sound/numbers/cuarenta.wav")
				_:
					player.stream = load("res://sound/numbers/cuarentai.wav")
		"5":
			match labels[3].text:
				"0":
					player.stream = load("res://sound/numbers/cincuenta.wav")
				_:
					player.stream = load("res://sound/numbers/cincuentai.wav")
		"6":
			match labels[3].text:
				"0":
					player.stream = load("res://sound/numbers/sesenta.wav")
				_:
					player.stream = load("res://sound/numbers/sesentai.wav")
		"7":
			match labels[3].text:
				"0":
					player.stream = load("res://sound/numbers/setenta.wav")
				_:
					player.stream = load("res://sound/numbers/setentai.wav")
		"8":
			match labels[3].text:
				"0":
					player.stream = load("res://sound/numbers/ochenta.wav")
				_:
					player.stream = load("res://sound/numbers/ochentai.wav")
		"9":
			match labels[3].text:
				"0":
					player.stream = load("res://sound/numbers/noventa.wav")
				_:
					player.stream = load("res://sound/numbers/noventai.wav")
		_:
			player.stop()
			return
	player.play()



static func loadFourthNumber(labels, player):
	match labels[3].text:
		"1":
			match labels[2].text:
				"1":
					player.stop()
					return
				_:	
					player.stream = load("res://sound/numbers/uno.wav")
		"2":
			match labels[2].text:
				"1":
					player.stop()
					return
				_:	
					player.stream = load("res://sound/numbers/dos.wav")
		"3":
			match labels[2].text:
				"1":
					player.stop()
					return
				_:	
					player.stream = load("res://sound/numbers/tres.wav")
		"4":
			match labels[2].text:
				"1":
					player.stop()
					return
				_:	
					player.stream = load("res://sound/numbers/cuatro.wav")
		"5":
			match labels[2].text:
				"1":
					player.stop()
					return
				_:	
					player.stream = load("res://sound/numbers/cinco.wav")
		"6":
			player.stream = load("res://sound/numbers/seis.wav")
		"7":
			player.stream = load("res://sound/numbers/siete.wav")
		"8":
			player.stream = load("res://sound/numbers/ocho.wav")
		"9":
			player.stream = load("res://sound/numbers/nueve.wav")
		_:
			player.stop()
			return
	player.play()


