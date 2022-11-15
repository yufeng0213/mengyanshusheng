extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimationPlayer.play("start_animation")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_AnimationPlayer_animation_finished(anim_name):
	if anim_name == "start_animation":
		$Sprite6.hide()
		$Sprite5.hide()
		$Sprite7.hide()
		$RichTextLabel.hide()
		$Sprite3.hide()
		$Sprite4.hide()
		$Sprite8.hide()
		$Sprite.show()
		
	pass # Replace with function body.
