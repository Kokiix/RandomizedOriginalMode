extends "res://scenes/lobby/scripts/lobby_scene.gd"

func _ready() -> void:
	var button_scene: PackedScene = load("res://mods-unpacked/koki-PlaylistRandomizer/src/randomize_button/randomize_button.tscn")
	var random_button: CheckButton = button_scene.instantiate()
	var scene_root := get_tree().current_scene
	scene_root.find_child("PresetsButton").add_sibling(random_button)
	
	var button_class: ButtonClass = random_button.get_child(0)
	button_class.speaker_press = scene_root.find_child("speaker_press")
	button_class.speaker_hover = scene_root.find_child("speaker_hover")
	
	var randomization_state = load("res://mods-unpacked/koki-PlaylistRandomizer/src/randomize_button/randomize_button_state.gd")
	random_button.connect("pressed", randomization_state.toggle_active)
	
	super()
