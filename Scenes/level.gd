extends Node2D
#load scene
var enemy_scene: PackedScene = load("res://Scenes/meteor.tscn")
var laser_scene: PackedScene = load("res://Scenes/laser.tscn")
var health: int = 5


func _on_enemy_timer_timeout():
	if get_tree().paused:
		return
	#create instance
	var enemy = enemy_scene.instantiate()
	
	#attach nodedddd to scene tree
	$Enemies.add_child(enemy)
	 # connect the signal
	enemy.connect('collision',_on_enemy_collision)

func _on_enemy_collision():
	health-=1
	Input.start_joy_vibration(0,0.5,1,0.3)
	get_tree().call_group("UI","_sethealth",health)
	if health<=0:
		get_tree().change_scene_to_file("res://Scenes/game_over.tscn")
	


func _ready():
	get_tree().call_group("UI","_sethealth",health)
	get_tree().paused = false
	 
func _on_player_laser(pos):
	var laser = laser_scene.instantiate()
	$Laser.add_child(laser)
	laser.position = pos
	
