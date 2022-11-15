extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var loader:ResourceInteractiveLoader

# Called when the node enters the scene tree for the first time.
func _ready():
	$AudioStreamPlayer.playing = true
	loader = ResourceLoader.load_interactive("res://resource/scene/dirtytemple.tscn")
	for btn in $Buttons.get_children():
		btn.connect("mouse_entered",self,"on_mouse_entered")
		btn.connect("pressed",self,"on_pressed",[btn.name])
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	loader.poll()
	
	pass

func on_mouse_entered():
	pass
	
func on_pressed(name):
	if name == "btnstart":
		if loader.get_resource():
			get_tree().change_scene_to(loader.get_resource())
		pass
	if name == "btncontinue":
		pass
	if name == "btnexit":
		yield(get_tree().create_timer(0.2),"timeout")
		get_tree().quit()
	pass
