extends Node

enum { ENERGY, SHIP }

class CardData:
	var _type : int
	var _index : int
	var _cost : int
	var _hit : int
	var _health : int
	
	func _init(type: int, index: int, cost : int, hit : int, health : int):
		self._type = type
		self._index = index
		self._cost = cost
		self._hit = hit
		self._health = health
		
static func CreateCardPack():
	var pack = []
	
	# Twelve energy cards
	for i in range(8):
		var card = CardData.new(ENERGY, i, 0, 0, 0)
		pack.append(card)
		
	# Four level 1 attack ships
	for i in range(8):
		var card = CardData.new(SHIP, i, 1, 1, 2)
		pack.append(card)
		
	pack.shuffle()
		
	return pack