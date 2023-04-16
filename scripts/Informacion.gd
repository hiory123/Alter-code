extends CanvasLayer


func _ready():
	verifyHealth()

func verifyHealth():
	if Globales.VidaJefe <= 0:
		$Muerte.visible = true
		$Victoria.visible = false
	else:
		$Muerte.visible = false
		$Victoria.visible = true

func _on_Regresar_pressed():
	ControlsFmod.playEvent("Button")
	ControlsFmod.stopEvent("Battle")
	get_tree().change_scene("res://escenas/Mapa/mapa principal.tscn")