extends Node

var standard_cards = {
	name: "Standard",
	pack = [ 
		{ name = "planet1", cost = 1 },
		{ name = "planet2", cost = 1 },
		{ name = "planet3", cost = 1 },
		{ name = "planet4", cost = 1 },
		{ name = "planet5", cost = 1 },
		{ name = "planet6", cost = 1 },
		{ name = "planet7", cost = 1 },
		{ name = "planet8", cost = 1 },
		
		{ name = "ship1", cost = 1, hit = 1, health = 1 },
		{ name = "ship2", cost = 2, hit = 2, health = 1 },
		{ name = "ship3", cost = 3, hit = 2, health = 2 },
		{ name = "ship4", cost = 4, hit = 3, health = 2 },
		{ name = "ship5", cost = 5, hit = 3, health = 4 },
		{ name = "ship6", cost = 6, hit = 4, health = 4 },
		{ name = "ship7", cost = 7, hit = 5, health = 6 },
		{ name = "ship8", cost = 8, hit = 6, health = 8 },
	]
}

var card_set = [
	standard_cards
	]
	
func get_card_set(index: int):
	return card_set[index]
