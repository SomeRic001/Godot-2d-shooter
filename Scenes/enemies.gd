extends Area2D

var rand_diry:float
var speed :int
var rot_speed:float
var direction_x:float
signal collision
func _ready():
	var rng:=RandomNumberGenerator.new()
	#texture 
	var path:String = "res://Sprites/Enemies/"+str(rng.randi_range(1,3))+".png"
	$Sprite2D.texture = load(path)
	#start position
	var width = get_viewport().get_visible_rect().size[0]
	var rand_x = rng.randi_range(0,width)
	var rand_y=rng.randi_range(-150,-50)
	position+=Vector2(rand_x,rand_y)
	speed = rng.randi_range(100,200)
	direction_x =rng.randf_range(-1,1)
	rot_speed = rng.randi_range(40,70)
	
func _process(delta):
	
	position+= Vector2(direction_x,1)*speed*delta
	rotation_degrees += rot_speed *delta
	
func _on_body_entered(_body):
	collision.emit() 


func _on_area_entered(area):
	Global.score+=1
	area.queue_free()
	queue_free()
	
