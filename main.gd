class_name Main
extends Node

var deck: Deck = load("res://deck.tscn").instantiate()
var cards = []

# Called when the node enters the scene tree for the first time.
func _ready():
	add_child(deck)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	var newCard = deck.deal()
	cards.append(newCard)
	add_child(newCard)
	newCard.set_position(Vector2(120 * (cards.size() - 1), 0))


func _on_shuffle_button_pressed():
	deck.shuffle()
