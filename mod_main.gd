extends Node
class_name PlaylistRandomizerMod

const MOD_DIR := "koki-PlaylistRandomizer"

static var mod_dir_path := ""

static func Log(msg: Variant, prefix: String = "DEBUG") -> void:
	print_rich("[color=purple]%s RandomizedClassicMode: %s[/color]" % [prefix, msg])

func _init() -> void:
	mod_dir_path = ModLoaderMod.get_unpacked_dir().path_join(MOD_DIR) + "/src"
	
	ModLoaderMod.install_script_extension(mod_dir_path + "/randomize_button/inject_button.gd")
	
	ModLoaderMod.add_hook(GeneratePlaylistHook.on_generate, "res://scripts/scenes/game/game.gd", "generate_session_playlist")
