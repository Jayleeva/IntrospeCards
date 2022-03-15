extends Node2D

#définir que rien ne se passe spontanément.
func _ready():
	pass 

#définir que si on clique sur "jouer", on arrive sur la scène "jouer".
func _on_play_pressed():
	get_tree().change_scene("res://play/play.tscn")

#définir que si on clique sur "avertissement", on est ramené sur la scène "avertissement".
func _on_disclaimer_pressed():
	get_tree().change_scene("res://disclaimer/disclaimer.tscn")

#définir que si on clique sur "crédits", on arrive sur la scène "crédits".
func _on_credits_pressed():
	get_tree().change_scene("res://credits/credits.tscn")

#définir que si on clique sur "quitter", on quitte le jeu.
func _on_quit_pressed():
	get_tree().quit()
