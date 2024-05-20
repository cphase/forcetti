extends Node2D

enum {SUIT_SPADES = 0, SUIT_HEARTS = 1, SUIT_DIAMONDS = 2, SUIT_CLUBS = 3}

@export var rank = 1
@export var suit: Enums.Suits = Enums.Suits.SPADES


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	get_node("CardPanel/CardLabel").text = str(rank, " ", suit)
