class_name Deck
extends AnimatedSprite2D

var cards = []
var timer = 0;

# Called when the node enters the scene tree for the first time.
func _ready():
	fillDefault()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func _physics_process(delta):
	updateTimer()

func fillDefault():
	for rank in range(1,14):
		for suit in range(0,4):
			var card = load("res://card.tscn").instantiate()
			card.suit = suit
			card.rank = rank
			cards.append(card)
			
func deal():
	return cards.pop_back()
	
func returnCard(card):
	cards.append(card)
		
func shuffle():
	cards.shuffle()
	timer = 30
	play()

func updateTimer():
	if timer > 0:
		timer -= 1
	else:
		stop()
