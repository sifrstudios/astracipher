extends Node2D

@onready var point_light: PointLight2D = $Player/PointLight2D
@onready var animation_player: AnimationPlayer = $Player/PointLight2D/AnimationPlayer
@onready var monologue_player: AnimationPlayer = $Monologue/MonologuePlayer
@onready var music: AudioStreamPlayer = $Music
func _ready() -> void:
	music.play()

func _process(delta: float) -> void:
	animation_player.play("flicker")

func _on_one_body_entered(body: Node2D) -> void:
	print("one")
	monologue_player.play("one")
	await monologue_player.animation_finished

func _on_two_body_entered(body: Node2D) -> void:
	print("two")
	monologue_player.play("two")
	await monologue_player.animation_finished


func _on_three_body_entered(body: Node2D) -> void:
	print("three")
	monologue_player.play("three")
	await monologue_player.animation_finished


func _on_four_body_entered(body: Node2D) -> void:
	print("four")
	monologue_player.play("four")
	await monologue_player.animation_finished


func _on_five_body_entered(body: Node2D) -> void:
	print("five")
	monologue_player.play("five")
	await monologue_player.animation_finished
	print("transition")
	Transition.transition()
	await Transition.on_transition_finished
	get_tree().change_scene_to_file("res://scenes/maze.tscn")
