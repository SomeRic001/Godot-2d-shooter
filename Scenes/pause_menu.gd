extends Control

@onready var lvl = $"../"

func _on_resume_pressed():
	lvl.pauseMenu()

func _on_menu_pressed():
	lvl.pauseMenu()
	get_tree().change_scene_to_file("res://Scenes/MainMenu.tscn")
	

func _on_exit_pressed():
	get_tree().quit()


func _on_restart_pressed():
	lvl.pauseMenu()
	get_tree().change_scene_to_file("res://Scenes/level.tscn")
