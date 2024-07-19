require "open-uri"
# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Comment.destroy_all
Post.destroy_all
Neighbour.destroy_all
PlantList.destroy_all
Tip.destroy_all
List.destroy_all
Plant.destroy_all
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

file_1 = URI.open("https://kokopelli-semences.fr/media/cache/resolve/shop_product_large_thumbnail/l0171-1.jpg")
file_2 = URI.open("https://www.jardiner-malin.fr/wp-content/uploads/2014/04/1314777481artichaut.jpg")
file_3 = URI.open("https://www.jardiner-malin.fr/wp-content/uploads/2020/01/Artichaut-culture.jpg")
artichaut = Plant.new(
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
artichaut.photos.attach(io: file_1, filename: "artichaut-1.jpg", content_type: "image/jpg")
artichaut.photos.attach(io: file_2, filename: "artichaut-2.jpg", content_type: "image/jpg")
artichaut.photos.attach(io: file_3, filename: "artichaut-3.jpg", content_type: "image/jpg")
artichaut.save!

file_4 = URI.open("https://www.jardiner-malin.fr/wp-content/uploads/2021/05/Abricotier-1024x911.jpg")
file_5 = URI.open("https://images.ctfassets.net/b85ozb2q358o/b54e0b14fb8245aae00bdc0a3994b144348beea773ae4017ca32e6e215422f81/828bedd235093c349f91da76d2aaa3ab/image.png")
file_6 = URI.open("https://www.rustica.fr/images/abricotier-l790-h526.jpg.webp")
abricot = Plant.create(
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
abricot.photos.attach(io: file_4, filename: "abricot-1.jpg", content_type: "image/jpg")
abricot.photos.attach(io: file_5, filename: "abricot-2.jpg", content_type: "image/jpg")
abricot.photos.attach(io: file_6, filename: "abricot-3.jpg", content_type: "image/jpg")
abricot.save!

file_7 = URI.open("https://static.cotemaison.fr/medias_11272/w_2048,h_1146,c_crop,x_0,y_328/w_640,h_360,c_fill,g_north/v1482857843/ail_5771291.jpg")
file_8 = URI.open("https://pause-maison.ouest-france.fr/wp-content/uploads/2024/01/planter-de-lail.jpg")
file_9 = URI.open("https://lepotagerpermacole.fr/wp-content/uploads/2022/10/portr-3.jpg")
ail = Plant.create(
  name: "Ail",
  nom_scientifique: "Allium sativum",
  description: "L’ail est une culture assez simple à réaliser. La plantation est facile, et l’ail en soi ne nécessite
   que très peu d’entretien. Dans un sol qui retient un minimum l’eau et qui est vivant, vous n’aurez pas grand-chose à
    faire : planter à l’automne ou au printemps, et venir récolter en été. Les têtes se conservent bien, et sont faciles
     à stocker. Il est donc très facile de devenir autonome en ail.",
  famille: "Alliacées",
  categorie: "Aromates",
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
ail.photos.attach(io: file_7, filename: "ail-1.jpg", content_type: "image/jpg")
ail.photos.attach(io: file_8, filename: "ail-2.jpg", content_type: "image/jpg")
ail.photos.attach(io: file_9, filename: "ail-3.jpg", content_type: "image/jpg")
ail.save!

file_14 = URI.open("https://encrypted-tbn1.gstatic.com/licensed-image?q=tbn:ANd9GcRTRYgxLTPW7gRmilwmUexEKrqI7E9slCTfOo4w-2YluX3tKhWL2HJkIS-M-O2h-PnHjylfYbAVih3mUx4")
file_15 = URI.open("https://stephanedecotterd.com/wp-content/uploads/2012/03/2008-05-05-aildesours04.jpg")
file_16 = URI.open("https://www.plantes-et-sante.fr/images/istock-1249808560.jpg_720_1000_2")
Ail_des_ours = Plant.create(
  name: "Ail des ours",
  nom_scientifique: "Allium ursinum",
  description: "L'ail des ours est une plante rustique, condimentaire et aromatique qui pousse à l'état sauvage dans la
   fraîcheur des sous-bois. Elle est très reconnaissable à son odeur d'ail.",
  famille: "Alliacées",
  categorie: "Aromates",
  type_semis: "Pleine terre",
  conseil_semis: "Semez les graines à plus ou moins 2 cm de profondeur. Arrosez et tenez le sol humide et frais.",
  conseil_culture: "Le sol doit être régulièrement humide et meuble, et avoir de préférence une épaisse couche d'humus
   nutritive,",
  periode_semis: "Juillet, Août, Septembre",
  periode_recoltes: "Mars, Avril, Mai",
  culture: "Pleine terre",
  exposition: "Ombre",
  besoin_eau: "Faible",
  nature_sol: "Humide, Meuble",
  qualite_sol: "Lourd, Riche",
  hauteur: "30 à 40cm",
  ecart_rang: "10 à 15cm",
  temperature: "15 à 20°C",
  difficulte: "Intermédiaire",
  maladie: "Pourriture blanche, Teigne du poireau"
)
Ail_des_ours.photos.attach(io: file_14, filename: "Ail_des_ours-1.jpg", content_type: "image/jpg")
Ail_des_ours.photos.attach(io: file_15, filename: "Ail_des_ours-2.jpg", content_type: "image/jpg")
Ail_des_ours.photos.attach(io: file_16, filename: "Ail_des_ours-3.jpg", content_type: "image/jpg")
Ail_des_ours.save!

file_17 = URI.open("https://img.passeportsante.net/1200x675/2021-05-03/i101962-aneth-nu.webp")
file_18 = URI.open("https://media.gerbeaud.net/2023/03/640/anethum-graveolens-potager.jpg")
file_19 = URI.open("https://carnoy-chanson.fr/wp-content/uploads/2019/02/Aneth.jpg")
Aneth = Plant.create(
  name: "Aneth",
  nom_scientifique: "Anethum graveolens",
  description: "L'aneth est une plante à tige lisse, possédant des feuilles très découpées, de couleur vert bleuté et des
   fleurs jaunes verdâtres. Elle produit de petites graines, de couleur brune, qui se scindent en deux au séchage.
  Elle fut produite dans la majorité des pays européens et d'Orient que ce soit en tant que plante aromatique ou médicinale.",
  famille: "Apiacées",
  categorie: "Aromates",
  type_semis: "En ligne",
  conseil_semis: "Semez dans des sillons peu profonds (espacés de 30cm), vous les éclaircirez tous les 10-15cm. Refermez
   le sillon au râteau. Et arrosez une première fois pour assurer le démarrage.",
  conseil_culture: "Arroser régulièrement, surtout lors de la levée des semis et en période de sécheresse. Un désherbage
  autour du plant peut également être effectué de temps en temps,",
  periode_semis: "Toute l'année",
  periode_recoltes: "Toute l'année",
  culture: "Pleine terre, Grand pot",
  exposition: "Plein soleil",
  besoin_eau: "Régulierement en période de sécheresse",
  nature_sol: "Bien drainé",
  qualite_sol: "Sec, Riche",
  hauteur: "60 à 80 cm",
  ecart_rang: "25 à 30cm",
  temperature: "-5°C à 20°C",
  difficulte: "Facile",
  maladie: "Pourriture blanche, Teigne du poireau"
)
Aneth.photos.attach(io: file_17, filename: "Aneth-1.jpg", content_type: "image/jpg")
Aneth.photos.attach(io: file_18, filename: "Aneth-2.jpg", content_type: "image/jpg")
Aneth.photos.attach(io: file_19, filename: "Aneth-3.jpg", content_type: "image/jpg")
Aneth.save!

file_10 = URI.open("https://www.graines-semences.com/img/cms/2020/201102-img-actu-10-legume-facile-cultiver-potager.jpg")
article_1 = Post.new(
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
article_1.photos.attach(io: file_10, filename: "article-1.jpg", content_type: "image/jpg")
article_1.save!


file_11 = URI.open("https://static.aujardin.info/cache/th/adb/outils-jardinage-500x375.jpg")
article_2 = Post.new(
  titre: "Les outils pour commencer son potager",
  categorie: "Matériel",
  date_publication: "16/07/2024",
  contenu: "Les jardiniers débutants sont souvent assez démunis face aux nombreux outils proposés en jardinerie. Voici quelques outils utiles pour commencer votre potager :
Les outils d’aération en profondeur
La fourche bêche et la grelinette sont deux outils que l’on va utiliser pour décompacter et ameublir la terre sur les 30 premiers centimètres. Afin de préserver les couches du sol, ces outils sont simplement enfoncés dans la terre puis, par un mouvement de bascule en arrière sur le manche, ils permettent de soulever la terre. La grelinette permet de travailler une plus grande surface, la présence de deux manches permet aussi de faciliter le travail.
Les outils de travail superficiel
Le croc est un outil multifonction indispensable : il permet d’ameublir la terre, de casser les mottes, de retirer les restes de racines, d’enfouir superficiellement des amendements et fauches d’engrais verts etc.
Le sarcloir permet de sarcler (Lapalisse en aurait dit autant !) c’est-à-dire de « décapiter » les jeunes adventices (les mauvaises herbes) ou pour casser l’éventuelle croûte sur la surface de terre afin de la rendre perméable à l’eau et à l’air.
La binette est également multifonction : elle permet de biner, c’est à dire d’ameublir un peu plus en profondeur que le sarcloir. Elle est aussi pratique pour désherber des herbes plus enracinées. Elle permet enfin de « butter », une opération qui consiste à ramener de la terre sur la tige des plants cultivés, par exemple sur la pomme de terre.
Le râteau permet d’affiner la préparation de la terre avant le semis. On l’utilise aussi pour tasser (« plomber ») le sillon en l’utilisant son dos
Les outils pour semer et planter
Le plantoir est enfoncé dans la terre pour planter des légumes à racines nues ou pralinées, par exemple des laitues, poireaux, choux etc… Il permet aussi de borner, geste qui consiste à tasser la terre en profondeur autour des racines.
Le transplantoir permet de planter des plants en mottes en creusant des trous de la taille de la motte.
Le cordeau permet de tracer les rangs et d’aligner les légumes, guider la serfouette pour tracer des sillons etc…
La serfouette sert à tracer des sillons pour les semis ou repiquages.
Autres outils
Le couteau est toujours très utile, pour récolter divers légumes, couper du fil pour tuteurer, habiller les plants, couper les gourmands des tomates etc.
L’arrosoir est indispensable, il permet d’arroser soit au goulot sur des plants déjà bien implantés soit à la pomme pour des semis, afin d’arroser en douceur.
"
)
article_2.photos.attach(io: file_11, filename: "article-2.jpg", content_type: "image/jpg")
article_2.save!

file_12 = URI.open("https://images.ctfassets.net/b85ozb2q358o/f5004387e9df45449f551fc8304decd3935884ec0b1fab511011db081908e541/4d745112ed48aea797e8ccd81a33ab87/image.png")
article_3 = Post.new(
  titre: "Potager - Par où commencer ?",
  categorie: "Tuto",
  date_publication: "17/07/2024",
  contenu: "Quand on débute un potager, sans connaissance de la terre, sans savoir manier les outils, il est préférable de commencer petit ! Je vous conseille pour une première année une surface qui ne dépassera pas 10 m² si vous pensez avoir peu de temps, vous l’agrandirez selon vos résultats l’année suivante. Il est toujours plus encourageant de bien s’occuper de cette petite surface et des quelques plants de légumes, de leur entretien et de l’ensemble des travaux (semis, plantations mais aussi sarclages pour désherber, arrosages…) que de ne pas réussir à gérer une grande parcelle.
Si, à terme, produire vos légumes devient une passion ou une nécessite, sachez qu’un potager de 300 m² (ajoutez 200 m² de verger) bien géré fournit largement assez de petits fruits et de légumes variés pour une famille de 4 personnes, bocaux et conserves compris !
L'emplacement et exposition du potager
Lors de l’aménagement de votre potager il est particulièrement important de rechercher le meilleur ensoleillement possible. La plupart des légumes ont besoin d’être exposés au soleil au moins une bonne partie de la journée. Dans la mesure du possible le potager doit donc être orienté au Sud.
La bonne circulation de l’air est également importante, le potager doit se situé dans un endroit aéré, non confiné, mais idéalement protégé des vents dominants et froids. La présence d’un mur ou d’une haie pas trop haute constitue un avantage pour protéger la parcelle.
Le terrain doit être idéalement plat où en légère pente afin de limiter les risques de lessivage. Ces terrains sont également plus faciles à cultiver. Néanmoins, un terrain à pente trop forte pourra toujours être aménagé en terrasses.
Le terrain doit également être bien drainé : en effet une terre trop humide, qui retient l’eau, entraîne des risques d’asphyxie racinaires.
La qualité de la terre a un rôle capital pour la bonne croissance des légumes car ils y puisent les éléments nécessaire à leur croissance, de l’eau et des sels minéraux. La terre idéale est une terre arable (facile à travailler), profonde, riche en matière organique et vivante en insectes, lombrics, micro-organismes.
Soyez rassurés, cette terre idéale est relativement rare ! Et si vous démarrez votre potager à partir d’une pelouse, vous n’aurez pas ce type de terre immédiatement mais toute terre peut être améliorée !
Aménagements - Quel type de potager ?
Le potager en carrés
Le potager en carrés connaît un grand succès ces dernière années auprès des jardiniers. En effet, ce type de potager, inspiré des potagers médiévaux est très esthétique, il permet de cultiver plus en hauteur, ce qui est particulièrement favorable pour drainer. C’est la solution idéale quand on a une terre lourde.
La méthode consiste à cultiver les légumes au sein de carrés délimités par des planches en bois. Le carré « classique » mesure 1,2 m de côté, il peut ensuite être subdivisé en 9 petits carrés de 40 x 40 cm (ou 16 petits carrés) ce qui permet de semer et planter les légumes selon une manière bien précise. En fonction de leur taille à maturité on choisira une densité par petit carré. Par exemple on placera un plant de tomate dans un petit carré, 2 petits rangs de carottes dans un autre etc…
Le potager traditionnel
Le potager traditionnel, que l’on peut aussi nommer potager en rangs est la méthode classique de culture en pleine terre. Il se rapproche le plus des méthodes de production en maraîchage où l’on cherche à produire sur une même planche une seule espèce de légumes. Ce type de potager s’adapte aux envies de chaque jardinier et peut évoluer vers un potager plus diversifié : le potager en lignes où l’on cherche à associer les cultures pour augmenter la production globale, repousser les ravageurs d’une culture et éviter les monocultures. Ces types de potager demande toutefois de disposer d’espace.
Le potager sur mesure !
Votre potager vous appartient… Vous pouvez aussi « innover » ou prendre des libertés en créant, par exemple, des rectangles de 1,2 m x 3 ou 4 mètres ou encore vous lancer dans un potager rond, façon mandala ! Tout est possible mais gardez à l’esprit que la parcelle ne doit devenir trop difficile à cultiver. Pensez aussi à disposer des allées ou passe-pieds pour pouvoir circuler sans marcher sur la terre cultivée.
Préparer votre terrain
Comment préparer la terre de votre potager
Pour préparer un potager à partir d’une pelouse ou d’une zone enherbée, la première étape est de désherber la zone destinée à être cultivée.
Pour cela vous avez deux possibilités :
Désherber par occultation, en automne. Plus facile mais demandant plusieurs mois, cette technique consiste à recouvrir la parcelle de cartons ou mieux, d’une épaisse couche de paille (au moins 20 cm d’épaisseur). Privée de lumière et d’air, l’herbe va mourir, les racines vont se décomposer. L’occultation est idéale si vous la pratiquez à l’automne, vous trouverez la parcelle « nettoyée » au printemps et pourrez démarrer les semis et plantations rapidement.
Désherber à la houe, au printemps. Plus physique que la technique précédente, cette méthode offre un résultat immédiat. Pour désherber à la houe, commencez par vous échauffer… puis, à l’aide d’une houe ou d’une bêche, retirer toute la pelouse ou l’herbe, racines comprises. Pour bien retirer toutes les racines, il faut décaper au moins 5 centimètres de sol.  Cette technique sera faite au printemps.
Votre sol est maintenant à nu, il faut maintenant l’ameublir, de le décompacter en profondeur. Et nous sommes au regret de vous annoncer que cette étape n’est pas facultative, elle conditionne en très grande partie la réussite de votre potager.
En effet, pour bien croître, les racines des légumes ont besoin de pouvoir explorer facilement la terre. Si cette dernière est tassée et imperméable, les racines vont avoir de la peine pour aller chercher l’eau et les nutriments nécessaires à leur croissance. Le résultat ne se fera pas attendre : vos graines auront du mal à lever, vos plants peineront à s’enraciner et, dans le meilleur des cas, vos légumes resteront chétifs.
Pour décompacter en profondeur, tout en respectant le sol, munissez-vous d’une grelinette ou une fourche-bêche puis procédez de la façon suivante :
Plantez l’outil de toute sa longueur dans la terre puis par un mouvement de bascule,  soulevez la terre, sans la retourner.
Progressez en reculant (ce serait dommage de marcher sur une terre décompactée !) pour toute la parcelle
A l’aide d’une griffe, cassez les grosses mottes afin d’affiner la structure de la terre.
Attention, il s’agit bien de décompacter et non de retourner la terre. Même si votre grand-père le faisait, c’est une technique désormais déconseillée car nuisible pour la vie du sol.
La dernière étape est de fertiliser la parcelle afin de nourrir le sol pour nourrir les légumes. Pour cela vous allez ajouter du compost. Comptez environ 3 kg de compost par m². Épandez-le sur la terre puis intégrez-le à la couche superficielle de la terre à l’aide d’une griffe. Vous pouvez utiliser également du fumier en granulés, très pratique et facile d’utilisation. Découvrez notre vidéo pour bien utiliser le fumier au jardin ou au potager. Finissez l’opération en nivelant et en cassant les plus petites mottes à l’aide de la griffe puis du râteau.
Votre parcelle est maintenant prête à recevoir vos semis et plantations !"
)
article_3.photos.attach(io: file_12, filename: "article-2.jpg", content_type: "image/jpg")
article_3.save!

file_13 = URI.open("https://www.cultiver-responsable.com/wp-content/uploads/sites/3/2020/06/zone-permaculture-connaissance.jpg")
article_4 = Post.new(
  titre: "Tout savoir sur la permaculture",
  categorie: "Tuto",
  date_publication: "15/07/2024",
  contenu: "La permaculture, c’est quoi exactement ?
À la fois ancestrale et innovante, la permaculture reprend et améliore les enseignements de la nature pour viser l’abondance et l’autonomie alimentaire. Ce principe de culture permanente, créé par le biologiste Bill Mollison dans les années 1970 en Australie, fait grand bruit actuellement. Principalement parce qu’il est utilisé dans les potagers urbains se développant dans le monde entier, en lien avec le mouvement des Incroyables Comestibles.
Son but ultime : nourrir tous les hommes de la planète, et de manière durable. Quel pari ! « C’est un mouvement qui a gagné de l’ampleur en quelques années, explique Carine Mayo, auteur du Guide de la Permaculture. Il apporte des réponses à ceux qui veulent inventer une société moins dépendante du pétrole ou simplement retrouver un lien avec la nature en cultivant leur jardin ».
À contre-courant de l’agriculture moderne
« À cause de la monoculture et de l’utilisation d’engrais chimiques, de nombreuses zones agricoles sont de moins en moins utilisables, indique Karel Schelfhout, auteur du Bio Grow Book.
Basée sur  la création d’écosystèmes, la permaculture offre alors à la fois un nouveau souffle à la terre, un nouveau rôle au jardinier, un nouvel espoir pour la santé et la consommation de végétaux ». Bill Mollison décrit dans son livre son objectif : « Qu’il soit possible de récolter sans semer chaque année, de protéger le sol sous un couvert permanent, de mieux associer cultures et boisement… [Cela] correspond à tant de réalités observées en France et dans le monde, à tant d’ingénieux procédés de paysans permaculteurs sans le savoir ! ». Le livre de Bill Mollison montre que cette notion dépasse largement un système d’agriculture : c’est une nouvelle vision de l’homme dans son milieu local. Un bel encouragement pour re-végétaliser nos jardins selon cette méthode !
Les principes de la permaculture
La forêt, constituée de plusieurs écosystèmes qui interagissent, est le modèle de base : un sol protégé en permanence, non seulement par un paillage naturel mais aussi par l’absence de tout travail mécanique, produit toxique ou d’engrais chimique, l’alliance de différents végétaux et la présence forte de plantes pluriannuelles sans oublier la présence d’animaux, mammifères et poissons, qui participent à cet écosystème.
Il s’agit ensuite, pour nos jardins, d’adapter ces principes à des parcelles à taille humaine : « C’est une agriculture de la photosynthèse, précise Bill Mollison. La première chose à faire est donc d’utiliser au mieux l’énergie gratuite du soleil ; d’où le souci de superposer aussi souvent que possible 2 ou 3 étages de végétation ». Au fil des années, les plantes se ressèment, l’arrosage est limité, le jardinier est là uniquement pour observer, faire quelques ajustements réfléchis et récolter uniquement ce dont il a besoin.
Une nouvelle conception du jardin… nourricier
« Cette approche donne des résultats étonnants dans les jardins, se réjouit Carine Mayo. Idéale pour ceux qui veulent produire eux-mêmes leur nourriture, la permaculture est bien plus qu’une méthode de culture, c’est une philosophie, une démarche globale qui s’appuie sur une éthique reposant sur trois piliers : prendre soin de la Terre, prendre soin des humains, partager équitablement les ressources et les récoltes ». Sepp & Margit Brunner, auteurs de La permaculture pour tous, assurent qu’elle correspond même à « une nouvelle vision du monde »"
)
article_4.photos.attach(io: file_13, filename: "article-4.jpg", content_type: "image/jpg")
article_4.save!

List.create(
  nom: "Légumes",
  user: User.fifth
)

Neighbour.create(
  voisin: "Bon voisin",
  plant_1: Plant.where(name: "Ail").first,
  plant_2: Plant.where(name: "Artichaut").first
)

Neighbour.create(
  voisin: "Mauvais voisin",
  plant_1: Plant.last,
  plant_2: Plant.second
)
