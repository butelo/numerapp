extends Control


func _on_Button_pressed():
	Global.goto_scene("res://say_the_number/SayTheNumber.tscn")


func _on_Button2_pressed():
	Global.goto_scene("res://write_the_number/WriteTheNumber.tscn")



func _on_Button3_pressed():
	Global.goto_scene("res://settings/Settings.tscn")
