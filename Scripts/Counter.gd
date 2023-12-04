extends Label

var coins = 0

func _ready():
	text = str(coins)

func _on_coin_coin_collected():
	coins = coins + 1
	print(coins)
	_ready()
	
	if(coins == 5):
		get_tree().change_scene_to_file("res://Scenes/victory_screen.tscn")
		
	_ready()
