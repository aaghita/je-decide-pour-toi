# <=== DATABASE CLEANOUT ===>

puts 'Cleaning database...'
Action.destroy_all
Humeur.destroy_all
puts 'Database clean'

# <=== SEEDING ===>


lasse = Humeur.new({name: 'lasse'})
lasse.save
action_a = Action.new({content: 'regarder l’épisode 1x1 de killing eve'})
action_a.humeur = lasse
action_b = Action.new({content: 'écouter le dernier épisode de passages'})
action_b.humeur = lasse
action_a.save
action_b.save

puts '*** lasse done ***'

joyeuse = Humeur.new({name: 'joyeuse'})
joyeuse.save
action_c = Action.new({content: 'aller prendre un verre au Taylor'})
action_c.humeur = joyeuse
action_d = Action.new({content: 'aller prendre un verre à l’Iconique'})
action_d.humeur = joyeuse
action_c.save
action_d.save

puts '*** joyeuse done ***'

festive = Humeur.new({name: 'festive'})
festive.save
action_e = Action.new({content: 'aller faire la fête au Sample'})
action_e.humeur = festive
action_f = Action.new({content: 'appeler un ami et aller'})
action_f.humeur = festive
action_e.save
action_f.save

puts '*** festive done ***'

aventuriere = Humeur.new({name: 'aventurière'})
aventuriere.save
action_g = Action.new({content: 'aller me balader rive gauche'})
action_g.humeur = aventuriere
action_h = Action.new({content: 'tracer une ligne entre la rue des abattoirs et la rue zola et aller tout droit'})
action_h.humeur = aventuriere
action_g.save
action_h.save

puts '*** aventurière done ***'

poetique = Humeur.new({name: 'poétique'})
poetique.save
action_i = Action.new({content: 'aller aux club des poètes'})
action_i.humeur = poetique
action_j = Action.new({content: "lire l'intégrale des poèmes de Verlaine"})
action_j.humeur = poetique
action_i.save
action_j.save

puts '*** poétique done ***'

musicienne = Humeur.new({name: 'musicienne'})
musicienne.save
action_k = Action.new({content: 'aller écouter de la musique à la petite halle de la villette'})
action_k.humeur = musicienne
action_l = Action.new({content: 'écouter le dernier album de l’homepal en buvant un verre de vin'})
action_l.humeur = musicienne
action_k.save
action_l.save

puts '*** gourmet done ***'

gourmet = Humeur.new({name: 'gourmet'})
gourmet.save
action_m = Action.new({content: 'manger un bout à la vierge place de la réunion'})
action_m.humeur = gourmet
action_n = Action.new({content: 'faire les courses et me faire un truc bon'})
action_n.humeur = gourmet
action_m.save
action_n.save
