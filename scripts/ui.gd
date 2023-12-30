extends CanvasLayer

@onready var bean_amount = $Control/bean_amount


func _ready():
	GlobalScript.on_coffee_added.connect(coffee_added)


func coffee_added(coffee_amount):
	bean_amount.text = "Bean Amount: " + str(coffee_amount)
	#print(coffee_amount)
