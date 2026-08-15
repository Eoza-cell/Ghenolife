extends Control

onready var dialogue = $Dialogue
onready var button = $AskButton

func _ready():
    button.connect("pressed", self, "_on_Ask_pressed")

func _on_Ask_pressed():
    # Exemple d'appel au singleton LLMMock (voir godot/scripts/llm_mock.gd)
    var player_input = "Salut, que fais-tu aujourd'hui ?"
    var response = LLMMock.get_response(player_input)
    dialogue.text = response
