import '../models/video_game.dart';

const List<VideoGame> gamesData = [
  VideoGame(
    id: 1,
    title: 'The Witcher 3 : Wild Hunt',
    description:
        'Un RPG en monde ouvert où vous incarnez Geralt de Riv, un chasseur de monstres à la recherche de sa fille adoptive.',
    imageUrl:
        'https://cdn.cloudflare.steamstatic.com/steam/apps/292030/header.jpg',
    genre: 'RPG',
    price: 39.99,
  ),
  VideoGame(
    id: 2,
    title: 'Elden Ring',
    description:
        'Un action-RPG en monde ouvert développé par FromSoftware et George R.R. Martin, au défi redoutable.',
    imageUrl:
        'https://cdn.cloudflare.steamstatic.com/steam/apps/1245620/header.jpg',
    genre: 'Action-RPG',
    price: 59.99,
  ),
  VideoGame(
    id: 3,
    title: 'Cyberpunk 2077',
    description:
        'Un RPG en monde ouvert dans la mégapole futuriste de Night City où vous jouez V, un mercenaire.',
    imageUrl:
        'https://cdn.cloudflare.steamstatic.com/steam/apps/1091500/header.jpg',
    genre: 'RPG',
    price: 49.99,
  ),
  VideoGame(
    id: 4,
    title: 'Red Dead Redemption 2',
    description:
        'Une épopée western en monde ouvert qui suit Arthur Morgan et le gang Van der Linde dans l\'Amérique de 1899.',
    imageUrl:
        'https://cdn.cloudflare.steamstatic.com/steam/apps/1174180/header.jpg',
    genre: 'Action-Aventure',
    price: 59.99,
  ),
  VideoGame(
    id: 5,
    title: 'Grand Theft Auto V',
    description:
        'Un jeu d\'action en monde ouvert se déroulant à Los Santos, suivi de son célèbre mode en ligne GTA Online.',
    imageUrl:
        'https://cdn.cloudflare.steamstatic.com/steam/apps/271590/header.jpg',
    genre: 'Action',
    price: 29.99,
  ),
  VideoGame(
    id: 6,
    title: 'Dark Souls III',
    description:
        'Un action-RPG exigeant vous plongeant dans un monde sombre et mourant, le dernier chapitre de la série Dark Souls.',
    imageUrl:
        'https://cdn.cloudflare.steamstatic.com/steam/apps/374320/header.jpg',
    genre: 'Action-RPG',
    price: 39.99,
  ),
  VideoGame(
    id: 7,
    title: 'Hades',
    description:
        'Un roguelite d\'action où vous incarnez Zagreus, fils du dieu des Enfers, tentant de s\'échapper du royaume de son père.',
    imageUrl:
        'https://cdn.cloudflare.steamstatic.com/steam/apps/1145360/header.jpg',
    genre: 'Roguelite',
    price: 24.99,
  ),
  VideoGame(
    id: 8,
    title: 'Hollow Knight',
    description:
        'Un metroidvania en 2D aux graphismes dessinés à la main, se déroulant dans un vaste royaume d\'insectes souterrain.',
    imageUrl:
        'https://cdn.cloudflare.steamstatic.com/steam/apps/367520/header.jpg',
    genre: 'Metroidvania',
    price: 14.99,
  ),
  VideoGame(
    id: 9,
    title: 'Stardew Valley',
    description:
        'Un jeu de simulation de ferme où vous héritez de la propriété de votre grand-père et bâtissez votre vie à la campagne.',
    imageUrl:
        'https://cdn.cloudflare.steamstatic.com/steam/apps/413150/header.jpg',
    genre: 'Simulation',
    price: 13.99,
  ),
  VideoGame(
    id: 10,
    title: 'Portal 2',
    description:
        'Un jeu de réflexion à la première personne utilisant un pistolet à portails pour résoudre des énigmes tordues.',
    imageUrl:
        'https://cdn.cloudflare.steamstatic.com/steam/apps/620/header.jpg',
    genre: 'Puzzle',
    price: 9.99,
  ),
  VideoGame(
    id: 11,
    title: 'God of War',
    description:
        'Kratos et son fils Atreus traversent les neuf royaumes nordiques dans ce reboot épique de la saga God of War.',
    imageUrl:
        'https://cdn.cloudflare.steamstatic.com/steam/apps/1593500/header.jpg',
    genre: 'Action-Aventure',
    price: 49.99,
  ),
  VideoGame(
    id: 12,
    title: 'Sekiro: Shadows Die Twice',
    description:
        'Un action-aventure exigeant dans le Japon féodal où vous incarnez un shinobi cherchant à sauver son seigneur.',
    imageUrl:
        'https://cdn.cloudflare.steamstatic.com/steam/apps/814380/header.jpg',
    genre: 'Action',
    price: 59.99,
  ),
  VideoGame(
    id: 13,
    title: 'NieR: Automata',
    description:
        'Un action-RPG futuriste où des androïdes affrontent des machines dans un monde post-apocalyptique riche en rebondissements.',
    imageUrl:
        'https://cdn.cloudflare.steamstatic.com/steam/apps/524220/header.jpg',
    genre: 'Action-RPG',
    price: 39.99,
  ),
  VideoGame(
    id: 14,
    title: 'Celeste',
    description:
        'Un jeu de plateforme difficile mais bienveillant où Madeline gravit la montagne Celeste tout en affrontant ses démons intérieurs.',
    imageUrl:
        'https://cdn.cloudflare.steamstatic.com/steam/apps/504230/header.jpg',
    genre: 'Plateforme',
    price: 19.99,
  ),
  VideoGame(
    id: 15,
    title: 'Dead Cells',
    description:
        'Un roguelite-metroidvania où chaque mort est un apprentissage dans un château en perpétuelle mutation.',
    imageUrl:
        'https://cdn.cloudflare.steamstatic.com/steam/apps/588650/header.jpg',
    genre: 'Roguelite',
    price: 24.99,
  ),
  VideoGame(
    id: 16,
    title: 'Terraria',
    description:
        'Un jeu de survie et d\'exploration en 2D avec des centaines d\'heures de contenu, d\'artisanat et de boss à affronter.',
    imageUrl:
        'https://cdn.cloudflare.steamstatic.com/steam/apps/105600/header.jpg',
    genre: 'Survie',
    price: 9.99,
  ),
  VideoGame(
    id: 17,
    title: 'Undertale',
    description:
        'Un RPG unique où vous pouvez négocier avec les ennemis plutôt que de les combattre, avec des choix qui influencent l\'histoire.',
    imageUrl:
        'https://cdn.cloudflare.steamstatic.com/steam/apps/391540/header.jpg',
    genre: 'RPG',
    price: 9.99,
  ),
  VideoGame(
    id: 18,
    title: 'Cuphead',
    description:
        'Un jeu de run & gun aux graphismes inspirés des dessins animés des années 30, réputé pour sa difficulté.',
    imageUrl:
        'https://cdn.cloudflare.steamstatic.com/steam/apps/456740/header.jpg',
    genre: 'Run & Gun',
    price: 19.99,
  ),
  VideoGame(
    id: 19,
    title: 'Factorio',
    description:
        'Un jeu de stratégie et de gestion où vous construisez et optimisez des usines automatisées sur une planète alien.',
    imageUrl:
        'https://cdn.cloudflare.steamstatic.com/steam/apps/427520/header.jpg',
    genre: 'Stratégie',
    price: 35.00,
  ),
  VideoGame(
    id: 20,
    title: 'Risk of Rain 2',
    description:
        'Un shooter roguelite en 3D où vous affrontez des vagues d\'ennemis extraterrestres en montant en puissance.',
    imageUrl:
        'https://cdn.cloudflare.steamstatic.com/steam/apps/632360/header.jpg',
    genre: 'Roguelite',
    price: 24.99,
  ),
  VideoGame(
    id: 21,
    title: 'Monster Hunter: World',
    description:
        'Partez à la chasse de créatures colossales dans des écosystèmes vivants et forgez des équipements à partir de leurs matériaux.',
    imageUrl:
        'https://cdn.cloudflare.steamstatic.com/steam/apps/582010/header.jpg',
    genre: 'Action-RPG',
    price: 29.99,
  ),
  VideoGame(
    id: 22,
    title: 'Rust',
    description:
        'Un jeu de survie multijoueur en monde ouvert où vous devez récolter des ressources, construire et survivre face aux autres joueurs.',
    imageUrl:
        'https://cdn.cloudflare.steamstatic.com/steam/apps/252490/header.jpg',
    genre: 'Survie',
    price: 39.99,
  ),
  VideoGame(
    id: 23,
    title: 'Left 4 Dead 2',
    description:
        'Un FPS coopératif à 4 joueurs contre des hordes de zombies, avec des scénarios variés et une rejouabilité élevée.',
    imageUrl:
        'https://cdn.cloudflare.steamstatic.com/steam/apps/550/header.jpg',
    genre: 'FPS',
    price: 9.99,
  ),
  VideoGame(
    id: 24,
    title: 'Team Fortress 2',
    description:
        'Un FPS multijoueur class-based culte opposant deux équipes de mercenaires dans des modes variés et décalés.',
    imageUrl:
        'https://cdn.cloudflare.steamstatic.com/steam/apps/440/header.jpg',
    genre: 'FPS',
    price: null,
  ),
  VideoGame(
    id: 25,
    title: 'Counter-Strike 2',
    description:
        'Le FPS tactique compétitif par excellence où deux équipes s\'affrontent dans des parties de 5 contre 5.',
    imageUrl:
        'https://cdn.cloudflare.steamstatic.com/steam/apps/730/header.jpg',
    genre: 'FPS',
    price: null,
  ),
  VideoGame(
    id: 26,
    title: 'Dota 2',
    description:
        'Un MOBA stratégique en 5v5 avec plus de 100 héros, où deux équipes s\'affrontent pour détruire l\'Ancien adverse.',
    imageUrl:
        'https://cdn.cloudflare.steamstatic.com/steam/apps/570/header.jpg',
    genre: 'MOBA',
    price: null,
  ),
  VideoGame(
    id: 27,
    title: 'Ori and the Blind Forest',
    description:
        'Un jeu de plateforme visuellement époustouflant narrant l\'histoire d\'un esprit de la forêt cherchant à sauver son monde.',
    imageUrl:
        'https://cdn.cloudflare.steamstatic.com/steam/apps/261570/header.jpg',
    genre: 'Plateforme',
    price: 19.99,
  ),
  VideoGame(
    id: 28,
    title: 'Rocket League',
    description:
        'Un jeu de sport futuriste mêlant football et voitures boostées dans des arènes spectaculaires.',
    imageUrl:
        'https://cdn.cloudflare.steamstatic.com/steam/apps/252950/header.jpg',
    genre: 'Sport',
    price: null,
  ),
  VideoGame(
    id: 29,
    title: 'Fall Guys',
    description:
        'Un battle royale festif où 60 joueurs s\'affrontent dans des mini-jeux chaotiques pour être le dernier debout.',
    imageUrl:
        'https://cdn.cloudflare.steamstatic.com/steam/apps/1097150/header.jpg',
    genre: 'Battle Royale',
    price: null,
  ),
  VideoGame(
    id: 30,
    title: 'Apex Legends',
    description:
        'Un battle royale FPS par équipes de 3 avec des légendes aux capacités uniques dans un univers de science-fiction.',
    imageUrl:
        'https://cdn.cloudflare.steamstatic.com/steam/apps/1172470/header.jpg',
    genre: 'Battle Royale',
    price: null,
  ),
  VideoGame(
    id: 31,
    title: 'Shovel Knight',
    description:
        'Un jeu de plateforme rétro hommage aux classiques NES, où vous incarnez un chevalier armé d\'une pelle héroïque.',
    imageUrl:
        'https://cdn.cloudflare.steamstatic.com/steam/apps/250760/header.jpg',
    genre: 'Plateforme',
    price: 24.99,
  ),
  VideoGame(
    id: 32,
    title: 'Half-Life: Alyx',
    description:
        'Un FPS en réalité virtuelle révolutionnaire se déroulant entre Half-Life et Half-Life 2, exclusif à la VR.',
    imageUrl:
        'https://cdn.cloudflare.steamstatic.com/steam/apps/546560/header.jpg',
    genre: 'FPS',
    price: 59.99,
  ),
  VideoGame(
    id: 33,
    title: 'Among Us',
    description:
        'Un jeu de déduction sociale où des astronautes tentent d\'identifier des imposteurs dissimulés parmi l\'équipage.',
    imageUrl:
        'https://cdn.cloudflare.steamstatic.com/steam/apps/945360/header.jpg',
    genre: 'Social Déduction',
    price: 4.99,
  ),
  VideoGame(
    id: 34,
    title: 'PUBG: Battlegrounds',
    description:
        'Le battle royale original : 100 joueurs parachutés sur une île, un seul survivant. Chicken dinner !',
    imageUrl:
        'https://cdn.cloudflare.steamstatic.com/steam/apps/578080/header.jpg',
    genre: 'Battle Royale',
    price: null,
  ),
  VideoGame(
    id: 35,
    title: 'Disco Elysium',
    description:
        'Un RPG narratif unique où vous jouez un détective amnésique tentant de résoudre un meurtre dans une ville en crise.',
    imageUrl:
        'https://cdn.cloudflare.steamstatic.com/steam/apps/632470/header.jpg',
    genre: 'RPG',
    price: 39.99,
  ),
];
