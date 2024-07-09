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
	var icon
	if (suit == Enums.Suits.HEARTS): icon = load("res://icons/hearts_icon.tscn").instantiate()
	if (suit == Enums.Suits.SPADES): icon = load("res://icons/spades_icon.tscn").instantiate()
	if (suit == Enums.Suits.CLUBS): icon = load("res://icons/clubs_icon.tscn").instantiate()
	if (suit == Enums.Suits.DIAMONDS): icon = load("res://icons/diamonds_icon.tscn").instantiate()
	icon.scale = Vector2(2,2)
	icon.position = Vector2(5,5)
	add_child(icon)

func _on_card_button_toggled(toggled_on):
	if toggled_on:
		set_position(get_position() + Vector2(0,-20))
	else:
		set_position(get_position() + Vector2(0,20))
