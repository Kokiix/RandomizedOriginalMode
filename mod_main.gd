extends Node

const MOD_DIR := "koki-RandomizedClassicMode"

var mod_dir_path := ""

static func Log(msg: Variant, prefix: String = "DEBUG") -> void:
	print_rich("[color=purple]%s RandomizedClassicMode: %s[/color]" % [prefix, msg])

func _init() -> void:
	mod_dir_path = ModLoaderMod.get_unpacked_dir().path_join(MOD_DIR)
	install_script_hooks()
	Log("sldkfj")
	
func install_script_hooks() -> void:
	#ModLoaderMod.add_hook(randomize_default_playlist, "res://scripts/scenes/game/game.gd", "generate_session_playlist")
	pass
