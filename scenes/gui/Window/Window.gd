extends Node2D

func _ready():
	var default = settings.default_window_size
	scale = OS.window_size / default
	settings.connect("window_size_changed", self, "_on_window_size_changed")

func _on_window_size_changed(prev, now):
	var default = settings.default_window_size
	scale = now / default
