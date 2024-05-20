extends Node

var cards = []

# Called when the node enters the scene tree for the first time.
func _ready():
	fillDefault()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func fillDefault():
	for rank in range(1,13):
		for suit in range(0,5):
			var card = load("res://card.tscn").instantiate()
			card.suit = suit
			card.rank = rank
			cards.add(card)
			
func deal(n):
	var returnCards = []
	for i in range (0, n):
		returnCards.add(cards.pop_front())
		
func shuffle():
	cards.shuffle
