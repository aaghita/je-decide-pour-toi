# <=== DATABASE CLEANOUT ===>

puts 'Cleaning database...'
Action.destroy_all
Humeur.destroy_all
puts 'Database clean'

# <=== SEEDING ===>


humeur = Humeur.new({name: 'lasse ⚇'})
humeur.save
action_a = Action.new({content: '⚇ regarder l’épisode 101 de Killing Eve ⚇'})
action_a.humeur = humeur
action_b = Action.new({content: '⚇ écouter le dernier épisode de passages ⚇'})
action_b.humeur = humeur
action_a.save
action_b.save

puts '*** lasse done ***'

humeur = Humeur.new({name: 'joyeuse ☺'})
humeur.save
action_a = Action.new({content: '☺ prendre un verre au Taylor ☺'})
action_a.humeur = humeur
action_b = Action.new({content: '☺ prendre un verre à l’Iconique ☺'})
action_b.humeur = humeur
action_a.save
action_b.save

puts '*** joyeuse done ***'

humeur = Humeur.new({name: 'festive 🎶'})
humeur.save
data_a = {content: '🎶 aller boire un verre au Sample 🎶', address:'18 avenue de la République, Bagnolet'}
action_a = Action.new(data_a)
action_a.humeur = humeur
action_b = Action.new({content: '🎶 me maquiller et/ou me déguiser 🎶 mettre la musique à fond 🎶 danser 🎶'})
action_b.humeur = humeur
action_a.save
action_b.save

puts '*** festive done ***'

humeur = Humeur.new({name: 'aventurière ✈'})
humeur.save
action_a = Action.new({content: '✈ descendre à la station chatelet ✈ traverser la Seine ✈ explorer la rive gauche ✈'})
action_a.humeur = humeur
action_b = Action.new({content: '✈ prendre une carte de paris ✈ tracer une ligne entre la rue des abattoirs et la rue Zola ✈ aller tout droit ✈'})
action_b.humeur = humeur
action_a.save
action_b.save

puts '*** aventurière done ***'

humeur = Humeur.new({name: 'poétique ☾'})
humeur.save
action_a = Action.new({content: '☾ aller aux club des poètes ☾ arriver avant 20h ☾'})
action_a.humeur = humeur
action_b = Action.new({content: "☾ ouvrir une bouteille de vin ☾ lire chacun mes poêmes préférés ☾"})
action_b.humeur = humeur
action_a.save
action_b.save

puts '*** poétique done ***'

humeur = Humeur.new({name: 'musicienne ♪'})
humeur.save
action_a = Action.new({content: '♪ aller écouter de la musique à la petite halle de la villette ♪'})
action_a.humeur = humeur
action_b = Action.new({content: "♪ sortir acheter de quoi prendre l'apéro ♪ écouter le dernier album de Lomepal ♪"})
action_b.humeur = humeur
action_a.save
action_b.save

puts '*** musicienne done ***'

humeur = Humeur.new({name: 'gourmet ♨'})
humeur.save
action_a = Action.new({content: '♨ aller dîner à la vierge place de la réunion ♨'})
action_a.humeur = humeur
action_b = Action.new({content: '♨ faire les courses ♨ préparer un boeuf bourguignon ♨'})
action_b.humeur = humeur
action_a.save
action_b.save

puts '*** gourmet done ***'

humeur = Humeur.new({name: 'pétillante ✧'})
humeur.save
action_a = Action.new({content: "✧ boire de l'eau gazeuse ✧"})
action_a.humeur = humeur
action_b = Action.new({content: '✧ aller dire bonjour à 5 inconnus dans la rue ✧'})
action_b.humeur = humeur
action_a.save
action_b.save

puts '*** pétillante done ***'

humeur = Humeur.new({name: 'espiègle ☻'})
humeur.save
action_a = Action.new({content: "☻ boire de l'eau gazeuse☻ "})
action_a.humeur = humeur
action_b = Action.new({content: '☻ aller dire bonjour à 5 inconnus dans la rue ☻'})
action_b.humeur = humeur
action_a.save
action_b.save

puts '*** espiègle done ***'

humeur = Humeur.new({name: 'câline ♥'})
humeur.save
action_a = Action.new({content: "♥ prendre une douche ♥ sortir de l'huile de massage ♥ me faire masser ♥"})
action_a.humeur = humeur
action_b = Action.new({content: '♥ aller dire bonjour à 5 inconnus dans la rue ♥'})
action_b.humeur = humeur
action_a.save
action_b.save

puts '*** câline done ***'

humeur = Humeur.new({name: 'énervée ☠'})
humeur.save
action_a = Action.new({content: "☠ aller me coucher ☠ bouder dans mon lit ☠"})
action_a.humeur = humeur
action_b = Action.new({content: '☠ aller dire bonjour à 5 inconnus dans la rue ☠'})
action_b.humeur = humeur
action_a.save
action_b.save

puts '*** câline done ***'
