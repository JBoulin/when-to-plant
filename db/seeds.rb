# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
User.destroy_all

User.create!(
  nom: "whentoplant",
  prenom: "jeremy",
  email: "test1@test.fr",
  password: "test123",
  role: "user"
)

User.create!(
  nom: "Boulin",
  prenom: "Jeremy",
  email: "jeremy@test.fr",
  password: "123456",
  role: "user"
)

User.create!(
  nom: "Gambotti",
  prenom: "Gabriel",
  email: "gabriel@test.fr",
  password: "123456",
  role: "user"
)

User.create!(
  nom: "Smolyakova",
  prenom: "Olena",
  email: "olena@test.fr",
  password: "123456",
  role: "user"
)

User.create!(
  nom: "Cano",
  prenom: "Louis",
  email: "louis@test.fr",
  password: "123456",
  role: "user"
)

User.create!(
  nom: "Norris",
  prenom: "Chuck",
  email: "admin@test.fr",
  password: "123456",
  role: "admin"
)

Plant.create(
  name: "Artichaut",
  nom_scientifique: "Cynara scolymus",
  description: "Cette variété, vivace dans les régions tempérées, produit une tige presque sans épines. Elle offre 7 à 8
   gros capitules verts teintés de violet, d'environ 12 cm de diamètre, appréciés pour leur texture tendre.",
  famille: "Asteracées",
  categorie: "Légumes",
  type_semis: "En godet",
  conseil_semis: "Semer en godets sous abri lumineux, en poquets de 2 à 3 graines. Repiquer le meilleur plant au stade
  de 2 feuilles, environ 2 mois plus tard, à 1 m en tous sens.",
  conseil_culture: "Du semis à l’obtention du plant, il faut compter 8 à 10 semaines.",
  periode_semis: "Janvier, Février, Mars",
  periode_recoltes: "Mai, Juin, Juillet, Aout",
  culture: "Pleine terre",
  exposition: "Plein soleil",
  besoin_eau: "Moyen",
  nature_sol: "Tout types",
  qualite_sol: "Léger, riche, drainé",
  hauteur: "100 à 150 cm",
  ecart_rang: "100 à 150 cm",
  temperature: "20 à 22°C",
  difficulte: "Facile",
  maladie: "Le mildiou, l’oïdium, les chenilles, les pucerons, la ramulariose"
)

Plant.create(
  name: "Abricot",
  nom_scientifique: "Prunus armeniaca",
  description: "Arbre fruitier du soleil par excellence, l’abricotier offre dès le début de l’été ses fruits délicieux
  et sucrés, avec d’autant plus de générosité s’il est installé en plein soleil, dans un sol léger, bien abrité des
   vents froids et des gelées printanières. Les variétés à floraison tardive seront parfaites pour la moitié Nord de la
   France.",
  famille: "Rosacées",
  categorie: "Fruit",
  type_semis: "Pleine terre",
  conseil_semis: "Semer en automne dans un sol bien drainé. Protéger les jeunes plants du gel.",
  conseil_culture: "Planter en plein soleil, à l'abri des vents forts. Tailler régulièrement pour aérer la couronne.
   Fertiliser annuellement avec du compost.",
  periode_semis: "Octobre, Avril",
  periode_recoltes: "Juin, Juillet, Août",
  culture: "Pleine terre",
  exposition: "Plein soleil",
  besoin_eau: "Moyen",
  nature_sol: "Tout types",
  qualite_sol: "Léger, Riche, drainé",
  hauteur: "3 à 6 m",
  ecart_rang: "5 à 6 m",
  temperature: "15 à 25°C",
  difficulte: "Facile",
  maladie: "Moniliose, tavelure, oïdium, pucerons, cochenilles, chancre bactérien"
)

Plant.create(
  name: "Ail",
  nom_scientifique: "Allium sativum",
  description: "L’ail est une culture assez simple à réaliser. La plantation est facile, et l’ail en soi ne nécessite
   que très peu d’entretien. Dans un sol qui retient un minimum l’eau et qui est vivant, vous n’aurez pas grand-chose à
    faire : planter à l’automne ou au printemps, et venir récolter en été. Les têtes se conservent bien, et sont faciles
     à stocker. Il est donc très facile de devenir autonome en ail.",
  famille: "Aromates",
  categorie: "Fruit",
  type_semis: "Pleine terre",
  conseil_semis: "Arroser modérément. Biner et désherber régulièrement. Pailler pour maintenir l'humidité.",
  conseil_culture: "Planter en plein soleil, à l'abri des vents forts. Tailler régulièrement pour aérer la couronne.
   Fertiliser annuellement avec du compost.",
  periode_semis: "Octobre, Novembre, Février, Mars",
  periode_recoltes: "Juin, Juillet",
  culture: "Pleine terre",
  exposition: "Plein soleil",
  besoin_eau: "Faible",
  nature_sol: "Tout types",
  qualite_sol: "Léger, Riche, drainé",
  hauteur: "30 à 60cm",
  ecart_rang: "15 à 20cm",
  temperature: "10 à 20°C",
  difficulte: "Facile",
  maladie: "Rouille, Mildiou, Nématodes"
)

post = Post.create(
  titre: "Les légumes faciles pour bien débuter",
  categorie: "Tuto",
  date_publication: "15/07/2024",
  contenu: "Certaines légumes sont réputés difficiles pour diverses raisons : semis délicat, ravageurs fréquents, montée en graines rapide… Évitez-les dans un premier temps, vous risquez de perdre votre temps ! Pour débuter, rien de mieux que des légumes faciles à cultiver. Voici notre sélection :
La côte de blette est un légume robuste qui pousse sans difficulté.
Les salades : laitues et chicorées poussent rapidement (voir notre fiche Les salades faciles à cultiver pour débutants)
Le chou Kale est presque… inratable !
Les courges (potirons, butternut etc…), une fois plantés dans une bonne terre ils donneront de généreuses récoltes !
La courgette, bien implantée et arrosée régulièrement sera productive tout l’été.
L’échalote est la plus facile à réussir dans sa famille des alliacées.
L’épinard, simple à réussir, tant qu’il a une terre riche et est bien arrosé.
La fève, le pois et le haricot germent facilement, avec les bons soins vos récoltes seront généreuses
La pomme de terre est gratifiante… quand elle ne rencontre pas les doryphores et le mildiou !
Les radis sont très rapides à obtenir, en bonnes conditions il suffit d’un mois entre le semis et la récolte.
La rhubarbe est vivace, elle repousse chaque année sans problème et en étant de plus en plus généreuse, tant qu’elle est bien nourrie, une fois par an !
La tomate, l’entorse de cette liste car elle est plus délicate à réussir, en effet elle est assez sensible à certaines maladies comme le mildiou. Mais que serait un potager sans la reine du potager ?!
Le topinambour est résistant à tout, même au jardinier, car une fois bien en place il est difficile de le déloger !
Persil, ciboulette, thym, sauge, romarin, menthe sont les aromatiques les plus simples à réussir.
La bonne quantité
Pour une famille « classique », il est bien entendu inutile de planter 30 plants de concombres ou de semer l’ensemble des graines d’un sachet de carotte ! Mais il n’est pas toujours évident de connaître la bonne quantité à semer et planter, d’autant plus que les années se suivent et ne se ressemblent pas. Par ailleurs, une culture très généreuse une année, sera peut être bien moins productive l’année suivante. C’est les aléas du jardinage ! Notre conseil : diversifiez vos cultures tout en tenant compte de la surface disponible. Pour ce faire, établir un rapide schéma peut être utile ! "
)

List.create(
  nom: "Légumes",
  user: User.fifth
)
