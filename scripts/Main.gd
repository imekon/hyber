extends Node2D

onready var player_card = $Player/Card
onready var enemy_card = $Enemy/Card

onready var card_back_resource = load("res://scenes/CardBack.tscn")

onready var p1_card_resource = load("res://scenes/P1Card.tscn")
onready var p2_card_resource = load("res://scenes/P2Card.tscn")
onready var p3_card_resource = load("res://scenes/P3Card.tscn")

onready var p5_card_resource = load("res://scenes/P5Card.tscn")
onready var p6_card_resource = load("res://scenes/P6Card.tscn")
onready var p7_card_resource = load("res://scenes/P7Card.tscn")
onready var p8_card_resource = load("res://scenes/P8Card.tscn")
onready var p9_card_resource = load("res://scenes/P9Card.tscn")

onready var ship1_card_resource = load("res://scenes/ShipCard.tscn")
onready var ship2_card_resource = load("res://scenes/Ship2Card.tscn")

onready var hybridiser = $Hybridiser

const ENEMY_LINE = 140
const BATTLE_LINE = 384
const PLAYER_LINE = 620
const CARD_FIRST = 100
const CARD_SPACING = 120

func _ready():
	player_card.set_details(0, 0, 25)
	enemy_card.set_details(0, 0, 25)
	
	var card = p1_card_resource.instance()
	add_child(card)
	card.position = Vector2(CARD_FIRST, ENEMY_LINE)
	card.scale = Vector2(0.5, 0.5)
	card.set_details(1, 1, 1, Color(0.5, 0.5, 0.5))

	card = p1_card_resource.instance()
	add_child(card)
	card.position = Vector2(CARD_FIRST, BATTLE_LINE)
	card.scale = Vector2(0.5, 0.5)
	card.set_details(1, 1, 1, Color(0.5, 0.5, 0.5))

	card = p1_card_resource.instance()
	add_child(card)
	card.position = Vector2(CARD_FIRST, PLAYER_LINE)
	card.scale = Vector2(0.5, 0.5)
	card.set_details(1, 1, 1)

	card = p6_card_resource.instance()
	add_child(card)
	card.position = Vector2(CARD_FIRST + CARD_SPACING, PLAYER_LINE)
	card.scale = Vector2(0.5, 0.5)
	card.set_details(2, 1, 2)

	card = ship1_card_resource.instance()
	add_child(card)
	card.position = Vector2(CARD_FIRST + CARD_SPACING * 2, PLAYER_LINE)
	card.scale = Vector2(0.5, 0.5)
	card.set_details(3, 2, 4)

	card = ship2_card_resource.instance()
	add_child(card)
	card.position = Vector2(CARD_FIRST + CARD_SPACING * 3, PLAYER_LINE)
	card.scale = Vector2(0.5, 0.5)
	card.set_details(2, 3, 4)

func _process(delta):
	var angle = 0.3 * delta
	hybridiser.rotate(angle)