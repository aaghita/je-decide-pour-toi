require 'json'
require 'open-uri'

url = "https://opendata.hauts-de-seine.fr/api/records/1.0/search/?dataset=gares-et-stations-du-reseau-ferre-dile-de-france-par-ligne&q=&rows=10000"
user_serialized = URI.open(url).read
metro = JSON.parse(user_serialized)

puts "#{metro['records'].sample['fields']['nom']}"

# <=== DATABASE CLEANOUT ===>

puts 'Cleaning database...'
Mission.destroy_all
Humeur.destroy_all
Cloudinary::Api.delete_all_resources
puts 'Database clean'

# <=== SEEDING ===>

humeur = Humeur.new({ name: 'casanière' })
humeur.save!
#
photo = File.open(Rails.root.join('public/killing_eve.jpg'))
data = { content: '⚇ regarder l’épisode 101 de Killing Eve ⚇', title: 'Killing Eve', link: 'https://www.canalplus.com/series/killing-eve/h/10221384_50001' }
mission = Mission.new(data)
mission.photos.attach(io: photo, filename: humeur.name, content_type: 'jpg')
mission.humeur = humeur
mission.image = Cloudinary::Utils.cloudinary_url(mission.photos.first.id)
mission.save!
#
photo = File.open(Rails.root.join('public/passages.jpg'))
data = { content: '⚇ écouter le dernier épisode de passages ⚇', title: 'Passages', link: 'https://louiemedia.com/passages' }
mission = Mission.new(data)
mission.photos.attach(io: photo, filename: humeur.name, content_type: 'jpg')
mission.humeur = humeur
mission.image = Cloudinary::Utils.cloudinary_url(mission.photos.first.id)
mission.save!
#
photo = File.open(Rails.root.join('public/harry_potter.jpg'))
data = { content: '⚇ commander des pizzas ⚇ regarder Harry Potter et le prince de sang mêlé ⚇', title: 'Harry Potter', link: 'https://www.justwatch.com/us/movie/harry-potter-and-the-half-blood-prince' }
mission = Mission.new(data)
mission.photos.attach(io: photo, filename: humeur.name, content_type: 'jpg')
mission.humeur = humeur
mission.image = Cloudinary::Utils.cloudinary_url(mission.photos.first.id)
mission.save!

puts '*** casanière done ***'

humeur = Humeur.new({ name: 'joyeuse' })
humeur.save!
#
photo = File.open(Rails.root.join('public/harry_potter.jpg'))
data = { content: '☺ prendre un verre au Taylor ☺', title: 'Le Taylor', address: '25 Rue Du Château D’Eau, 22 Rue Taylor, 75010 Paris' }
mission = Mission.new(data)
mission.photos.attach(io: photo, filename: humeur.name, content_type: 'jpg')
mission.humeur = humeur
mission.image = Cloudinary::Utils.cloudinary_url(mission.photos.first.id)
mission.save!
#
photo = File.open(Rails.root.join('public/harry_potter.jpg'))
data = { content: '☺ prendre un verre à l’Iconique ☺', title: "L'iconique", address: '20 Rue Jean et Marie Moinon, 75010 Paris' }
mission = Mission.new(data)
mission.photos.attach(io: photo, filename: humeur.name, content_type: 'jpg')
mission.humeur = humeur
mission.image = Cloudinary::Utils.cloudinary_url(mission.photos.first.id)
mission.save!

puts '*** joyeuse done ***'

humeur = Humeur.new({ name: 'festive' })
humeur.save!
#
photo = File.open(Rails.root.join('public/killing_eve.jpg'))
data = { content: '♪ aller boire un verre au Sample ♪', title: 'Le Sample', address: '18 avenue de la République, Bagnolet' }
mission = Mission.new(data)
mission.photos.attach(io: photo, filename: humeur.name, content_type: 'jpg')
mission.humeur = humeur
mission.image = Cloudinary::Utils.cloudinary_url(mission.photos.first.id)
mission.save!
#
photo = File.open(Rails.root.join('public/killing_eve.jpg'))
data = { content: '♪ me maquiller et/ou me déguiser ♪ mettre la musique à fond ♪ danser ♪', title: 'I just Want To Danse', link: 'https://www.youtube.com/embed/_hrJT6SUYX0' }
mission = Mission.new(data)
mission.photos.attach(io: photo, filename: humeur.name, content_type: 'jpg')
mission.humeur = humeur
mission.image = Cloudinary::Utils.cloudinary_url(mission.photos.first.id)
mission.save!
#
data = { content: "♪ regarder sur facebook s'il y a une teuf ce soir ♪ y aller ♪" }
mission = Mission.new(data)
mission.humeur = humeur
mission.save!

puts '*** festive done ***'

humeur = Humeur.new({ name: 'aventurière' })
humeur.save!
#
mission = Mission.new({ content: '✈ descendre à la station chatelet ✈ traverser la Seine ✈ explorer la rive gauche ✈' })
mission.humeur = humeur
mission.save!
#
mission = Mission.new({ content: '✈ prendre une carte de paris ✈ tracer une ligne entre la rue des abattoirs et la rue Zola ✈ aller tout droit ✈' })
mission.humeur = humeur
mission.save!
#
mission = Mission.new({ content: "✈ sortir de chez moi ✈ faire gauche ✈ droite ✈ gauche ✈ droite ✈ gauche ✈ droite ✈ jusqu'à plus envie" })
mission.humeur = humeur
mission.save!
#
mission = Mission.new({ content: "✈ prendre le métro jusqu'à pouet ✈ aller au terminus ✈ revenir à pieds ✈" })
mission.humeur = humeur
mission.save!
#
photo = File.open(Rails.root.join('public/killing_eve.jpg'))
mission = Mission.new({ content: '✈ aller prendre un verre au Dock B ✈', title: 'Dock B', address: '1 Place de la pointe, 93500 Pantin', link: 'https://dockbpantin.com/' })
mission.photos.attach(io: photo, filename: humeur.name, content_type: 'jpg')
mission.humeur = humeur
mission.image = Cloudinary::Utils.cloudinary_url(mission.photos.first.id)
mission.save!

puts '*** aventurière done ***'

humeur = Humeur.new({ name: 'poétique' })
humeur.save!
#

photo = File.open(Rails.root.join('public/killing_eve.jpg'))
data = { content: '☾ aller aux club des poètes ☾ arriver avant 20h ☾', title: 'Le Club des Poètes', address: '30 rue de Bourgogne 75007 Paris' }
mission = Mission.new(data)
mission.photos.attach(io: photo, filename: humeur.name, content_type: 'jpg')
mission.humeur = humeur
mission.image = Cloudinary::Utils.cloudinary_url(mission.photos.first.id)
mission.save!
#
photo = File.open(Rails.root.join('public/verlaine.jpg'))
data = { content: "☾ ouvrir une bouteille de vin ☾ lire mes poêmes préférés ☾ me saoûler jusqu'à plus soif ☾", title: 'Verlaine', link: 'https://www.eternels-eclairs.fr/poemes-verlaine.php' }
mission = Mission.new(data)
mission.photos.attach(io: photo, filename: humeur.name, content_type: 'jpg')
mission.humeur = humeur
mission.image = Cloudinary::Utils.cloudinary_url(mission.photos.first.id)
mission.save!

puts '*** poétique done ***'

humeur = Humeur.new({ name: 'musicienne' })
humeur.save!
#
photo = File.open(Rails.root.join('public/killing_eve.jpg'))
data = { content: '♪ aller écouter de la musique à la petite halle de la villette ♪', title: 'Halle de La Vilette', address: '211 Av. Jean Jaurès, 75019 Paris', link: 'https://www.lapetitehalle.com/programmation/' }
mission = Mission.new(data)
mission.photos.attach(io: photo, filename: humeur.name, content_type: 'jpg')
mission.humeur = humeur
mission.image = Cloudinary::Utils.cloudinary_url(mission.photos.first.id)
mission.save!
#
photo = File.open(Rails.root.join('public/killing_eve.jpg'))
data = { content: "♪ sortir acheter de quoi prendre l'apéro ♪ écouter le dernier album de Lomepal ♪", title: 'Lomepal', link: 'https://open.spotify.com/embed/playlist/37i9dQZF1DX6ORQ2sFUhWc?utm_source=generator' }
mission = Mission.new(data)
mission.photos.attach(io: photo, filename: humeur.name, content_type: 'jpg')
mission.humeur = humeur
mission.image = Cloudinary::Utils.cloudinary_url(mission.photos.first.id)
mission.save!
#
photo = File.open(Rails.root.join('public/killing_eve.jpg'))
data = { content: '♪ rouler un bogz ♪ écouter Tubular Bells ♪', title: 'Tubular Bells', link: 'https://open.spotify.com/embed/album/0a3YQpBnRzJzNktOjb6Dum?utm_source=generator' }
mission = Mission.new(data)
mission.photos.attach(io: photo, filename: humeur.name, content_type: 'jpg')
mission.humeur = humeur
mission.image = Cloudinary::Utils.cloudinary_url(mission.photos.first.id)
mission.save!

puts '*** musicienne done ***'

humeur = Humeur.new({ name: 'gourmet' })
humeur.save!
#
photo = File.open(Rails.root.join('public/killing_eve.jpg'))
data = { content: '♨ aller dîner à la vierge ♨', title: 'La Vierge', address: '58 Rue de la Réunion, 75020 Paris', link: 'https://www.alavierge.com/' }
mission = Mission.new(data)
mission.photos.attach(io: photo, filename: humeur.name, content_type: 'jpg')
mission.humeur = humeur
mission.image = Cloudinary::Utils.cloudinary_url(mission.photos.first.id)
mission.save!
#
photo = File.open(Rails.root.join('public/killing_eve.jpg'))
mission = Mission.new({ content: '♨ faire les courses ♨ préparer un boeuf bourguignon ♨', title: 'Boeuf Bourguignon', link: 'https://cuisine.journaldesfemmes.fr/recette/346736-boeuf-bourguignon' })
mission.photos.attach(io: photo, filename: humeur.name, content_type: 'jpg')
mission.humeur = humeur
mission.image = Cloudinary::Utils.cloudinary_url(mission.photos.first.id)
mission.save!
#
photo = File.open(Rails.root.join('public/killing_eve.jpg'))
data = { content: '♨ aller dîner au Grand Bain ♨', title: 'Le Grand Bain', address: '4 Rue Denoyez, 75020 Paris', link: 'https://www.legrandbainparis.com/fr/' }
mission = Mission.new(data)
mission.photos.attach(io: photo, filename: humeur.name, content_type: 'jpg')
mission.humeur = humeur
mission.image = Cloudinary::Utils.cloudinary_url(mission.photos.first.id)
mission.save!

puts '*** gourmet done ***'

humeur = Humeur.new({ name: 'gourmande' })
humeur.save!
#
photo = File.open(Rails.root.join('public/killing_eve.jpg'))
data = { content: '♨ préparer des crèpes ♨ mettre tout plein de bonnes choses dedans ♨', title: 'Pâte à crèpes', link: 'https://www.marmiton.org/recettes/recette_pate-a-crepes_12372.aspx' }
mission = Mission.new(data)
mission.photos.attach(io: photo, filename: humeur.name, content_type: 'jpg')
mission.humeur = humeur
mission.image = Cloudinary::Utils.cloudinary_url(mission.photos.first.id)
mission.save!

puts '*** gourmande done ***'

humeur = Humeur.new({ name: 'pétillante' })
humeur.save!
#
mission = Mission.new({ content: "✧ boire de l'eau gazeuse ✧" })
mission.humeur = humeur
mission.save!
#
mission = Mission.new({ content: '✧ aller dire bonjour à 5 inconnus dans la rue ✧ passer pour un fou ✧' })
mission.humeur = humeur
mission.save!

puts '*** pétillante done ***'

humeur = Humeur.new({ name: 'espiègle' })
humeur.save!
#
mission = Mission.new({ content: '☻ appeler un copain en numéro masqué ☻ lui faire une blague ☻' })
mission.humeur = humeur
mission.save!
#
# photo = File.open(Rails.root.join('san_francisco.jpg'))
# mission = mission.new({content: '☻ aller dire bonjour à 5 inconnus dans la rue ☻'})
# mission.photos.attach(io: photo, filename: humeur.name, content_type: 'jpg')
# mission.humeur = humeur
# mission.save!

puts '*** espiègle done ***'

humeur = Humeur.new({ name: 'câline' })
humeur.save!
#
photo = File.open(Rails.root.join('public/killing_eve.jpg'))
mission = Mission.new({ content: "♥ prendre une douche ♥ sortir de l'huile de massage ♥ me faire masser ♥", title: 'Comment masser', link: 'https://www.youtube.com/embed/j8VPmtyLqSY' })
mission.photos.attach(io: photo, filename: humeur.name, content_type: 'jpg')
mission.humeur = humeur
mission.image = Cloudinary::Utils.cloudinary_url(mission.photos.first.id)
mission.save!
#
# photo = File.open(Rails.root.join("san_francisco.jpg"))
# mission = mission.new({content: '♥ aller dire bonjour à 5 inconnus dans la rue ♥'})
# mission.photos.attach(io: photo, filename: humeur.name, content_type: 'jpg')
# mission.humeur = humeur
# mission.save!

puts '*** câline done ***'

humeur = Humeur.new({ name: 'énervée' })
humeur.save!
#
data = { content: '☠ aller me coucher ☠ bouder seul tout dans mon lit ☠' }
mission = Mission.new(data)
mission.humeur = humeur
mission.save!
#
photo = File.open(Rails.root.join('public/killing_eve.jpg'))
mission = Mission.new({ content: "☠ demander de l'aide à wikihow ☠", title: 'How wiki ?', link: 'https://fr.wikihow.com/se-calmer-rapidement' })
mission.photos.attach(io: photo, filename: humeur.name, content_type: 'jpg')
mission.humeur = humeur
mission.image = Cloudinary::Utils.cloudinary_url(mission.photos.first.id)
mission.save!

puts '*** énervée done ***'

humeur = Humeur.new({ name: 'excitée' })
humeur.save!
#
photo = File.open(Rails.root.join('public/killing_eve.jpg'))
data = { content: '☹ ne pas manger de sucre ☹ respirer ☹', title: 'This little girl did something crazy', link: 'https://www.youtube.com/embed/qR92VDbQUeo' }
mission = Mission.new(data)
mission.photos.attach(io: photo, filename: humeur.name, content_type: 'jpg')
mission.humeur = humeur
mission.image = Cloudinary::Utils.cloudinary_url(mission.photos.first.id)
mission.save!
#
photo = File.open(Rails.root.join('public/killing_eve.jpg'))
mission = Mission.new({ content: '☹ faire 5 minutes de méditation ☹', title: 'Ioooonn', link: 'https://www.youtube.com/embed/NuGejEt4xp4' })
mission.photos.attach(io: photo, filename: humeur.name, content_type: 'jpg')
mission.humeur = humeur
mission.image = Cloudinary::Utils.cloudinary_url(mission.photos.first.id)
mission.save!

puts '*** excitée done ***'

humeur = Humeur.new({ name: 'tendue' })
humeur.save!
#
photo = File.open(Rails.root.join('public/killing_eve.jpg'))
data = { content: "ϟ fermer les yeux ϟ inspirer ϟ expirer ϟ inspirer ϟ expirer ϟ ... ϟ jusqu'à changer d'humeur ϟ", title: 'Ionnnn', link: 'https://www.dailymotion.com/embed/video/x5er2d?autoplay=1' }
mission = Mission.new(data)
mission.photos.attach(io: photo, filename: humeur.name, content_type: 'jpg')
mission.humeur = humeur
mission.image = Cloudinary::Utils.cloudinary_url(mission.photos.first.id)
mission.save!

puts '*** tendue done ***'

humeur = Humeur.new({ name: 'végétative' })
humeur.save!
#
data = { content: '☁ rester assis dans mon canap ☁ me faire servir ☁ regarder dans le vide la bouche légèrement ouverte ☁' }
mission = Mission.new(data)
mission.humeur = humeur
mission.save!
#
# photo = File.open(Rails.root.join("san_francisco.jpg"))
# mission = mission.new({content: '☠ aller dire bonjour à 5 inconnus dans la rue ☠'})
# mission.photos.attach(io: photo, filename: humeur.name, content_type: 'jpg')
# mission.humeur = humeur
# mission.save!

puts '*** végétative done ***'

humeur = Humeur.new({ name: 'romantique' })
humeur.save!
#
photo = File.open(Rails.root.join('public/belle_clochard.jpg'))
data = { content: "♡ aller me ballader place du Tertre ♡ m'arreter dans un resto touristique ♡ commander des spaghettis ♡", title: "L'amouuuuur", address: 'Pl. du Tertre, 75018 Paris' }
mission = Mission.new(data)
mission.photos.attach(io: photo, filename: humeur.name, content_type: 'jpg')
mission.humeur = humeur
mission.image = Cloudinary::Utils.cloudinary_url(mission.photos.first.id)
mission.save!
#
photo = File.open(Rails.root.join('public/eternal_sunshine.jpg'))
data = { content: '♡ me mettre sous la couette ♡ regarder éternal sunshine of the spotless mind ♡', title: 'Eternal Sunshine', link: 'https://www.justwatch.com/fr/film/eternal-sunshine-of-the-spotless-mind' }
mission = Mission.new(data)
mission.photos.attach(io: photo, filename: humeur.name, content_type: 'jpg')
mission.humeur = humeur
mission.image = Cloudinary::Utils.cloudinary_url(mission.photos.first.id)
mission.save!

puts '*** romantique done ***'

humeur = Humeur.new({ name: 'touristique' })
humeur.save!
#
photo = File.open(Rails.root.join('public/killing_eve.jpg'))
data = { content: '♡ aller manger des marrons chauds sous la tour Eiffel ♡', title: 'Chauds les marrons!', address: 'Champs de Mars, 5 avenue Anatole France, 75007 Paris' }
mission = Mission.new(data)
mission.photos.attach(io: photo, filename: humeur.name, content_type: 'jpg')
mission.humeur = humeur
mission.image = Cloudinary::Utils.cloudinary_url(mission.photos.first.id)
mission.save!

puts '*** touristique done ***'

humeur = Humeur.new({ name: 'canaille' })
humeur.save!
#
photo = File.open(Rails.root.join('public/killing_eve.jpg'))
data = { content: "♡ boire un verre à l'escargot ♡", title: "L'escargot", address: 'Champs de Mars, 5 avenue Anatole France, 75007 Paris' }
mission = Mission.new(data)
mission.photos.attach(io: photo, filename: humeur.name, content_type: 'jpg')
mission.humeur = humeur
mission.image = Cloudinary::Utils.cloudinary_url(mission.photos.first.id)
mission.save!

puts '*** canaille done ***'

humeur = Humeur.new({ name: 'bretonne' })
humeur.save!
#
data = { content: "● préparer des galettes bretonnes ● y mettre plein de trucs bons ●"}
mission = Mission.new(data)
mission.humeur = humeur
mission.save!
#
data = { content: '● faire un fest noz dans mon salon ●' }
mission = Mission.new(data)
mission.humeur = humeur
mission.save!

puts '*** bretonne done ***'

humeur = Humeur.new({ name: 'joueuse' })
humeur.save!
#
photo = File.open(Rails.root.join('public/killing_eve.jpg'))
data = { content: '● aller à Mesia ●', title: 'Mesia', address: '84 rue René Boulanger' }
mission = Mission.new(data)
mission.photos.attach(io: photo, filename: humeur.name, content_type: 'jpg')
mission.humeur = humeur
mission.image = Cloudinary::Utils.cloudinary_url(mission.photos.first.id)
mission.save!
#
photo = File.open(Rails.root.join('public/killing_eve.jpg'))
data = { content: '● aller au Nid, cocon ludique ●', title: 'Le Nid', address: '227 rue Saint-Martin' }
mission = Mission.new(data)
mission.photos.attach(io: photo, filename: humeur.name, content_type: 'jpg')
mission.humeur = humeur
mission.image = Cloudinary::Utils.cloudinary_url(mission.photos.first.id)
mission.save!
#
data = { content: '● faire des mots croisés ●' }
mission = Mission.new(data)
mission.humeur = humeur
mission.save!

puts '*** joueuse done ***'

humeur = Humeur.new({ name: 'théâtrale' })
humeur.save!
#
photo = File.open(Rails.root.join('public/killing_eve.jpg'))
data = { content: '● regarder la programmation du théâtre du Châtelet ● prendre un billet pour ce soir ●', title: 'Titre du Châtelet', address: '2 rue Edouard Colonne', link: 'https://www.chatelet.com' }
mission = Mission.new(data)
mission.photos.attach(io: photo, filename: humeur.name, content_type: 'jpg')
mission.humeur = humeur
mission.image = Cloudinary::Utils.cloudinary_url(mission.photos.first.id)
mission.save!
#
photo = File.open(Rails.root.join('public/killing_eve.jpg'))
data = { content: '● regarder la programmation du théâtre Chaillot ● prendre un billet pour ce soir ●', title: 'Théâtre Chaillot', address: '1 place du Trocadéro et du 11 Novembre', link: 'https://theatre-chaillot.fr' }
mission = Mission.new(data)
mission.photos.attach(io: photo, filename: humeur.name, content_type: 'jpg')
mission.humeur = humeur
mission.image = Cloudinary::Utils.cloudinary_url(mission.photos.first.id)
mission.save!
#
data = { content: '● trouver un théâtre rue oberkampf ● prendre un billet pour ce soir' }
mission = Mission.new(data)
mission.humeur = humeur
mission.save!

puts '*** théâtrale done ***'

humeur = Humeur.new({ name: 'loufoque' })
humeur.save!
#
photo = File.open(Rails.root.join('public/killing_eve.jpg'))
data = { content: '● on est vendredi soir ? ● prendre une palce pour le Rocky Horror Picture Show ●', title: 'Rocky Horror Picture Show', address: 'Cinéma Studio Galande, 42 rue Galande', link: 'http://studiogalande.fr/FR/113/rocky-horror-îcture-show.html' }
mission = Mission.new(data)
mission.photos.attach(io: photo, filename: humeur.name, content_type: 'jpg')
mission.humeur = humeur
mission.image = Cloudinary::Utils.cloudinary_url(mission.photos.first.id)
mission.save!

puts '*** loufoque done ***'

humeur = Humeur.new({ name: 'sportive' })
humeur.save!
#
data = { content: '● me mettre en tenue ● aller courir sur les quais ●' }
mission = Mission.new(data)
mission.humeur = humeur
mission.save!
#
photo = File.open(Rails.root.join('public/killing_eve.jpg'))
data = { content: "● c'est l'hiver ? ● aller patiner au dernier étage de la tour Montparnasse", title: 'Tour Montparnasse', address: '33 avenue du Maine' }
mission = Mission.new(data)
mission.photos.attach(io: photo, filename: humeur.name, content_type: 'jpg')
mission.humeur = humeur
mission.image = Cloudinary::Utils.cloudinary_url(mission.photos.first.key)
mission.save!

puts '*** sportive done ***'

User.create(email: 'aa.ghita@gmail.com', password: 'azerty', admin: true)
User.create(email: 'paulportier', password: 'azerty', admin: true)

# svg

humeurs = Humeur.all
humeurs.each do |h|
  h.icon = File.read("#{Rails.root}/app/assets/images/humeurs/#{h.name}.svg").html_safe
  h.save!
  puts "#{h.name} saved"
end

colors = ['#2C6CBF', '#59D986', '#F2C84B', '#EE884E', '#D92211']
humeurs.each do |h|
  h.color = colors.sample
  h.save!
end
