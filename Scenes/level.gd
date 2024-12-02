extends Node2D
#load scene
var enemy_scene: PackedScene = load("res://Scenes/meteor.tscn")
var laser_scene: PackedScene = load("res://Scenes/laser.tscn")

func _on_enemy_timer_timeout():
	#create instance
	var enemy = enemy_scene.instantiate()
	
	#attach nodedddd to scene tree
	$Enemies.add_child(enemy)

func _ready():
	pass
	
func _on_player_laser(pos):
	var laser = laser_scene.instantiate()
	$Laser.add_child(laser)
	laser.position = pos 
	
	
