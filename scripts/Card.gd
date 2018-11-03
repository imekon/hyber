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

func set_details(cost : int, hit : int, defense : int, visibility : Color = Color(1,1,1)):
	if cost > 0:
		cost_label.text = str(cost)
	else:
		cost_label.visible = false
	
	if hit >= 0:
		hit_label.text = str(hit)
	else:
		hit_label.visible = false

	if defense >= 0:
		defense_label.text = str(defense)
	else:
		defense_label.visible = false
		
	symbol.modulate = visibility