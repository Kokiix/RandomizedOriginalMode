extends Node

const MOD_DIR := "koki-RandomizedClassicMode"
const LOG_NAME := "koki-RandomizedClassicMode:Main"

var mod_dir_path := ""

func _init() -> void:
	ModLoaderLog.info("Init", LOG_NAME)
	mod_dir_path = ModLoaderMod.get_unpacked_dir().path_join(MOD_DIR)
