extends Node
class_name RandomizationState

static var is_random_active := false

static func toggle_active() -> void:
	is_random_active = !is_random_active
