extends Node

class ActorData:
	var _name : String
	var _hits: int
	var _health: int
	var _energy: int
	var _pack
	
	func _init(packOfCards, name : String, health: int):
		self._name = name
		self._hits = 0
		self._health = health
		self._energy = 0
		self._pack = packOfCards.CreateCardPack()
		
static func CreateActor(packOfCards, name: String, health: int):
	var actor = ActorData.new(packOfCards, name, health)
	return actor
