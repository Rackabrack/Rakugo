extends Range

export(String) var var_name = "some_var"

export(float) var default = 0.5 setget set_default, get_default


func set_default(value):
	default = value
	value = default

func get_default():
	return default

func _ready():
	if var_name in Ren.variables:
		value = float(Ren.get_value(var_name))
	
	else:
		Ren.define(var_name, default)

func on_value_changed(new_value):
	value = new_value


