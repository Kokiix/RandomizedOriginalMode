extends Node

static func on_generate(chain: ModLoaderHookChain) -> void:
	var randomization_state = load("res://mods-unpacked/koki-PlaylistRandomizer/src/randomize_button/randomize_button_state.gd")
	if randomization_state.is_random_active:
		if Globals.session_playlist.is_empty():
			Globals.session_playlist = Globals.default_playlist.duplicate() 
		Globals.session_playlist.shuffle()
	chain.execute_next()
