# <=== DATABASE CLEANOUT ===>

puts 'Cleaning database...'
Action.destroyll
Humeur.destroyll
puts 'Database clean'

# <=== SEEDING ===>


humeur = Humeur.new({ name: 'casanière' })
humeur.save
#
data = { content: '⚇ regarder l’épisode 101 de Killing Eve ⚇', link: 'https://www.canalplus.com/series/killing-eve/h/10221384_50001' }
photo = File.open(Rails.root.join('public/killing_eve.jpg'))
action = Action.new(data)
action.photos.attach(io: photo, filename: humeur.name, content_type: 'jpg')
action.humeur = humeur
action.save
#
data = { content: '⚇ écouter le dernier épisode de passages ⚇', link: 'https://louiemedia.com/passages' }
photo = File.open(Rails.root.join('public/passages.jpg'))
action = Action.new(data)
action.photos.attach(io: photo, filename: humeur.name, content_type: 'jpg')
action.humeur = humeur
action.save

puts '*** casanière done ***'

humeur = Humeur.new({ name: 'joyeuse' })
humeur.save
#
data = {content: '☺ prendre un verre au Taylor ☺', address: '25 Rue Du Château D’Eau, 22 Rue Taylor, 75010 Paris' }
action = Action.new(data)
action.humeur = humeur
action.save
#
data = { content: '☺ prendre un verre à l’Iconique ☺', address: '20 Rue Jean et Marie Moinon, 75010 Paris' }
action = Action.new(data)
action.humeur = humeur
action.save

puts '*** joyeuse done ***'

humeur = Humeur.new({ name: 'festive' })
humeur.save
#
data = { content: '♪ aller boire un verre au Sample ♪', address: '18 avenue de la République, Bagnolet' }
action = Action.new(data)
action.humeur = humeur
action.save
#
data = { content: '♪ me maquiller et/ou me déguiser ♪ mettre la musique à fond ♪ danser ♪', video: 'https://www.youtube.com/embed/_hrJT6SUYX0' }
action = Action.new(data)
action.humeur = humeur
action.save

puts '*** festive done ***'

humeur = Humeur.new({ name: 'aventurière' })
humeur.save
#
action = Action.new({ content: '✈ descendre à la station chatelet ✈ traverser la Seine ✈ explorer la rive gauche ✈' })
action.humeur = humeur
action.save
#
action = Action.new({ content: '✈ prendre une carte de paris ✈ tracer une ligne entre la rue des abattoirs et la rue Zola ✈ aller tout droit ✈' })
action.humeur = humeur
action.save
#
action = Action.new({ content: "✈ sortir de chez moi ✈ faire gauche ✈ droite ✈ gauche ✈ droite ✈ gauche ✈ droite ✈ jusqu'à plus envie" })
action.humeur = humeur
action.save
#
action = Action.new({ content: '✈ prendre le métro à côté de chez moi ✈ aller au terminus ✈ revenir à pieds ✈' })
action.humeur = humeur
action.save
#
action = Action.new({ content: '✈ aller prendre un verre au Dock B ✈', address: '1 Place de la pointe, 93500 Pantin', link: 'https://dockbpantin.com/' })
action.humeur = humeur
action.save

puts '*** aventurière done ***'

humeur = Humeur.new({ name: 'poétique' })
humeur.save
#

data = { content: '☾ aller aux club des poètes ☾ arriver avant 20h ☾', address: '30 rue de Bourgogne 75007 Paris' }
action = Action.new(data)
action.humeur = humeur
action.save
#
photo = File.open(Rails.root.join('public/verlaine.jpg'))
data = { content: "☾ ouvrir une bouteille de vin ☾ lire mes poêmes préférés ☾ me saoûler jusqu'à plus soif ☾", link: 'https://www.eternels-eclairs.fr/poemes-verlaine.php' }
action = Action.new(data)
action.photos.attach(io: photo, filename: humeur.name, content_type: 'jpg')
action.humeur = humeur
action.save

puts '*** poétique done ***'

humeur = Humeur.new({ name: 'musicienne' })
humeur.save
#
data = { content: '♪ aller écouter de la musique à la petite halle de la villette ♪', address: '211 Av. Jean Jaurès, 75019 Paris', link: 'https://www.lapetitehalle.com/programmation/' }
action = Action.new(data)
action.humeur = humeur
action.save
#
photo = File.open(Rails.root.join('public/lomepal.jpg'))
data = { content: "♪ sortir acheter de quoi prendre l'apéro ♪ écouter le dernier album de Lomepal ♪", link: 'https://open.spotify.com/album/6R8nBTTPwlP7iur0wV3oLq?si=AJXjjZctQ-uWeX_7Pcn15A' }
action = Action.new(data)
action.photos.attach(io: photo, filename: humeur.name, content_type: 'jpg')
action.humeur = humeur
action.save

puts '*** musicienne done ***'

humeur = Humeur.new({ name: 'gourmet' })
humeur.save
#
data = { content: '♨ aller dîner à la vierge ♨', address: '58 Rue de la Réunion, 75020 Paris', link: 'https://www.alavierge.com/' }
action = Action.new(data)
action.humeur = humeur
action.save
#
action = Action.new({ content: '♨ faire les courses ♨ préparer un boeuf bourguignon ♨', link: 'https://cuisine.journaldesfemmes.fr/recette/346736-boeuf-bourguignon' })
action.humeur = humeur
action.save
#
data = { content: '♨ aller dîner au Grand Bain ♨', address: '4 Rue Denoyez, 75020 Paris', link: 'https://www.legrandbainparis.com/fr/' }
action = Action.new(data)
action.humeur = humeur
action.save

puts '*** gourmet done ***'

humeur = Humeur.new({ name: 'gourmande' })
humeur.save
#
data = { content: '♨ préparer des crèpes ♨ mettre tout plein de bonnes choses dedans ♨', address: '58 Rue de la Réunion, 75020 Paris', link: 'https://www.marmiton.org/recettes/recette_pate-a-crepes_12372.aspx' }
action = Action.new(data)
action.humeur = humeur
action.save
#
action = Action.new({ content: '♨ faire les courses ♨ préparer un boeuf bourguignon ♨', link: 'https://cuisine.journaldesfemmes.fr/recette/346736-boeuf-bourguignon' })
action.humeur = humeur
action.save
#
data = { content: '♨ aller dîner au Grand Bain ♨', address: '4 Rue Denoyez, 75020 Paris', link: 'https://www.legrandbainparis.com/fr/' }
action = Action.new(data)
action.humeur = humeur
action.save

puts '*** gourmande done ***'

humeur = Humeur.new({ name: 'pétillante' })
humeur.save
#
photo = File.open(Rails.root.join('public/petillante.jpg'))
action = Action.new({ content: "✧ boire de l'eau gazeuse ✧" })
action.photos.attach(io: photo, filename: humeur.name, content_type: 'jpg')
action.humeur = humeur
action.save
#
action = Action.new({ content: '✧ aller dire bonjour à 5 inconnus dans la rue ✧ passer pour un fou ✧' })
action.humeur = humeur
action.save

puts '*** pétillante done ***'

# humeur = Humeur.new({name: 'espiègle'})
# humeur.save
# #
# photo = File.open(Rails.root.join("san_francisco.jpg"))
# action = Action.new({content: "☻ boire de l'eau gazeuse☻ "})
# action.photos.attach(io: photo, filename: humeur.name, content_type: 'jpg')
# action.humeur = humeur
# action.save
#
# photo = File.open(Rails.root.join("san_francisco.jpg"))
# action = Action.new({content: '☻ aller dire bonjour à 5 inconnus dans la rue ☻'})
# action.photos.attach(io: photo, filename: humeur.name, content_type: 'jpg')
# action.humeur = humeur
# action.save

puts '*** espiègle done ***'

humeur = Humeur.new({ name: 'câline' })
humeur.save
#
action = Action.new({ content: "♥ prendre une douche ♥ sortir de l'huile de massage ♥ me faire masser ♥" })
action.humeur = humeur
action.save
#
# photo = File.open(Rails.root.join("san_francisco.jpg"))
# action = Action.new({content: '♥ aller dire bonjour à 5 inconnus dans la rue ♥'})
# action.photos.attach(io: photo, filename: humeur.name, content_type: 'jpg')
# action.humeur = humeur
# action.save

puts '*** câline done ***'

humeur = Humeur.new({ name: 'énervée' })
humeur.save
#
data = { content: '☠ aller me coucher ☠ bouder seul tout dans mon lit ☠' }
action = Action.new(data)
action.humeur = humeur
action.save
#
action = Action.new({ content: "☠ demander de l'aide à wikihow ☠", link: 'https://fr.wikihow.com/se-calmer-rapidement' })
action.humeur = humeur
action.save

puts '*** énervée done ***'

humeur = Humeur.new({ name: 'excitée' })
humeur.save
#
data = { content: '☹ ne pas manger de sucre ☹ respirer ☹', video: 'https://www.youtube.com/embed/qR92VDbQUeo' }
action = Action.new(data)
action.humeur = humeur
action.save
#
# photo = File.open(Rails.root.join("san_francisco.jpg"))
action = Action.new({ content: '☹ faire 5 minutes de méditation ☹', video: 'https://www.youtube.com/embed/NuGejEt4xp4' })
# action.photos.attach(io: photo, filename: humeur.name, content_type: 'jpg')
action.humeur = humeur
action.save

puts '*** excitée done ***'

humeur = Humeur.new({ name: 'tendue' })
humeur.save
#
data = { content: "ϟ fermer les yeux ϟ inspirer ϟ expirer ϟ inspirer ϟ expirer ϟ ... ϟ jusqu'à changer d'humeur ϟ", video: 'https://www.dailymotion.com/embed/video/x5er2d?autoplay=1' }
action = Action.new(data)
action.humeur = humeur
action.save

puts '*** tendue done ***'

humeur = Humeur.new({ name: 'végétative' })
humeur.save
#
data = { content: '☁ rester assis dans mon canap ☁ me faire servir ☁' }
action = Action.new(data)
action.humeur = humeur
action.save
#
# photo = File.open(Rails.root.join("san_francisco.jpg"))
# action = Action.new({content: '☠ aller dire bonjour à 5 inconnus dans la rue ☠'})
# action.photos.attach(io: photo, filename: humeur.name, content_type: 'jpg')
# action.humeur = humeur
# action.save

puts '*** végétative done ***'

humeur = Humeur.new({ name: 'romantique' })
humeur.save
#
photo = File.open(Rails.root.join('public/belle_clochard.jpg'))
data = { content: "♡ aller me ballader place du Tertre ♡ m'arreter dans un resto touristique ♡ commander des spaghettis ♡", address: 'Pl. du Tertre, 75018 Paris' }
action = Action.new(data)
action.photos.attach(io: photo, filename: humeur.name, content_type: 'jpg')
action.humeur = humeur
action.save
#
photo = File.open(Rails.root.join('public/eternal_sunshine.jpg'))
data = { content: '♡ me mettre sous la couette ♡ regarder éternal sunshine of the spotless mind ♡', link: 'https://www.justwatch.com/fr/film/eternal-sunshine-of-the-spotless-mind' }
action = Action.new(data)
action.photos.attach(io: photo, filename: humeur.name, content_type: 'jpg')
action.humeur = humeur
action.save

puts '*** romantique done ***'


User.create(email: 'aa.ghita@gmail.com', password: 'azerty', admin: true)
User.create(email: 'paulportier', password: 'azerty', admin: true)
