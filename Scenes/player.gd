extends CharacterBody2D
@export var speed = 350
var can_shoot : bool = true
signal laser(pos)

# Called when the node enters the scene tree for the first time.
func _ready(): 
	position = Vector2(628,600)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	scale = Vector2(3,3)
	var direction = Input.get_vector("Left","Right","up","down")
	velocity = direction *speed
	move_and_slide()
	 
	#shoot input
	if Input.is_action_just_pressed("Shoot") and can_shoot:
		laser.emit($LaserStartingPosition.global_position)
		can_shoot = false
		$LaserTimer.start()
		$GameMusic.play()


func _on_laser_timer_timeout():
	can_shoot = true
