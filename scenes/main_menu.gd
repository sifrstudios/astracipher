extends Control


func _ready() -> void:
	pass  # Replace with function body if needed

func _process(delta: float) -> void:
	pass  # Replace with function body if needed

func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/level_one.tscn")

func _on_options_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/options_menu_1.tscn")  # Change to the scene path directly

func _on_exit_pressed() -> void:
	get_tree().quit()