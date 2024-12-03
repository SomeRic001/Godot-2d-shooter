extends CanvasLayer

static var image = load("res://Sprites/Backgrounds/Backgrounds/PNGs/Condesed/ship - Copy.png")
func _sethealth(hp):
	#remove all children hbox
	for child in $MarginContainer2/HBoxContainer.get_children():
		child.queue_free()
	#create new children set by hp
	for i in hp:
		var text_rect = TextureRect.new()
		text_rect.texture = image
		text_rect.stretch_mode = TextureRect.STRETCH_KEEP
		$MarginContainer2/HBoxContainer.add_child(text_rect)
