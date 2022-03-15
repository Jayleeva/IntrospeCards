extends Node2D

#définir que rien ne se passe spontanément.
func _ready():
	pass 

#définir que si on clique sur "compris", on arrive sur la scène du menu.
func _on_understood_pressed():
	get_tree().change_scene("res://menu/menu.tscn")
