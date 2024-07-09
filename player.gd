class_name Player

extends Node2D

var hand;


# Called when the node enters the scene tree for the first time.
func _ready():
	hand = get_node("Hand")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func addCard(card):
	return hand.addCard(card)
