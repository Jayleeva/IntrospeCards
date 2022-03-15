extends Node2D

#cacher le titre qui ne viendra qu'en second temps.
#définir un timer pour laisser la première image être vue pendant quelques secondes avant de
#faire apparaître le titre.
#définir un timer pour laisser le titre être vu pendant quelques secondes avant de
#faire passer à la scène du disclaimer.
func _ready():
	$"title".hide()
	yield(get_tree().create_timer(2.5), "timeout")
	$"title".show()
	yield(get_tree().create_timer(2.5), "timeout")
	get_tree().change_scene("res://disclaimer/disclaimer.tscn")
