# Instructions initiales et roadmap pour le prototype

Ce fichier décrit rapidement les prochaines étapes et comment remplacer le LLM mock par une intégration réelle.

1) Ouvrir le projet
- Ouvrir godot/project.godot dans Godot 3.x.
- Configurer Autoload : ajouter godot/scripts/llm_mock.gd en tant que singleton nommé "LLMMock".
- Ouvrir la scène res://scene/main.tscn et appuyer sur Play.

2) Remplacer le mock par un LLM local (approche recommandée)
- Préparer un binaire d'inférence mobile (llama.cpp compilé pour Android). Voir https://github.com/ggerganov/llama.cpp for instructions de compilation pour Android.
- Fournir les poids quantifiés (GGUF) dans le répertoire d'app (ou autoriser le téléchargement post-install). Les modèles 3B–7B sont recommandés pour mobile.
- Appeler le binaire via un plugin Android (Java/Kotlin) ou via GDNative. Le plugin devra exposer une fonction pour envoyer prompt + context et retourner la réponse.
- Implémenter une file d'attente dans GD pour éviter de bloquer le thread principal.

3) Sécurité & conformité
- Implémentez un mécanisme d'Opt-In adulte avant d'afficher du contenu sexuel.
- Assurez-vous que tous les personnages sont 18+.

4) Optimisations
- Quantisez les modèles (4-bit) pour réduire la taille et CPU/GPU requirements.
- Pré-générez ou cachez les scènes lourdes.

