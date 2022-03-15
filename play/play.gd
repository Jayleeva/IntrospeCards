extends Node2D

#créer un tableau avec 33 cases à valeur zéro
#déclarer une variable indiquant "tableau entièrement consulté = valeur zéro"
var _arrayCards = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
var _arrayFull = 0
		
#cacher les boutons qui n'apparaîtront qu'une fois la carte tirée
func _ready():
	$"screentitle/draw/cards/newcard".hide()
	$"screentitle/draw/cards/menu".hide()

#cacher les boutons qui apparaissaient avant de tirer la carte + faire apparaître les autres.
#définir une seed basée sur l'heure réelle pour s'assurer que l'aléatoire ne répéte pas les mêmes séquences. 
#déclarer une variable aléatoire allant de 1 à 33. 
#définir que si la case du tableau correspondant au résultat de cet aléatoire n'a pas une valeur de zéro, il faut relancer l'aléatoire.
#dessiner la tile correspondant au résultat de l'aléatoire dans la case [1,1] de la tilemap.
#accorder la valeur "1" à la case du tableau correspondant au résultat de l'aléatoire + augmenter la valeur du "tableau entièrement consulté" de 1.
#définir que si le "tableau entièrement consulté" arrive à 32 (et pas 33, car base 0), il se réinitialise à 0, tout comme le tableau, afin de permettre une nouvelle boucle. 
func _on_draw_pressed():
	$"screentitle/back".hide()
	$"screentitle/draw/cards/newcard".show()
	$"screentitle/draw/cards/menu".show()
	
	seed(OS.get_unix_time())
	var card = randi() %33
	while (_arrayCards[card] != 0):
			card = randi() %33
	$"screentitle/draw/cards".set_cell(1, 1, card)
	_arrayCards[card] = 1
	_arrayFull += 1
	if (_arrayFull == 32):
		_arrayCards = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
		_arrayFull = 0

#définir que si on clique sur "nouvelle carte", la fonction "tirer une carte" définie plus haut se poursuive.
func _on_newcard_pressed():
	_on_draw_pressed()

#définir que si on clique sur "menu", on est ramené à la scène "menu".
func _on_menu_pressed():
	get_tree().change_scene("res://menu/menu.tscn")

#définir que si on clique sur "retour", on est ramené à la scène d'avant (ici: "menu").
func _on_back_pressed():
	get_tree().change_scene("res://menu/menu.tscn")
