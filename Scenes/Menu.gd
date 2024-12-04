extends CanvasLayer



@export var level_scn: PackedScene  

func _on_play_pressed():
	get_tree().change_scene_to_packed(level_scn)
	


func _on_exit_pressed():
	get_tree().quit()
