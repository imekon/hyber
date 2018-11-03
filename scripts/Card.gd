extends Sprite

onready var cost_label = $CostLabel
onready var hit_label = $HitLabel
onready var defense_label = $DefenseLabel
onready var symbol = $Symbol

export var is_rock : bool = false
export var is_paper : bool = false
export var is_scissors : bool = false
export var is_special : bool = false
export var is_player : bool = false
export var is_enemy : bool = false

func set_details(cost : int, hit : int, defense : int, visibility : Color):
	cost_label.text = str(cost)
	hit_label.text = str(hit)
	defense_label.text = str(defense)
	symbol.modulate = visibility