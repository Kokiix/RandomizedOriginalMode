extends Node
class_name GeneratePlaylistHook

static func on_generate(chain: ModLoaderHookChain) -> void:
	if RandomizationState.is_random_active:
		if Globals.session_playlist.is_empty():
			Globals.session_playlist = Globals.default_playlist.duplicate() 
		Globals.session_playlist.shuffle()
	chain.execute_next()
