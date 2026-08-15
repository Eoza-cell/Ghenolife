extends Node

# LLMMock singleton — fournissant des réponses statiques pour prototypage.
# Configurez ce script en Autoload (Project > Project Settings > AutoLoad) avec le nom "LLMMock".

var persona = "NPC adulte, amical"

func _init():
    pass

func get_response(prompt: String) -> String:
    # Réponses simples basées sur le prompt. Remplacez par un appel HTTP local ou binding natif vers un inféreur.
    var p = prompt.to_lower()
    if p.find("salut") != -1 or p.find("bonjour") != -1:
        return "Bonjour. Je travaille aujourd'hui au café. Tu veux postuler?"
    if p.find("travail") != -1 or p.find("job") != -1:
        return "Actuellement on cherche un(e) serveur(se). Tu devras servir les clients et gagner des tips."
    if p.find("maison") != -1 or p.find("appartement") != -1:
        return "Tu peux acheter une petite maison au nord de la ville quand tu auras assez d'argent."
    # Réponse par défaut
    return "Je ne suis pas sûr de comprendre. Peux-tu préciser ?"
