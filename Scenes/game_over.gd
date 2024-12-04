extends CanvasLayer

@export var level_scn: PackedScene  
# Called when the node enters the scene tree for the first time.
func _ready():
	$score/Label.text = $score/Label.text + str(Global.score)
	Global.score = 0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("Shoot"):
		get_tree().change_scene_to_packed(level_scn)
