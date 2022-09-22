# <=== DATABASE CLEANOUT ===>

puts 'Cleaning database...'
Action.destroy_all
Humeur.destroy_all
puts 'Database clean'

# <=== SEEDING ===>


humeur = Humeur.new({name: 'lasse'})
humeur.save
action_a = Action.new({content: 'regarder l’épisode 1x1 de killing eve'})
action_a.humeur = humeur
action_b = Action.new({content: 'écouter le dernier épisode de passages'})
action_b.humeur = humeur
action_a.save
action_b.save

puts '*** lasse done ***'

humeur = Humeur.new({name: 'joyeuse'})
humeur.save
action_a = Action.new({content: 'prendre un verre au Taylor'})
action_a.humeur = humeur
action_b = Action.new({content: 'prendre un verre à l’Iconique'})
action_b.humeur = humeur
action_a.save
action_b.save

puts '*** joyeuse done ***'

humeur = Humeur.new({name: 'festive'})
humeur.save
data_a = {content: 'aller boire un verre au Sample', address:'18 avenue de la République, Bagnolet'}
action_a = Action.new(data_a)
action_a.humeur = humeur
action_b = Action.new({content: 'me maquiller/déguiser - mettre la musique à fond - danser'})
action_b.humeur = humeur
action_a.save
action_b.save

puts '*** festive done ***'

aventuriere = Humeur.new({name: 'aventurière'})
aventuriere.save
action_g = Action.new({content: 'descendre à la station chatelet - traverser la scène - explorer la rive gauche'})
action_g.humeur = aventuriere
action_h = Action.new({content: 'prendre un plan - tracer une ligne entre la rue des abattoirs et la rue Zola - aller tout droit'})
action_h.humeur = aventuriere
action_g.save
action_h.save

puts '*** aventurière done ***'

poetique = Humeur.new({name: 'poétique'})
poetique.save
action_i = Action.new({content: 'aller aux club des poètes - arriver avant 20h'})
action_i.humeur = poetique
action_j = Action.new({content: "ouvrir une bouteille de vin et lire chacun son tour ses poêmes préférés"})
action_j.humeur = poetique
action_i.save
action_j.save

puts '*** poétique done ***'

musicienne = Humeur.new({name: 'musicienne'})
musicienne.save
action_k = Action.new({content: 'aller écouter de la musique à la petite halle de la villette'})
action_k.humeur = musicienne
action_l = Action.new({content: "sortir acheter de quoi prendre l'apéro et écouter le dernier album de Lomepal"})
action_l.humeur = musicienne
action_k.save
action_l.save

puts '*** musicienne done ***'

gourmet = Humeur.new({name: 'gourmet'})
gourmet.save
action_m = Action.new({content: 'manger un bout à la vierge place de la réunion'})
action_m.humeur = gourmet
action_n = Action.new({content: 'faire les courses et me faire un truc bon'})
action_n.humeur = gourmet
action_m.save
action_n.save

puts '*** gourmet done ***'

gourmet = Humeur.new({name: 'pétillante'})
gourmet.save
action_m = Action.new({content: "boire de l'eau gazeuse"})
action_m.humeur = gourmet
action_n = Action.new({content: 'aller dire bonjour à 5 inconnus dans la rue'})
action_n.humeur = gourmet
action_m.save
action_n.save

puts '*** pétillante done ***'

gourmet = Humeur.new({name: 'espiègle'})
gourmet.save
action_m = Action.new({content: "boire de l'eau gazeuse"})
action_m.humeur = gourmet
action_n = Action.new({content: 'aller dire bonjour à 5 inconnus dans la rue'})
action_n.humeur = gourmet
action_m.save
action_n.save

puts '*** espiègle done ***'

gourmet = Humeur.new({name: 'câline'})
gourmet.save
action_m = Action.new({content: "prendre une douche - sortir de l'huile de massage - me faire câliner"})
action_m.humeur = gourmet
action_n = Action.new({content: 'aller dire bonjour à 5 inconnus dans la rue'})
action_n.humeur = gourmet
action_m.save
action_n.save

puts '*** câline done ***'
