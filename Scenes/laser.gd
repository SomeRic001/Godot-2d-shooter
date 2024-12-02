extends Area2D

var speed = 500
func _ready():
	$Sprite2D.scale = Vector2(0,0)
	var tween = create_tween()
	tween.tween_property($Sprite2D, 'scale',Vector2(2,2),0.3)
	
func _process(delta):
	position.y -= speed*delta
