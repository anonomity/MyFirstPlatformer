extends Node


var coffee_bean_amount = 0

signal on_coffee_added(coffee_amount)

func add_coffee(amount):
	coffee_bean_amount += amount
	emit_signal("on_coffee_added",coffee_bean_amount)
