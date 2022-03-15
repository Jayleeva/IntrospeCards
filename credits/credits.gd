extends Node2D

#définir que rien ne se passe spontanément.
func _ready():
	pass

#définir que si on clique sur "retour", on est ramené à la scène d'avant (ici: "menu").
func _on_back_pressed():
	get_tree().change_scene("res://menu/menu.tscn")
