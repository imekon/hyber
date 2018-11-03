extends PanelContainer

onready var text = $Panel/RichTextLabel

func _ready():
	var version = Engine.get_version_info()
	text.add_text("Made with Godot version " + version["string"])

func on_start_pressed():
	get_tree().change_scene("res://scenes/Main.tscn")

func on_help_pressed():
	get_tree().change_scene("res://scenes/help.tscn")

func on_credits_pressed():
	get_tree().change_scene("res://scenes/Credits.tscn")
