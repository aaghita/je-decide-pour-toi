# <=== DATABASE CLEANOUT ===>

puts 'Cleaning database...'
Action.destroy_all
Humeur.destroy_all
puts 'Database clean'

# <=== SEEDING ===>


humeur = Humeur.new({name: 'lassive'})
humeur.save
#
data_a = {content: '⚇ regarder l’épisode 101 de Killing Eve ⚇', link:'https://www.canalplus.com/series/killing-eve/h/10221384_50001'}
photo = File.open(Rails.root.join("public/killing_eve.jpg"))
action_a = Action.new(data_a)
action_a.photos.attach(io: photo, filename: humeur.name, content_type: 'jpg')
action_a.humeur = humeur
action_a.save
#
data_b = {content: '⚇ écouter le dernier épisode de passages ⚇', link:'https://louiemedia.com/passages'}
photo = File.open(Rails.root.join("public/passages.jpg"))
action_b = Action.new(data_b)
action_b.photos.attach(io: photo, filename: humeur.name, content_type: 'jpg')
action_b.humeur = humeur
action_b.save

puts '*** lassive done ***'

humeur = Humeur.new({name: 'joyeuse'})
humeur.save
#
data_a = {content: '☺ prendre un verre au Taylor ☺', address:"25 Rue Du Château D’Eau, 22 Rue Taylor, 75010 Paris"}
action_a = Action.new(data_a)
action_a.humeur = humeur
action_a.save
#
data_b = {content: '☺ prendre un verre à l’Iconique ☺', address:"20 Rue Jean et Marie Moinon, 75010 Paris"}
action_b = Action.new(data_b)
action_b.humeur = humeur
action_b.save

puts '*** joyeuse done ***'

humeur = Humeur.new({name: 'festive'})
humeur.save
#
data_a = {content: '♪ aller boire un verre au Sample ♪', address:'18 avenue de la République, Bagnolet'}
action_a = Action.new(data_a)
action_a.humeur = humeur
action_a.save
#
data_b = {content: '♪ me maquiller et/ou me déguiser ♪ mettre la musique à fond ♪ danser ♪', link: "https://www.youtube.com/watch?v=_hrJT6SUYX0"}
action_b = Action.new(data_b)
action_b.humeur = humeur
action_b.save

puts '*** festive done ***'

humeur = Humeur.new({name: 'aventurière'})
humeur.save
#
action_a = Action.new({content: '✈ descendre à la station chatelet ✈ traverser la Seine ✈ explorer la rive gauche ✈'})
action_a.humeur = humeur
action_a.save
#
action_b = Action.new({content: '✈ prendre une carte de paris ✈ tracer une ligne entre la rue des abattoirs et la rue Zola ✈ aller tout droit ✈'})
action_b.humeur = humeur
action_b.save

puts '*** aventurière done ***'

humeur = Humeur.new({name: 'poétique'})
humeur.save
#

data_a = {content: '☾ aller aux club des poètes ☾ arriver avant 20h ☾', address:"30 rue de Bourgogne 75007 Paris"}
action_a = Action.new(data_a)
action_a.humeur = humeur
action_a.save
#
photo = File.open(Rails.root.join("public/verlaine.jpg"))
data_b = {content: "☾ ouvrir une bouteille de vin ☾ lire mes poêmes préférés ☾ me saoûler jusqu'à plus soif ☾", link:"https://www.eternels-eclairs.fr/poemes-verlaine.php"}
action_b = Action.new(data_b)
action_b.photos.attach(io: photo, filename: humeur.name, content_type: 'jpg')
action_b.humeur = humeur
action_b.save

puts '*** poétique done ***'

humeur = Humeur.new({name: 'musicienne'})
humeur.save
#
action_a = Action.new({content: '♪ aller écouter de la musique à la petite halle de la villette ♪'})
action_a.humeur = humeur
action_a.save
#
photo = File.open(Rails.root.join("public/lomepal.jpg"))
data_b = {content: "♪ sortir acheter de quoi prendre l'apéro ♪ écouter le dernier album de Lomepal ♪", link: 'https://open.spotify.com/album/6R8nBTTPwlP7iur0wV3oLq?si=AJXjjZctQ-uWeX_7Pcn15A'}
action_b = Action.new(data_b)
action_b.photos.attach(io: photo, filename: humeur.name, content_type: 'jpg')
action_b.humeur = humeur
action_b.save

puts '*** musicienne done ***'

humeur = Humeur.new({name: 'gourmet'})
humeur.save
#
data_a = {content: '♨ aller dîner à la vierge ♨', address: '58 Rue de la Réunion, 75020 Paris'}
action_a = Action.new(data_a)
action_a.humeur = humeur
action_a.save
#
action_b = Action.new({content: '♨ faire les courses ♨ préparer un boeuf bourguignon ♨'})
action_b.humeur = humeur
action_b.save

puts '*** gourmet done ***'

humeur = Humeur.new({name: 'pétillante'})
humeur.save
#
photo = File.open(Rails.root.join("public/petillante.jpg"))
action_a = Action.new({content: "✧ boire de l'eau gazeuse ✧"})
action_a.photos.attach(io: photo, filename: humeur.name, content_type: 'jpg')
action_a.humeur = humeur
action_a.save
#
action_b = Action.new({content: '✧ aller dire bonjour à 5 inconnus dans la rue ✧ passer pour un fou ✧'})
action_b.humeur = humeur
action_b.save

puts '*** pétillante done ***'

# humeur = Humeur.new({name: 'espiègle'})
# humeur.save
# #
# photo = File.open(Rails.root.join("san_francisco.jpg"))
# action_a = Action.new({content: "☻ boire de l'eau gazeuse☻ "})
# action_a.photos.attach(io: photo, filename: humeur.name, content_type: 'jpg')
# action_a.humeur = humeur
# action_a.save
#
# photo = File.open(Rails.root.join("san_francisco.jpg"))
# action_b = Action.new({content: '☻ aller dire bonjour à 5 inconnus dans la rue ☻'})
# action_b.photos.attach(io: photo, filename: humeur.name, content_type: 'jpg')
# action_b.humeur = humeur
# action_b.save

puts '*** espiègle done ***'

humeur = Humeur.new({name: 'câline'})
humeur.save
#
action_a = Action.new({content: "♥ prendre une douche ♥ sortir de l'huile de massage ♥ me faire masser ♥"})
action_a.humeur = humeur
action_a.save
#
# photo = File.open(Rails.root.join("san_francisco.jpg"))
# action_b = Action.new({content: '♥ aller dire bonjour à 5 inconnus dans la rue ♥'})
# action_b.photos.attach(io: photo, filename: humeur.name, content_type: 'jpg')
# action_b.humeur = humeur
# action_b.save

puts '*** câline done ***'

humeur = Humeur.new({name: 'énervée'})
humeur.save
#
action_a = Action.new({content: "☠ aller me coucher ☠ bouder seul dans mon lit ☠"})
action_a.humeur = humeur
action_a.save
#
# photo = File.open(Rails.root.join("san_francisco.jpg"))
# action_b = Action.new({content: '☠ aller dire bonjour à 5 inconnus dans la rue ☠'})
# action_b.photos.attach(io: photo, filename: humeur.name, content_type: 'jpg')
# action_b.humeur = humeur
# action_b.save

puts '*** câline done ***'


User.create(email: "aa.ghita@gmail.com", password: "azerty", admin: true)
User.create(email: "paulportier", password: "azerty", admin: true)
