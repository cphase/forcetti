class_name Table

extends Node2D

var players = []
var deck


# Called when the node enters the scene tree for the first time.
func _ready():
	players.append(get_node("Player"))
	deck = get_node("Deck")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func setDeck(d):
	deck = d

func _on_deal_button_pressed():
	var newCard = deck.deal()
	if !players[0].addCard(newCard): deck.returnCard(newCard);


func _on_shuffle_button_pressed():
	deck.shuffle()
