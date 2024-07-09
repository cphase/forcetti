class_name Card

extends Button

@export var rank: Enums.Ranks = Enums.Ranks.ACE
@export var suit: Enums.Suits = Enums.Suits.SPADES


# Called when the node enters the scene tree for the first time.
func _ready():
	updateCard()
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#updateCard()
	pass

func updateCard():
	text = str(Enums.Ranks.find_key(rank), "\nof\n", Enums.Suits.keys()[suit])

func _on_card_button_toggled(toggled_on):
	if toggled_on:
		set_position(get_position() + Vector2(0,-20))
	else:
		set_position(get_position() + Vector2(0,20))
