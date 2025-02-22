import 'package:flutter/material.dart';

const prefsRecentsKey = "font_picker_recents";
const fontWeightValues = {
  "100": FontWeight.w100,
  "200": FontWeight.w200,
  "300": FontWeight.w300,
  "400": FontWeight.w400,
  "500": FontWeight.w500,
  "600": FontWeight.w600,
  "700": FontWeight.w700,
  "800": FontWeight.w800,
  "900": FontWeight.w900,
};

const googleFontCategories = [
  'serif',
  'sans-serif',
  'display',
  'handwriting',
  'monospace'
];

const googleFontLanguages = {
  'all': 'All languages',
  'arabic': 'Arabic',
  'bengali': 'Bengali',
  'chinese-hongkong': 'Chinese (Hong Kong)',
  'chinese-simplified': 'Chinese (Simplified',
  'chinese-traditional': 'Chinese (Traditional)',
  'cyrillic': 'Cyrillic',
  'cyrillic-ext': 'Cyrillic Extended',
  'devanagari': 'Devanagari',
  'greek': 'Greek',
  'greek-ext': 'Greek Extended',
  'gujarati': 'Gujarati',
  'gurmukhi': 'Gurmukhi',
  'hebrew': 'Hebrew',
  'japanese': 'Japanese',
  'kannada': 'Kannada',
  'khmer': 'Khmer',
  'korean': 'Korean',
  'latin': 'Latin',
  'latin-ext': 'Latin Extended',
  'malayalam': 'Malayalam',
  'myanmar': 'Myanmar',
  'oriya': 'Oriya',
  'sinhala': 'Sinhala',
  'tamil': 'Tamil',
  'telugu': 'Telugu',
  'thai': 'Thai',
  'tibetan': 'Tibetan',
  'vietnamese': 'Vietnamese'
};

const googleFontsList = [
  "Noto Sans",
  "Noto Serif",
  "ABeeZee",
  "Abel",
  "Abhaya Libre",
  "Abril Fatface",
  "Aclonica",
  "Acme",
  "Actor",
  "Adamina",
  "Advent Pro",
  "Aguafina Script",
  "Akronim",
  "Aladin",
  "Alata",
  "Alatsi",
  "Aldrich",
  "Alef",
  "Alegreya",
  "Alegreya SC",
  "Alegreya Sans",
  "Alegreya Sans SC",
  "Aleo",
  "Alex Brush",
  "Alfa Slab One",
  "Alice",
  "Alike",
  "Alike Angular",
  "Allan",
  "Allerta",
  "Allerta Stencil",
  "Allura",
  "Almarai",
  "Almendra",
  "Almendra Display",
  "Almendra SC",
  "Amarante",
  "Amaranth",
  "Amatic SC",
  "Amethysta",
  "Amiko",
  "Amiri",
  "Amita",
  "Anaheim",
  "Andada",
  "Andika",
  "Andika New Basic",
  "Annie Use Your Telescope",
  "Anonymous Pro",
  "Antic",
  "Antic Didone",
  "Antic Slab",
  "Anton",
  "Arapey",
  "Arbutus",
  "Arbutus Slab",
  "Architects Daughter",
  "Archivo",
  "Archivo Black",
  "Archivo Narrow",
  "Aref Ruqaa",
  "Arima Madurai",
  "Arimo",
  "Arizonia",
  "Armata",
  "Arsenal",
  "Artifika",
  "Arvo",
  "Arya",
  "Asap",
  "Asar",
  "Asset",
  "Assistant",
  "Astloch",
  "Asul",
  "Athiti",
  "Atma",
  "Atomic Age",
  "Aubrey",
  "Audiowide",
  "Autour One",
  "Average",
  "Average Sans",
  "Averia Gruesa Libre",
  "Averia Libre",
  "Averia Sans Libre",
  "Averia Serif Libre",
  "B612",
  "B612 Mono",
  "Bad Script",
  "Bahiana",
  "Bahianita",
  "Bai Jamjuree",
  "Balsamiq Sans",
  "Balthazar",
  "Bangers",
  "Barlow",
  "Barlow Condensed",
  "Barlow Semi Condensed",
  "Barriecito",
  "Barrio",
  "Basic",
  "Baskervville",
  "Baumans",
  "Be Vietnam",
  "Bebas Neue",
  "Belgrano",
  "Bellefair",
  "Belleza",
  "Bellota",
  "Bellota Text",
  "BenchNine",
  "Bentham",
  "Berkshire Swash",
  "Beth Ellen",
  "Bevan",
  "Big Shoulders Display",
  "Big Shoulders Inline Display",
  "Big Shoulders Inline Text",
  "Big Shoulders Stencil Display",
  "Big Shoulders Stencil Text",
  "Big Shoulders Text",
  "Bigelow Rules",
  "Bigshot One",
  "Bilbo",
  "Bilbo Swash Caps",
  "BioRhyme",
  "BioRhyme Expanded",
  "Biryani",
  "Bitter",
  "Black And White Picture",
  "Black Han Sans",
  "Black Ops One",
  "Blinker",
  "Bonbon",
  "Boogaloo",
  "Bowlby One",
  "Bowlby One SC",
  "Brawler",
  "Bree Serif",
  "Bubblegum Sans",
  "Bubbler One",
  "Buda",
  "Buenard",
  "Bungee",
  "Bungee Hairline",
  "Bungee Inline",
  "Bungee Outline",
  "Bungee Shade",
  "Butcherman",
  "Butterfly Kids",
  "Cabin",
  "Cabin Condensed",
  "Cabin Sketch",
  "Caesar Dressing",
  "Cagliostro",
  "Cairo",
  "Caladea",
  "Calistoga",
  "Calligraffitti",
  "Cambay",
  "Cambo",
  "Candal",
  "Cantarell",
  "Cantata One",
  "Cantora One",
  "Capriola",
  "Cardo",
  "Carme",
  "Carrois Gothic",
  "Carrois Gothic SC",
  "Carter One",
  "Castoro",
  "Catamaran",
  "Caudex",
  "Caveat",
  "Caveat Brush",
  "Cedarville Cursive",
  "Ceviche One",
  "Chakra Petch",
  "Changa",
  "Changa One",
  "Chango",
  "Charm",
  "Charmonman",
  "Chathura",
  "Chau Philomene One",
  "Chela One",
  "Chelsea Market",
  "Cherry Cream Soda",
  "Cherry Swash",
  "Chewy",
  "Chicle",
  "Chilanka",
  "Chivo",
  "Chonburi",
  "Cinzel",
  "Cinzel Decorative",
  "Clicker Script",
  "Coda",
  "Coda Caption",
  "Codystar",
  "Coiny",
  "Combo",
  "Comfortaa",
  "Comic Neue",
  "Coming Soon",
  "Commissioner",
  "Concert One",
  "Condiment",
  "Contrail One",
  "Convergence",
  "Cookie",
  "Copse",
  "Corben",
  "Cormorant",
  "Cormorant Garamond",
  "Cormorant Infant",
  "Cormorant SC",
  "Cormorant Unicase",
  "Cormorant Upright",
  "Courgette",
  "Courier Prime",
  "Cousine",
  "Coustard",
  "Covered By Your Grace",
  "Crafty Girls",
  "Creepster",
  "Crete Round",
  "Crimson Pro",
  "Crimson Text",
  "Croissant One",
  "Crushed",
  "Cuprum",
  "Cute Font",
  "Cutive",
  "Cutive Mono",
  "DM Mono",
  "DM Sans",
  "DM Serif Display",
  "DM Serif Text",
  "Damion",
  "Dancing Script",
  "Darker Grotesque",
  "David Libre",
  "Dawning of a New Day",
  "Days One",
  "Dekko",
  "Delius",
  "Delius Swash Caps",
  "Delius Unicase",
  "Della Respira",
  "Denk One",
  "Devonshire",
  "Dhurjati",
  "Didact Gothic",
  "Diplomata",
  "Diplomata SC",
  "Do Hyeon",
  "Dokdo",
  "Domine",
  "Donegal One",
  "Doppio One",
  "Dorsa",
  "Dosis",
  "Dr Sugiyama",
  "Duru Sans",
  "Dynalight",
  "EB Garamond",
  "Eagle Lake",
  "East Sea Dokdo",
  "Eater",
  "Economica",
  "Eczar",
  "El Messiri",
  "Electrolize",
  "Elsie",
  "Elsie Swash Caps",
  "Emblema One",
  "Emilys Candy",
  "Encode Sans",
  "Encode Sans Condensed",
  "Encode Sans Expanded",
  "Encode Sans Semi Condensed",
  "Encode Sans Semi Expanded",
  "Engagement",
  "Englebert",
  "Enriqueta",
  "Epilogue",
  "Erica One",
  "Esteban",
  "Euphoria Script",
  "Ewert",
  "Exo",
  "Exo 2",
  "Expletus Sans",
  "Fahkwang",
  "Fanwood Text",
  "Farro",
  "Farsan",
  "Fascinate",
  "Fascinate Inline",
  "Faster One",
  "Fauna One",
  "Faustina",
  "Federant",
  "Federo",
  "Felipa",
  "Fenix",
  "Finger Paint",
  "Fira Code",
  "Fira Mono",
  "Fira Sans",
  "Fira Sans Condensed",
  "Fira Sans Extra Condensed",
  "Fjalla One",
  "Fjord One",
  "Flamenco",
  "Flavors",
  "Fondamento",
  "Fontdiner Swanky",
  "Forum",
  "Francois One",
  "Frank Ruhl Libre",
  "Freckle Face",
  "Fredericka the Great",
  "Fredoka One",
  "Fresca",
  "Frijole",
  "Fruktur",
  "Fugaz One",
  "GFS Didot",
  "GFS Neohellenic",
  "Gabriela",
  "Gaegu",
  "Gafata",
  "Galada",
  "Galdeano",
  "Galindo",
  "Gamja Flower",
  "Gayathri",
  "Gelasio",
  "Gentium Basic",
  "Gentium Book Basic",
  "Geo",
  "Geostar",
  "Geostar Fill",
  "Germania One",
  "Gidugu",
  "Gilda Display",
  "Girassol",
  "Give You Glory",
  "Glass Antiqua",
  "Glegoo",
  "Gloria Hallelujah",
  "Goblin One",
  "Gochi Hand",
  "Goldman",
  "Gorditas",
  "Gothic A1",
  "Gotu",
  "Goudy Bookletter 1911",
  "Graduate",
  "Grand Hotel",
  "Grandstander",
  "Gravitas One",
  "Great Vibes",
  "Grenze",
  "Grenze Gotisch",
  "Griffy",
  "Gruppo",
  "Gudea",
  "Gugi",
  "Gupter",
  "Gurajada",
  "Habibi",
  "Halant",
  "Hammersmith One",
  "Hanalei",
  "Hanalei Fill",
  "Handlee",
  "Happy Monkey",
  "Harmattan",
  "Headland One",
  "Heebo",
  "Henny Penny",
  "Hepta Slab",
  "Herr Von Muellerhoff",
  "Hi Melody",
  "Hind",
  "Hind Guntur",
  "Hind Madurai",
  "Hind Siliguri",
  "Hind Vadodara",
  "Holtwood One SC",
  "Homemade Apple",
  "Homenaje",
  "IBM Plex Mono",
  "IBM Plex Sans",
  "IBM Plex Sans Condensed",
  "IBM Plex Serif",
  "IM Fell DW Pica",
  "IM Fell DW Pica SC",
  "IM Fell Double Pica",
  "IM Fell Double Pica SC",
  "IM Fell English",
  "IM Fell English SC",
  "IM Fell French Canon",
  "IM Fell French Canon SC",
  "IM Fell Great Primer",
  "IM Fell Great Primer SC",
  "Ibarra Real Nova",
  "Iceberg",
  "Iceland",
  "Imprima",
  "Inconsolata",
  "Inder",
  "Indie Flower",
  "Inika",
  "Inknut Antiqua",
  "Inria Sans",
  "Inria Serif",
  "Inter",
  "Irish Grover",
  "Istok Web",
  "Italiana",
  "Italianno",
  "Itim",
  "Jacques Francois",
  "Jacques Francois Shadow",
  "Jaldi",
  "JetBrains Mono",
  "Jim Nightshade",
  "Jockey One",
  "Jolly Lodger",
  "Jomhuria",
  "Jomolhari",
  "Josefin Sans",
  "Josefin Slab",
  "Jost",
  "Joti One",
  "Jua",
  "Judson",
  "Julee",
  "Julius Sans One",
  "Junge",
  "Jura",
  "Just Another Hand",
  "Just Me Again Down Here",
  "K2D",
  "Kadwa",
  "Kalam",
  "Kameron",
  "Kanit",
  "Kantumruy",
  "Karla",
  "Karma",
  "Katibeh",
  "Kaushan Script",
  "Kavivanar",
  "Kavoon",
  "Kdam Thmor",
  "Keania One",
  "Kelly Slab",
  "Kenia",
  "Khand",
  "Khula",
  "Kirang Haerang",
  "Kite One",
  "Knewave",
  "KoHo",
  "Kodchasan",
  "Kosugi",
  "Kosugi Maru",
  "Kotta One",
  "Kranky",
  "Kreon",
  "Kristi",
  "Krona One",
  "Krub",
  "Kufam",
  "Kulim Park",
  "Kumar One",
  "Kumar One Outline",
  "Kumbh Sans",
  "Kurale",
  "La Belle Aurore",
  "Lacquer",
  "Laila",
  "Lakki Reddy",
  "Lalezar",
  "Lancelot",
  "Langar",
  "Lateef",
  "Lato",
  "League Script",
  "Leckerli One",
  "Ledger",
  "Lekton",
  "Lemon",
  "Lemonada",
  "Lexend Deca",
  "Lexend Exa",
  "Lexend Giga",
  "Lexend Mega",
  "Lexend Peta",
  "Lexend Tera",
  "Lexend Zetta",
  "Libre Barcode 128",
  "Libre Barcode 128 Text",
  "Libre Barcode 39",
  "Libre Barcode 39 Extended",
  "Libre Barcode 39 Extended Text",
  "Libre Barcode 39 Text",
  "Libre Baskerville",
  "Libre Caslon Display",
  "Libre Caslon Text",
  "Libre Franklin",
  "Life Savers",
  "Lilita One",
  "Lily Script One",
  "Limelight",
  "Linden Hill",
  "Literata",
  "Liu Jian Mao Cao",
  "Livvic",
  "Lobster",
  "Lobster Two",
  "Londrina Outline",
  "Londrina Shadow",
  "Londrina Sketch",
  "Londrina Solid",
  "Long Cang",
  "Lora",
  "Love Ya Like A Sister",
  "Loved by the King",
  "Lovers Quarrel",
  "Luckiest Guy",
  "Lusitana",
  "Lustria",
  "M PLUS 1p",
  "M PLUS Rounded 1c",
  "Ma Shan Zheng",
  "Macondo",
  "Macondo Swash Caps",
  "Mada",
  "Magra",
  "Maiden Orange",
  "Maitree",
  "Major Mono Display",
  "Mako",
  "Mali",
  "Mallanna",
  "Mandali",
  "Manjari",
  "Manrope",
  "Mansalva",
  "Manuale",
  "Marcellus",
  "Marcellus SC",
  "Marck Script",
  "Margarine",
  "Markazi Text",
  "Marko One",
  "Marmelad",
  "Martel",
  "Martel Sans",
  "Marvel",
  "Mate",
  "Mate SC",
  "Maven Pro",
  "McLaren",
  "Meddon",
  "MedievalSharp",
  "Medula One",
  "Meera Inimai",
  "Megrim",
  "Meie Script",
  "Merienda",
  "Merienda One",
  "Merriweather",
  "Merriweather Sans",
  "Metal Mania",
  "Metamorphous",
  "Metrophobic",
  "Michroma",
  "Milonga",
  "Miltonian",
  "Miltonian Tattoo",
  "Mina",
  "Miniver",
  "Miriam Libre",
  "Mirza",
  "Miss Fajardose",
  "Mitr",
  "Modak",
  "Modern Antiqua",
  "Mogra",
  "Molengo",
  "Molle",
  "Monda",
  "Monofett",
  "Monoton",
  "Monsieur La Doulaise",
  "Montaga",
  "Montez",
  "Montserrat",
  "Montserrat Alternates",
  "Montserrat Subrayada",
  "Mountains of Christmas",
  "Mouse Memoirs",
  "Mr Bedfort",
  "Mr Dafoe",
  "Mr De Haviland",
  "Mrs Saint Delafield",
  "Mrs Sheppards",
  "Mukta",
  "Mukta Mahee",
  "Mukta Malar",
  "Mukta Vaani",
  "Mulish",
  "MuseoModerno",
  "Mystery Quest",
  "NTR",
  "Nanum Brush Script",
  "Nanum Gothic",
  "Nanum Gothic Coding",
  "Nanum Myeongjo",
  "Nanum Pen Script",
  "Nerko One",
  "Neucha",
  "Neuton",
  "New Rocker",
  "News Cycle",
  "Niconne",
  "Niramit",
  "Nixie One",
  "Nobile",
  "Norican",
  "Nosifer",
  "Notable",
  "Nothing You Could Do",
  "Noticia Text",
  "Nova Cut",
  "Nova Flat",
  "Nova Mono",
  "Nova Oval",
  "Nova Round",
  "Nova Script",
  "Nova Slim",
  "Nova Square",
  "Numans",
  "Nunito",
  "Nunito Sans",
  "Odibee Sans",
  "Odor Mean Chey",
  "Offside",
  "Old Standard TT",
  "Oldenburg",
  "Oleo Script",
  "Oleo Script Swash Caps",
  "Open Sans",
  "Open Sans Condensed",
  "Oranienbaum",
  "Orbitron",
  "Oregano",
  "Orienta",
  "Original Surfer",
  "Oswald",
  "Over the Rainbow",
  "Overlock",
  "Overlock SC",
  "Overpass",
  "Overpass Mono",
  "Ovo",
  "Oxanium",
  "Oxygen",
  "Oxygen Mono",
  "PT Mono",
  "PT Sans",
  "PT Sans Caption",
  "PT Sans Narrow",
  "PT Serif",
  "PT Serif Caption",
  "Pacifico",
  "Padauk",
  "Palanquin",
  "Palanquin Dark",
  "Pangolin",
  "Paprika",
  "Parisienne",
  "Passero One",
  "Passion One",
  "Pathway Gothic One",
  "Patrick Hand",
  "Patrick Hand SC",
  "Pattaya",
  "Patua One",
  "Pavanam",
  "Paytone One",
  "Peddana",
  "Peralta",
  "Permanent Marker",
  "Petit Formal Script",
  "Petrona",
  "Philosopher",
  "Piazzolla",
  "Piedra",
  "Pinyon Script",
  "Pirata One",
  "Plaster",
  "Play",
  "Playball",
  "Playfair Display",
  "Playfair Display SC",
  "Podkova",
  "Poiret One",
  "Poller One",
  "Poly",
  "Pompiere",
  "Pontano Sans",
  "Poor Story",
  "Poppins",
  "Port Lligat Sans",
  "Port Lligat Slab",
  "Pragati Narrow",
  "Prata",
  "Press Start 2P",
  "Pridi",
  "Princess Sofia",
  "Prociono",
  "Prompt",
  "Prosto One",
  "Proza Libre",
  "Public Sans",
  "Puritan",
  "Purple Purse",
  "Quando",
  "Quantico",
  "Quattrocento",
  "Questrial",
  "Quicksand",
  "Quintessential",
  "Qwigley",
  "Racing Sans One",
  "Radley",
  "Rajdhani",
  "Rakkas",
  "Raleway",
  "Raleway Dots",
  "Ramabhadra",
  "Ramaraja",
  "Rambla",
  "Rammetto One",
  "Ranchers",
  "Rancho",
  "Ranga",
  "Rasa",
  "Rationale",
  "Ravi Prakash",
  "Recursive",
  "Red Hat Display",
  "Red Hat Text",
  "Red Rose",
  "Redressed",
  "Reem Kufi",
  "Reenie Beanie",
  "Revalia",
  "Rhodium Libre",
  "Ribeye",
  "Ribeye Marrow",
  "Righteous",
  "Risque",
  "Roboto",
  "Roboto Condensed",
  "Roboto Mono",
  "Rochester",
  "Rock Salt",
  "Rokkitt",
  "Romanesco",
  "Ropa Sans",
  "Rosario",
  "Rosarivo",
  "Rouge Script",
  "Rowdies",
  "Rozha One",
  "Rubik",
  "Rubik Mono One",
  "Ruda",
  "Rufina",
  "Ruge Boogie",
  "Ruluko",
  "Rum Raisin",
  "Ruslan Display",
  "Russo One",
  "Ruthie",
  "Rye",
  "Sacramento",
  "Sahitya",
  "Sail",
  "Saira",
  "Saira Condensed",
  "Saira Extra Condensed",
  "Saira Semi Condensed",
  "Saira Stencil One",
  "Salsa",
  "Sanchez",
  "Sancreek",
  "Sansita Swashed",
  "Sarabun",
  "Sarala",
  "Sarina",
  "Sarpanch",
  "Satisfy",
  "Sawarabi Gothic",
  "Sawarabi Mincho",
  "Scada",
  "Scheherazade",
  "Schoolbell",
  "Scope One",
  "Seaweed Script",
  "Secular One",
  "Sedgwick Ave",
  "Sedgwick Ave Display",
  "Sen",
  "Sevillana",
  "Seymour One",
  "Shadows Into Light",
  "Shadows Into Light Two",
  "Shanti",
  "Share",
  "Share Tech",
  "Share Tech Mono",
  "Shojumaru",
  "Short Stack",
  "Shrikhand",
  "Sigmar One",
  "Signika",
  "Signika Negative",
  "Simonetta",
  "Single Day",
  "Sintony",
  "Sirin Stencil",
  "Six Caps",
  "Skranji",
  "Slabo 13px",
  "Slabo 27px",
  "Slackey",
  "Smokum",
  "Smythe",
  "Sniglet",
  "Snippet",
  "Snowburst One",
  "Sofadi One",
  "Sofia",
  "Solway",
  "Song Myung",
  "Sonsie One",
  "Sora",
  "Sorts Mill Goudy",
  "Source Code Pro",
  "Source Sans Pro",
  "Source Serif Pro",
  "Space Grotesk",
  "Space Mono",
  "Spartan",
  "Special Elite",
  "Spectral",
  "Spectral SC",
  "Spicy Rice",
  "Spinnaker",
  "Spirax",
  "Squada One",
  "Sree Krushnadevaraya",
  "Sriracha",
  "Srisakdi",
  "Staatliches",
  "Stalemate",
  "Stardos Stencil",
  "Stint Ultra Condensed",
  "Stint Ultra Expanded",
  "Stoke",
  "Strait",
  "Stylish",
  "Sue Ellen Francisco",
  "Suez One",
  "Sulphur Point",
  "Sumana",
  "Sunflower",
  "Sunshiney",
  "Supermercado One",
  "Sura",
  "Suranna",
  "Suravaram",
  "Swanky and Moo Moo",
  "Syncopate",
  "Syne",
  "Syne Mono",
  "Syne Tactile",
  "Tajawal",
  "Tangerine",
  "Tauri",
  "Taviraj",
  "Teko",
  "Telex",
  "Tenali Ramakrishna",
  "Tenor Sans",
  "Text Me One",
  "Thasadith",
  "The Girl Next Door",
  "Tienne",
  "Tillana",
  "Timmana",
  "Tinos",
  "Titan One",
  "Titillium Web",
  "Tomorrow",
  "Trade Winds",
  "Trirong",
  "Trispace",
  "Trocchi",
  "Trochut",
  "Trykker",
  "Tulpen One",
  "Turret Road",
  "Ubuntu",
  "Ubuntu Condensed",
  "Ubuntu Mono",
  "Ultra",
  "Uncial Antiqua",
  "Underdog",
  "Unica One",
  "UnifrakturCook",
  "UnifrakturMaguntia",
  "Unkempt",
  "Unlock",
  "Unna",
  "VT323",
  "Vampiro One",
  "Varela",
  "Varela Round",
  "Varta",
  "Vast Shadow",
  "Vesper Libre",
  "Viaoda Libre",
  "Vibes",
  "Vibur",
  "Vidaloka",
  "Viga",
  "Voces",
  "Volkhov",
  "Vollkorn",
  "Vollkorn SC",
  "Voltaire",
  "Waiting for the Sunrise",
  "Wallpoet",
  "Walter Turncoat",
  "Warnes",
  "Wellfleet",
  "Wendy One",
  "Wire One",
  "Work Sans",
  "Xanh Mono",
  "Yanone Kaffeesatz",
  "Yantramanav",
  "Yatra One",
  "Yellowtail",
  "Yeon Sung",
  "Yeseva One",
  "Yesteryear",
  "Yrsa",
  "ZCOOL KuaiLe",
  "ZCOOL QingKe HuangYou",
  "ZCOOL XiaoWei",
  "Zeyada",
  "Zhi Mang Xing",
  "Zilla Slab",
  "Zilla Slab Highlight"
];

const googleFontsDetails = {
  "Alumni Sans": {
    "category": "sans-serif",
    "variants":
        "100,200,300,400,500,600,700,800,900,100i,200i,300i,400i,500i,600i,700i,800i,900i"
  },
  "Noto Sans": {
    "category": "sans-serif",
    "variants":
        "100,200,300,400,500,600,700,800,900,100i,200i,300i,400i,500i,600i,700i,800i,900i"
  },
  "Noto Serif": {"category": "serif", "variants": "400,400i,700,700i"},
  "ABeeZee": {"category": "sans-serif", "variants": "400,400i", "subsets": "latin"},
  "Abel": {"category": "sans-serif", "variants": "400", "subsets": "latin"},
  "Abhaya Libre": {
    "category": "serif",
    "variants": "400,500,600,700,800",
    "subsets": "latin,latin-ext,sinhala"
  },
  "Abril Fatface": {
    "category": "display",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Aclonica": {"category": "sans-serif", "variants": "400", "subsets": "latin"},
  "Acme": {"category": "sans-serif", "variants": "400", "subsets": "latin"},
  "Actor": {"category": "sans-serif", "variants": "400", "subsets": "latin"},
  "Adamina": {"category": "serif", "variants": "400", "subsets": "latin"},
  "Advent Pro": {
    "category": "sans-serif",
    "variants": "100,200,300,400,500,600,700",
    "subsets": "greek,latin,latin-ext"
  },
  "Aguafina Script": {
    "category": "handwriting",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Akronim": {"category": "display", "variants": "400", "subsets": "latin,latin-ext"},
  "Aladin": {"category": "handwriting", "variants": "400", "subsets": "latin,latin-ext"},
  "Alata": {
    "category": "sans-serif",
    "variants": "400",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Alatsi": {
    "category": "sans-serif",
    "variants": "400",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Aldrich": {"category": "sans-serif", "variants": "400", "subsets": "latin"},
  "Alef": {"category": "sans-serif", "variants": "400,700", "subsets": "hebrew,latin"},
  "Alegreya": {
    "category": "serif",
    "variants": "400,400i,500,500i,700,700i,800,800i,900,900i",
    "subsets": "cyrillic,cyrillic-ext,greek,greek-ext,latin,latin-ext,vietnamese"
  },
  "Alegreya SC": {
    "category": "serif",
    "variants": "400,400i,500,500i,700,700i,800,800i,900,900i",
    "subsets": "cyrillic,cyrillic-ext,greek,greek-ext,latin,latin-ext,vietnamese"
  },
  "Alegreya Sans": {
    "category": "sans-serif",
    "variants": "100,100i,300,300i,400,400i,500,500i,700,700i,800,800i,900,900i",
    "subsets": "cyrillic,cyrillic-ext,greek,greek-ext,latin,latin-ext,vietnamese"
  },
  "Alegreya Sans SC": {
    "category": "sans-serif",
    "variants": "100,100i,300,300i,400,400i,500,500i,700,700i,800,800i,900,900i",
    "subsets": "cyrillic,cyrillic-ext,greek,greek-ext,latin,latin-ext,vietnamese"
  },
  "Aleo": {
    "category": "serif",
    "variants": "300,300i,400,400i,700,700i",
    "subsets": "latin,latin-ext"
  },
  "Alex Brush": {
    "category": "handwriting",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Alfa Slab One": {
    "category": "display",
    "variants": "400",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Alice": {
    "category": "serif",
    "variants": "400",
    "subsets": "cyrillic,cyrillic-ext,latin"
  },
  "Alike": {"category": "serif", "variants": "400", "subsets": "latin"},
  "Alike Angular": {"category": "serif", "variants": "400", "subsets": "latin"},
  "Allan": {"category": "display", "variants": "400,700", "subsets": "latin,latin-ext"},
  "Allerta": {"category": "sans-serif", "variants": "400", "subsets": "latin"},
  "Allerta Stencil": {"category": "sans-serif", "variants": "400", "subsets": "latin"},
  "Allura": {"category": "handwriting", "variants": "400", "subsets": "latin,latin-ext"},
  "Almarai": {
    "category": "sans-serif",
    "variants": "300,400,700,800",
    "subsets": "arabic"
  },
  "Almendra": {
    "category": "serif",
    "variants": "400,400i,700,700i",
    "subsets": "latin,latin-ext"
  },
  "Almendra Display": {
    "category": "display",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Almendra SC": {"category": "serif", "variants": "400", "subsets": "latin"},
  "Amarante": {"category": "display", "variants": "400", "subsets": "latin,latin-ext"},
  "Amaranth": {
    "category": "sans-serif",
    "variants": "400,400i,700,700i",
    "subsets": "latin"
  },
  "Amatic SC": {
    "category": "handwriting",
    "variants": "400,700",
    "subsets": "cyrillic,hebrew,latin,latin-ext,vietnamese"
  },
  "Amethysta": {"category": "serif", "variants": "400", "subsets": "latin"},
  "Amiko": {
    "category": "sans-serif",
    "variants": "400,600,700",
    "subsets": "devanagari,latin,latin-ext"
  },
  "Amiri": {
    "category": "serif",
    "variants": "400,400i,700,700i",
    "subsets": "arabic,latin,latin-ext"
  },
  "Amita": {
    "category": "handwriting",
    "variants": "400,700",
    "subsets": "devanagari,latin,latin-ext"
  },
  "Anaheim": {"category": "sans-serif", "variants": "400", "subsets": "latin,latin-ext"},
  "Andada": {"category": "serif", "variants": "400", "subsets": "latin,latin-ext"},
  "Andika": {
    "category": "sans-serif",
    "variants": "400",
    "subsets": "cyrillic,cyrillic-ext,latin,latin-ext,vietnamese"
  },
  "Andika New Basic": {
    "category": "sans-serif",
    "variants": "400,400i,700,700i",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Angkor": {"category": "display", "variants": "400", "subsets": "khmer"},
  "Annie Use Your Telescope": {
    "category": "handwriting",
    "variants": "400",
    "subsets": "latin"
  },
  "Anonymous Pro": {
    "category": "monospace",
    "variants": "400,400i,700,700i",
    "subsets": "cyrillic,greek,latin,latin-ext"
  },
  "Antic": {"category": "sans-serif", "variants": "400", "subsets": "latin"},
  "Antic Didone": {"category": "serif", "variants": "400", "subsets": "latin"},
  "Antic Slab": {"category": "serif", "variants": "400", "subsets": "latin"},
  "Anton": {
    "category": "sans-serif",
    "variants": "400",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Arapey": {"category": "serif", "variants": "400,400i", "subsets": "latin"},
  "Arbutus": {"category": "display", "variants": "400", "subsets": "latin,latin-ext"},
  "Arbutus Slab": {"category": "serif", "variants": "400", "subsets": "latin,latin-ext"},
  "Architects Daughter": {
    "category": "handwriting",
    "variants": "400",
    "subsets": "latin"
  },
  "Archivo": {
    "category": "sans-serif",
    "variants": "400,400i,500,500i,600,600i,700,700i",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Archivo Black": {
    "category": "sans-serif",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Archivo Narrow": {
    "category": "sans-serif",
    "variants": "400,400i,500,500i,600,600i,700,700i",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Aref Ruqaa": {
    "category": "serif",
    "variants": "400,700",
    "subsets": "arabic,latin,latin-ext"
  },
  "Arima Madurai": {
    "category": "display",
    "variants": "100,200,300,400,500,700,800,900",
    "subsets": "latin,latin-ext,tamil,vietnamese"
  },
  "Arimo": {
    "category": "sans-serif",
    "variants": "400,500,600,700,400i,500i,600i,700i",
    "subsets": "cyrillic,cyrillic-ext,greek,greek-ext,hebrew,latin,latin-ext,vietnamese"
  },
  "Arizonia": {
    "category": "handwriting",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Armata": {"category": "sans-serif", "variants": "400", "subsets": "latin,latin-ext"},
  "Arsenal": {
    "category": "sans-serif",
    "variants": "400,400i,700,700i",
    "subsets": "cyrillic,cyrillic-ext,latin,latin-ext,vietnamese"
  },
  "Artifika": {"category": "serif", "variants": "400", "subsets": "latin"},
  "Arvo": {"category": "serif", "variants": "400,400i,700,700i", "subsets": "latin"},
  "Arya": {
    "category": "sans-serif",
    "variants": "400,700",
    "subsets": "devanagari,latin,latin-ext"
  },
  "Asap": {
    "category": "sans-serif",
    "variants": "400,400i,500,500i,600,600i,700,700i",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Asap Condensed": {
    "category": "sans-serif",
    "variants": "400,400i,500,500i,600,600i,700,700i",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Asar": {
    "category": "serif",
    "variants": "400",
    "subsets": "devanagari,latin,latin-ext"
  },
  "Asset": {"category": "display", "variants": "400", "subsets": "latin"},
  "Assistant": {
    "category": "sans-serif",
    "variants": "200,300,400,500,600,700,800",
    "subsets": "hebrew,latin,latin-ext"
  },
  "Astloch": {"category": "display", "variants": "400,700", "subsets": "latin"},
  "Asul": {"category": "sans-serif", "variants": "400,700", "subsets": "latin"},
  "Athiti": {
    "category": "sans-serif",
    "variants": "200,300,400,500,600,700",
    "subsets": "latin,latin-ext,thai,vietnamese"
  },
  "Atma": {
    "category": "display",
    "variants": "300,400,500,600,700",
    "subsets": "bengali,latin,latin-ext"
  },
  "Atomic Age": {"category": "display", "variants": "400", "subsets": "latin"},
  "Aubrey": {"category": "display", "variants": "400", "subsets": "latin"},
  "Audiowide": {"category": "display", "variants": "400", "subsets": "latin,latin-ext"},
  "Autour One": {"category": "display", "variants": "400", "subsets": "latin,latin-ext"},
  "Average": {"category": "serif", "variants": "400", "subsets": "latin,latin-ext"},
  "Average Sans": {
    "category": "sans-serif",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Averia Gruesa Libre": {
    "category": "display",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Averia Libre": {
    "category": "display",
    "variants": "300,300i,400,400i,700,700i",
    "subsets": "latin"
  },
  "Averia Sans Libre": {
    "category": "display",
    "variants": "300,300i,400,400i,700,700i",
    "subsets": "latin"
  },
  "Averia Serif Libre": {
    "category": "display",
    "variants": "300,300i,400,400i,700,700i",
    "subsets": "latin"
  },
  "B612": {"category": "sans-serif", "variants": "400,400i,700,700i", "subsets": "latin"},
  "B612 Mono": {
    "category": "monospace",
    "variants": "400,400i,700,700i",
    "subsets": "latin"
  },
  "Bad Script": {
    "category": "handwriting",
    "variants": "400",
    "subsets": "cyrillic,latin"
  },
  "Bahiana": {"category": "display", "variants": "400", "subsets": "latin,latin-ext"},
  "Bahianita": {
    "category": "display",
    "variants": "400",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Bai Jamjuree": {
    "category": "sans-serif",
    "variants": "200,200i,300,300i,400,400i,500,500i,600,600i,700,700i",
    "subsets": "latin,latin-ext,thai,vietnamese"
  },
  "Balsamiq Sans": {
    "category": "display",
    "variants": "400,400i,700,700i",
    "subsets": "cyrillic,cyrillic-ext,latin,latin-ext"
  },
  "Balthazar": {"category": "serif", "variants": "400", "subsets": "latin"},
  "Bangers": {
    "category": "display",
    "variants": "400",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Barlow": {
    "category": "sans-serif",
    "variants":
        "100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Barlow Condensed": {
    "category": "sans-serif",
    "variants":
        "100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Barlow Semi Condensed": {
    "category": "sans-serif",
    "variants":
        "100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Barriecito": {
    "category": "display",
    "variants": "400",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Barrio": {"category": "display", "variants": "400", "subsets": "latin,latin-ext"},
  "Basic": {"category": "sans-serif", "variants": "400", "subsets": "latin,latin-ext"},
  "Baskervville": {
    "category": "serif",
    "variants": "400,400i",
    "subsets": "latin,latin-ext"
  },
  "Baumans": {"category": "display", "variants": "400", "subsets": "latin"},
  "Be Vietnam": {
    "category": "sans-serif",
    "variants": "100,100i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Bebas Neue": {"category": "display", "variants": "400", "subsets": "latin,latin-ext"},
  "Belgrano": {"category": "serif", "variants": "400", "subsets": "latin"},
  "Bellefair": {
    "category": "serif",
    "variants": "400",
    "subsets": "hebrew,latin,latin-ext"
  },
  "Belleza": {"category": "sans-serif", "variants": "400", "subsets": "latin,latin-ext"},
  "Bellota": {
    "category": "display",
    "variants": "300,300i,400,400i,700,700i",
    "subsets": "cyrillic,latin,latin-ext,vietnamese"
  },
  "Bellota Text": {
    "category": "display",
    "variants": "300,300i,400,400i,700,700i",
    "subsets": "cyrillic,latin,latin-ext,vietnamese"
  },
  "BenchNine": {
    "category": "sans-serif",
    "variants": "300,400,700",
    "subsets": "latin,latin-ext"
  },
  "Bentham": {"category": "serif", "variants": "400", "subsets": "latin"},
  "Berkshire Swash": {
    "category": "handwriting",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Beth Ellen": {"category": "handwriting", "variants": "400", "subsets": "latin"},
  "Bevan": {
    "category": "display",
    "variants": "400",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Big Shoulders Display": {
    "category": "display",
    "variants": "100,300,400,500,600,700,800,900",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Big Shoulders Inline Display": {
    "category": "display",
    "variants": "100,300,400,500,600,700,800,900",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Big Shoulders Inline Text": {
    "category": "display",
    "variants": "100,300,400,500,600,700,800,900",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Big Shoulders Stencil Display": {
    "category": "display",
    "variants": "100,300,400,500,600,700,800,900",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Big Shoulders Stencil Text": {
    "category": "display",
    "variants": "100,300,400,500,600,700,800,900",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Big Shoulders Text": {
    "category": "display",
    "variants": "100,300,400,500,600,700,800,900",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Bigelow Rules": {
    "category": "display",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Bigshot One": {"category": "display", "variants": "400", "subsets": "latin"},
  "Bilbo": {"category": "handwriting", "variants": "400", "subsets": "latin,latin-ext"},
  "Bilbo Swash Caps": {
    "category": "handwriting",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "BioRhyme": {
    "category": "serif",
    "variants": "200,300,400,700,800",
    "subsets": "latin,latin-ext"
  },
  "BioRhyme Expanded": {
    "category": "serif",
    "variants": "200,300,400,700,800",
    "subsets": "latin,latin-ext"
  },
  "Biryani": {
    "category": "sans-serif",
    "variants": "200,300,400,600,700,800,900",
    "subsets": "devanagari,latin,latin-ext"
  },
  "Bitter": {
    "category": "serif",
    "variants":
        "100,200,300,400,500,600,700,800,900,100i,200i,300i,400i,500i,600i,700i,800i,900i",
    "subsets": "cyrillic,cyrillic-ext,latin,latin-ext,vietnamese"
  },
  "Black And White Picture": {
    "category": "sans-serif",
    "variants": "400",
    "subsets": "korean,latin"
  },
  "Black Han Sans": {
    "category": "sans-serif",
    "variants": "400",
    "subsets": "korean,latin"
  },
  "Black Ops One": {
    "category": "display",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Blinker": {
    "category": "sans-serif",
    "variants": "100,200,300,400,600,700,800,900",
    "subsets": "latin,latin-ext"
  },
  "Bonbon": {"category": "handwriting", "variants": "400", "subsets": "latin"},
  "Boogaloo": {"category": "display", "variants": "400", "subsets": "latin"},
  "Bowlby One": {"category": "display", "variants": "400", "subsets": "latin"},
  "Bowlby One SC": {
    "category": "display",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Brawler": {"category": "serif", "variants": "400", "subsets": "latin"},
  "Bree Serif": {"category": "serif", "variants": "400", "subsets": "latin,latin-ext"},
  "Bubblegum Sans": {
    "category": "display",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Bubbler One": {
    "category": "sans-serif",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Buda": {"category": "display", "variants": "300", "subsets": "latin"},
  "Buenard": {"category": "serif", "variants": "400,700", "subsets": "latin,latin-ext"},
  "Bungee": {
    "category": "display",
    "variants": "400",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Bungee Hairline": {
    "category": "display",
    "variants": "400",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Bungee Inline": {
    "category": "display",
    "variants": "400",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Bungee Outline": {
    "category": "display",
    "variants": "400",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Bungee Shade": {
    "category": "display",
    "variants": "400",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Butcherman": {"category": "display", "variants": "400", "subsets": "latin,latin-ext"},
  "Butterfly Kids": {
    "category": "handwriting",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Cabin": {
    "category": "sans-serif",
    "variants": "400,500,600,700,400i,500i,600i,700i",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Cabin Condensed": {
    "category": "sans-serif",
    "variants": "400,500,600,700",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Cabin Sketch": {"category": "display", "variants": "400,700", "subsets": "latin"},
  "Caesar Dressing": {"category": "display", "variants": "400", "subsets": "latin"},
  "Cagliostro": {"category": "sans-serif", "variants": "400", "subsets": "latin"},
  "Cairo": {
    "category": "sans-serif",
    "variants": "200,300,400,600,700,900",
    "subsets": "arabic,latin,latin-ext"
  },
  "Caladea": {
    "category": "serif",
    "variants": "400,400i,700,700i",
    "subsets": "latin,latin-ext"
  },
  "Calistoga": {
    "category": "display",
    "variants": "400",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Calligraffitti": {"category": "handwriting", "variants": "400", "subsets": "latin"},
  "Cambay": {
    "category": "sans-serif",
    "variants": "400,400i,700,700i",
    "subsets": "devanagari,latin,latin-ext"
  },
  "Cambo": {"category": "serif", "variants": "400", "subsets": "latin"},
  "Candal": {"category": "sans-serif", "variants": "400", "subsets": "latin"},
  "Cantarell": {
    "category": "sans-serif",
    "variants": "400,400i,700,700i",
    "subsets": "latin"
  },
  "Cantata One": {"category": "serif", "variants": "400", "subsets": "latin,latin-ext"},
  "Cantora One": {
    "category": "sans-serif",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Capriola": {"category": "sans-serif", "variants": "400", "subsets": "latin,latin-ext"},
  "Cardo": {
    "category": "serif",
    "variants": "400,400i,700",
    "subsets": "greek,greek-ext,latin,latin-ext"
  },
  "Carme": {"category": "sans-serif", "variants": "400", "subsets": "latin"},
  "Carrois Gothic": {"category": "sans-serif", "variants": "400", "subsets": "latin"},
  "Carrois Gothic SC": {"category": "sans-serif", "variants": "400", "subsets": "latin"},
  "Carter One": {"category": "display", "variants": "400", "subsets": "latin"},
  "Castoro": {"category": "serif", "variants": "400,400i", "subsets": "latin,latin-ext"},
  "Catamaran": {
    "category": "sans-serif",
    "variants": "100,200,300,400,500,600,700,800,900",
    "subsets": "latin,latin-ext,tamil"
  },
  "Caudex": {
    "category": "serif",
    "variants": "400,400i,700,700i",
    "subsets": "greek,greek-ext,latin,latin-ext"
  },
  "Caveat": {
    "category": "handwriting",
    "variants": "400,500,600,700",
    "subsets": "cyrillic,cyrillic-ext,latin,latin-ext"
  },
  "Caveat Brush": {
    "category": "handwriting",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Cedarville Cursive": {
    "category": "handwriting",
    "variants": "400",
    "subsets": "latin"
  },
  "Ceviche One": {"category": "display", "variants": "400", "subsets": "latin,latin-ext"},
  "Chakra Petch": {
    "category": "sans-serif",
    "variants": "300,300i,400,400i,500,500i,600,600i,700,700i",
    "subsets": "latin,latin-ext,thai,vietnamese"
  },
  "Changa": {
    "category": "sans-serif",
    "variants": "200,300,400,500,600,700,800",
    "subsets": "arabic,latin,latin-ext"
  },
  "Changa One": {"category": "display", "variants": "400,400i", "subsets": "latin"},
  "Chango": {"category": "display", "variants": "400", "subsets": "latin,latin-ext"},
  "Charm": {
    "category": "handwriting",
    "variants": "400,700",
    "subsets": "latin,latin-ext,thai,vietnamese"
  },
  "Charmonman": {
    "category": "handwriting",
    "variants": "400,700",
    "subsets": "latin,latin-ext,thai,vietnamese"
  },
  "Chathura": {
    "category": "sans-serif",
    "variants": "100,300,400,700,800",
    "subsets": "latin,telugu"
  },
  "Chau Philomene One": {
    "category": "sans-serif",
    "variants": "400,400i",
    "subsets": "latin,latin-ext"
  },
  "Chela One": {"category": "display", "variants": "400", "subsets": "latin,latin-ext"},
  "Chelsea Market": {
    "category": "display",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Cherry Cream Soda": {"category": "display", "variants": "400", "subsets": "latin"},
  "Cherry Swash": {
    "category": "display",
    "variants": "400,700",
    "subsets": "latin,latin-ext"
  },
  "Chewy": {"category": "display", "variants": "400", "subsets": "latin"},
  "Chicle": {"category": "display", "variants": "400", "subsets": "latin,latin-ext"},
  "Chilanka": {
    "category": "handwriting",
    "variants": "400",
    "subsets": "latin,malayalam"
  },
  "Chivo": {
    "category": "sans-serif",
    "variants": "300,300i,400,400i,700,700i,900,900i",
    "subsets": "latin,latin-ext"
  },
  "Chonburi": {
    "category": "display",
    "variants": "400",
    "subsets": "latin,latin-ext,thai,vietnamese"
  },
  "Cinzel": {
    "category": "serif",
    "variants": "400,500,600,700,800,900",
    "subsets": "latin,latin-ext"
  },
  "Cinzel Decorative": {
    "category": "display",
    "variants": "400,700,900",
    "subsets": "latin"
  },
  "Clicker Script": {
    "category": "handwriting",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Coda": {"category": "display", "variants": "400,800", "subsets": "latin,latin-ext"},
  "Coda Caption": {
    "category": "sans-serif",
    "variants": "800",
    "subsets": "latin,latin-ext"
  },
  "Codystar": {
    "category": "display",
    "variants": "300,400",
    "subsets": "latin,latin-ext"
  },
  "Coiny": {
    "category": "display",
    "variants": "400",
    "subsets": "latin,latin-ext,tamil,vietnamese"
  },
  "Combo": {"category": "display", "variants": "400", "subsets": "latin,latin-ext"},
  "Comfortaa": {
    "category": "display",
    "variants": "300,400,500,600,700",
    "subsets": "cyrillic,cyrillic-ext,greek,latin,latin-ext,vietnamese"
  },
  "Comic Neue": {
    "category": "handwriting",
    "variants": "300,300i,400,400i,700,700i",
    "subsets": "latin"
  },
  "Coming Soon": {"category": "handwriting", "variants": "400", "subsets": "latin"},
  "Commissioner": {
    "category": "sans-serif",
    "variants": "100,200,300,400,500,600,700,800,900",
    "subsets": "cyrillic,cyrillic-ext,greek,latin,latin-ext,vietnamese"
  },
  "Concert One": {"category": "display", "variants": "400", "subsets": "latin,latin-ext"},
  "Condiment": {
    "category": "handwriting",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Contrail One": {"category": "display", "variants": "400", "subsets": "latin"},
  "Convergence": {"category": "sans-serif", "variants": "400", "subsets": "latin"},
  "Cookie": {"category": "handwriting", "variants": "400", "subsets": "latin"},
  "Copse": {"category": "serif", "variants": "400", "subsets": "latin"},
  "Corben": {"category": "display", "variants": "400,700", "subsets": "latin,latin-ext"},
  "Cormorant": {
    "category": "serif",
    "variants": "300,300i,400,400i,500,500i,600,600i,700,700i",
    "subsets": "cyrillic,cyrillic-ext,latin,latin-ext,vietnamese"
  },
  "Cormorant Garamond": {
    "category": "serif",
    "variants": "300,300i,400,400i,500,500i,600,600i,700,700i",
    "subsets": "cyrillic,cyrillic-ext,latin,latin-ext,vietnamese"
  },
  "Cormorant Infant": {
    "category": "serif",
    "variants": "300,300i,400,400i,500,500i,600,600i,700,700i",
    "subsets": "cyrillic,cyrillic-ext,latin,latin-ext,vietnamese"
  },
  "Cormorant SC": {
    "category": "serif",
    "variants": "300,400,500,600,700",
    "subsets": "cyrillic,cyrillic-ext,latin,latin-ext,vietnamese"
  },
  "Cormorant Unicase": {
    "category": "serif",
    "variants": "300,400,500,600,700",
    "subsets": "cyrillic,cyrillic-ext,latin,latin-ext,vietnamese"
  },
  "Cormorant Upright": {
    "category": "serif",
    "variants": "300,400,500,600,700",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Courgette": {
    "category": "handwriting",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Courier Prime": {
    "category": "monospace",
    "variants": "400,400i,700,700i",
    "subsets": "latin,latin-ext"
  },
  "Cousine": {
    "category": "monospace",
    "variants": "400,400i,700,700i",
    "subsets": "cyrillic,cyrillic-ext,greek,greek-ext,hebrew,latin,latin-ext,vietnamese"
  },
  "Coustard": {"category": "serif", "variants": "400,900", "subsets": "latin"},
  "Covered By Your Grace": {
    "category": "handwriting",
    "variants": "400",
    "subsets": "latin"
  },
  "Crafty Girls": {"category": "handwriting", "variants": "400", "subsets": "latin"},
  "Creepster": {"category": "display", "variants": "400", "subsets": "latin"},
  "Crete Round": {
    "category": "serif",
    "variants": "400,400i",
    "subsets": "latin,latin-ext"
  },
  "Crimson Pro": {
    "category": "serif",
    "variants": "200,300,400,500,600,700,800,900,200i,300i,400i,500i,600i,700i,800i,900i",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Crimson Text": {
    "category": "serif",
    "variants": "400,400i,600,600i,700,700i",
    "subsets": "latin"
  },
  "Croissant One": {
    "category": "display",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Crushed": {"category": "display", "variants": "400", "subsets": "latin"},
  "Cuprum": {
    "category": "sans-serif",
    "variants": "400,500,600,700,400i,500i,600i,700i",
    "subsets": "cyrillic,cyrillic-ext,latin,latin-ext,vietnamese"
  },
  "Cute Font": {"category": "display", "variants": "400", "subsets": "korean,latin"},
  "Cutive": {"category": "serif", "variants": "400", "subsets": "latin,latin-ext"},
  "Cutive Mono": {
    "category": "monospace",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "DM Mono": {
    "category": "monospace",
    "variants": "300,300i,400,400i,500,500i",
    "subsets": "latin,latin-ext"
  },
  "DM Sans": {
    "category": "sans-serif",
    "variants": "400,400i,500,500i,700,700i",
    "subsets": "latin,latin-ext"
  },
  "DM Serif Display": {
    "category": "serif",
    "variants": "400,400i",
    "subsets": "latin,latin-ext"
  },
  "DM Serif Text": {
    "category": "serif",
    "variants": "400,400i",
    "subsets": "latin,latin-ext"
  },
  "Damion": {"category": "handwriting", "variants": "400", "subsets": "latin"},
  "Dancing Script": {
    "category": "handwriting",
    "variants": "400,500,600,700",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Darker Grotesque": {
    "category": "sans-serif",
    "variants": "300,400,500,600,700,800,900",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "David Libre": {
    "category": "serif",
    "variants": "400,500,700",
    "subsets": "hebrew,latin,latin-ext,vietnamese"
  },
  "Dawning of a New Day": {
    "category": "handwriting",
    "variants": "400",
    "subsets": "latin"
  },
  "Days One": {"category": "sans-serif", "variants": "400", "subsets": "latin"},
  "Dekko": {
    "category": "handwriting",
    "variants": "400",
    "subsets": "devanagari,latin,latin-ext"
  },
  "Delius": {"category": "handwriting", "variants": "400", "subsets": "latin"},
  "Delius Swash Caps": {"category": "handwriting", "variants": "400", "subsets": "latin"},
  "Delius Unicase": {
    "category": "handwriting",
    "variants": "400,700",
    "subsets": "latin"
  },
  "Della Respira": {"category": "serif", "variants": "400", "subsets": "latin"},
  "Denk One": {"category": "sans-serif", "variants": "400", "subsets": "latin,latin-ext"},
  "Devonshire": {
    "category": "handwriting",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Dhurjati": {"category": "sans-serif", "variants": "400", "subsets": "latin,telugu"},
  "Didact Gothic": {
    "category": "sans-serif",
    "variants": "400",
    "subsets": "cyrillic,cyrillic-ext,greek,greek-ext,latin,latin-ext"
  },
  "Diplomata": {"category": "display", "variants": "400", "subsets": "latin,latin-ext"},
  "Diplomata SC": {
    "category": "display",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Do Hyeon": {"category": "sans-serif", "variants": "400", "subsets": "korean,latin"},
  "Dokdo": {"category": "handwriting", "variants": "400", "subsets": "korean,latin"},
  "Domine": {
    "category": "serif",
    "variants": "400,500,600,700",
    "subsets": "latin,latin-ext"
  },
  "Donegal One": {"category": "serif", "variants": "400", "subsets": "latin,latin-ext"},
  "Doppio One": {
    "category": "sans-serif",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Dorsa": {"category": "sans-serif", "variants": "400", "subsets": "latin"},
  "Dosis": {
    "category": "sans-serif",
    "variants": "200,300,400,500,600,700,800",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Dr Sugiyama": {
    "category": "handwriting",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Duru Sans": {
    "category": "sans-serif",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Dynalight": {"category": "display", "variants": "400", "subsets": "latin,latin-ext"},
  "EB Garamond": {
    "category": "serif",
    "variants": "400,500,600,700,800,400i,500i,600i,700i,800i",
    "subsets": "cyrillic,cyrillic-ext,greek,greek-ext,latin,latin-ext,vietnamese"
  },
  "Eagle Lake": {
    "category": "handwriting",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "East Sea Dokdo": {
    "category": "handwriting",
    "variants": "400",
    "subsets": "korean,latin"
  },
  "Eater": {"category": "display", "variants": "400", "subsets": "latin,latin-ext"},
  "Economica": {
    "category": "sans-serif",
    "variants": "400,400i,700,700i",
    "subsets": "latin,latin-ext"
  },
  "Eczar": {
    "category": "serif",
    "variants": "400,500,600,700,800",
    "subsets": "devanagari,latin,latin-ext"
  },
  "El Messiri": {
    "category": "sans-serif",
    "variants": "400,500,600,700",
    "subsets": "arabic,cyrillic,latin"
  },
  "Electrolize": {"category": "sans-serif", "variants": "400", "subsets": "latin"},
  "Elsie": {"category": "display", "variants": "400,900", "subsets": "latin,latin-ext"},
  "Elsie Swash Caps": {
    "category": "display",
    "variants": "400,900",
    "subsets": "latin,latin-ext"
  },
  "Emblema One": {"category": "display", "variants": "400", "subsets": "latin,latin-ext"},
  "Emilys Candy": {
    "category": "display",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Encode Sans": {
    "category": "sans-serif",
    "variants": "100,200,300,400,500,600,700,800,900",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Encode Sans Condensed": {
    "category": "sans-serif",
    "variants": "100,200,300,400,500,600,700,800,900",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Encode Sans Expanded": {
    "category": "sans-serif",
    "variants": "100,200,300,400,500,600,700,800,900",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Encode Sans Semi Condensed": {
    "category": "sans-serif",
    "variants": "100,200,300,400,500,600,700,800,900",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Encode Sans Semi Expanded": {
    "category": "sans-serif",
    "variants": "100,200,300,400,500,600,700,800,900",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Engagement": {"category": "handwriting", "variants": "400", "subsets": "latin"},
  "Englebert": {
    "category": "sans-serif",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Enriqueta": {
    "category": "serif",
    "variants": "400,500,600,700",
    "subsets": "latin,latin-ext"
  },
  "Epilogue": {
    "category": "sans-serif",
    "variants":
        "100,200,300,400,500,600,700,800,900,100i,200i,300i,400i,500i,600i,700i,800i,900i",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Erica One": {"category": "display", "variants": "400", "subsets": "latin,latin-ext"},
  "Esteban": {"category": "serif", "variants": "400", "subsets": "latin,latin-ext"},
  "Euphoria Script": {
    "category": "handwriting",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Ewert": {"category": "display", "variants": "400", "subsets": "latin,latin-ext"},
  "Exo": {
    "category": "sans-serif",
    "variants":
        "100,200,300,400,500,600,700,800,900,100i,200i,300i,400i,500i,600i,700i,800i,900i",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Exo 2": {
    "category": "sans-serif",
    "variants":
        "100,200,300,400,500,600,700,800,900,100i,200i,300i,400i,500i,600i,700i,800i,900i",
    "subsets": "cyrillic,cyrillic-ext,latin,latin-ext,vietnamese"
  },
  "Expletus Sans": {
    "category": "display",
    "variants": "400,400i,500,500i,600,600i,700,700i",
    "subsets": "latin"
  },
  "Fahkwang": {
    "category": "sans-serif",
    "variants": "200,200i,300,300i,400,400i,500,500i,600,600i,700,700i",
    "subsets": "latin,latin-ext,thai,vietnamese"
  },
  "Fanwood Text": {"category": "serif", "variants": "400,400i", "subsets": "latin"},
  "Farro": {
    "category": "sans-serif",
    "variants": "300,400,500,700",
    "subsets": "latin,latin-ext"
  },
  "Farsan": {
    "category": "display",
    "variants": "400",
    "subsets": "gujarati,latin,latin-ext,vietnamese"
  },
  "Fascinate": {"category": "display", "variants": "400", "subsets": "latin"},
  "Fascinate Inline": {"category": "display", "variants": "400", "subsets": "latin"},
  "Faster One": {"category": "display", "variants": "400", "subsets": "latin"},
  "Fauna One": {"category": "serif", "variants": "400", "subsets": "latin,latin-ext"},
  "Faustina": {
    "category": "serif",
    "variants": "400,500,600,700,400i,500i,600i,700i",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Federant": {"category": "display", "variants": "400", "subsets": "latin"},
  "Federo": {"category": "sans-serif", "variants": "400", "subsets": "latin"},
  "Felipa": {"category": "handwriting", "variants": "400", "subsets": "latin,latin-ext"},
  "Fenix": {"category": "serif", "variants": "400", "subsets": "latin,latin-ext"},
  "Finger Paint": {"category": "display", "variants": "400", "subsets": "latin"},
  "Fira Code": {
    "category": "monospace",
    "variants": "300,400,500,600,700",
    "subsets": "cyrillic,cyrillic-ext,greek,greek-ext,latin,latin-ext"
  },
  "Fira Mono": {
    "category": "monospace",
    "variants": "400,500,700",
    "subsets": "cyrillic,cyrillic-ext,greek,greek-ext,latin,latin-ext"
  },
  "Fira Sans": {
    "category": "sans-serif",
    "variants":
        "100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i",
    "subsets": "cyrillic,cyrillic-ext,greek,greek-ext,latin,latin-ext,vietnamese"
  },
  "Fira Sans Condensed": {
    "category": "sans-serif",
    "variants":
        "100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i",
    "subsets": "cyrillic,cyrillic-ext,greek,greek-ext,latin,latin-ext,vietnamese"
  },
  "Fira Sans Extra Condensed": {
    "category": "sans-serif",
    "variants":
        "100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i",
    "subsets": "cyrillic,cyrillic-ext,greek,greek-ext,latin,latin-ext,vietnamese"
  },
  "Fjalla One": {
    "category": "sans-serif",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Fjord One": {"category": "serif", "variants": "400", "subsets": "latin"},
  "Flamenco": {"category": "display", "variants": "300,400", "subsets": "latin"},
  "Flavors": {"category": "display", "variants": "400", "subsets": "latin,latin-ext"},
  "Fondamento": {
    "category": "handwriting",
    "variants": "400,400i",
    "subsets": "latin,latin-ext"
  },
  "Fontdiner Swanky": {"category": "display", "variants": "400", "subsets": "latin"},
  "Forum": {
    "category": "display",
    "variants": "400",
    "subsets": "cyrillic,cyrillic-ext,latin,latin-ext"
  },
  "Francois One": {
    "category": "sans-serif",
    "variants": "400",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Frank Ruhl Libre": {
    "category": "serif",
    "variants": "300,400,500,700,900",
    "subsets": "hebrew,latin,latin-ext"
  },
  "Freckle Face": {
    "category": "display",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Fredericka the Great": {
    "category": "display",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Fredoka One": {"category": "display", "variants": "400", "subsets": "latin"},
  "Fresca": {"category": "sans-serif", "variants": "400", "subsets": "latin,latin-ext"},
  "Frijole": {"category": "display", "variants": "400", "subsets": "latin"},
  "Fruktur": {"category": "display", "variants": "400", "subsets": "latin,latin-ext"},
  "Fugaz One": {"category": "display", "variants": "400", "subsets": "latin"},
  "GFS Didot": {"category": "serif", "variants": "400", "subsets": "greek"},
  "GFS Neohellenic": {
    "category": "sans-serif",
    "variants": "400,400i,700,700i",
    "subsets": "greek"
  },
  "Gabriela": {
    "category": "serif",
    "variants": "400",
    "subsets": "cyrillic,cyrillic-ext,latin"
  },
  "Gaegu": {
    "category": "handwriting",
    "variants": "300,400,700",
    "subsets": "korean,latin"
  },
  "Gafata": {"category": "sans-serif", "variants": "400", "subsets": "latin,latin-ext"},
  "Galada": {"category": "display", "variants": "400", "subsets": "bengali,latin"},
  "Galdeano": {"category": "sans-serif", "variants": "400", "subsets": "latin"},
  "Galindo": {"category": "display", "variants": "400", "subsets": "latin,latin-ext"},
  "Gamja Flower": {
    "category": "handwriting",
    "variants": "400",
    "subsets": "korean,latin"
  },
  "Gayathri": {
    "category": "sans-serif",
    "variants": "100,400,700",
    "subsets": "latin,malayalam"
  },
  "Gelasio": {
    "category": "serif",
    "variants": "400,400i,500,500i,600,600i,700,700i",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Gentium Basic": {
    "category": "serif",
    "variants": "400,400i,700,700i",
    "subsets": "latin,latin-ext"
  },
  "Gentium Book Basic": {
    "category": "serif",
    "variants": "400,400i,700,700i",
    "subsets": "latin,latin-ext"
  },
  "Geo": {"category": "sans-serif", "variants": "400,400i", "subsets": "latin"},
  "Geostar": {"category": "display", "variants": "400", "subsets": "latin"},
  "Geostar Fill": {"category": "display", "variants": "400", "subsets": "latin"},
  "Germania One": {"category": "display", "variants": "400", "subsets": "latin"},
  "Gidugu": {"category": "sans-serif", "variants": "400", "subsets": "latin,telugu"},
  "Gilda Display": {"category": "serif", "variants": "400", "subsets": "latin,latin-ext"},
  "Girassol": {"category": "display", "variants": "400", "subsets": "latin,latin-ext"},
  "Give You Glory": {"category": "handwriting", "variants": "400", "subsets": "latin"},
  "Glass Antiqua": {
    "category": "display",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Glegoo": {
    "category": "serif",
    "variants": "400,700",
    "subsets": "devanagari,latin,latin-ext"
  },
  "Gloria Hallelujah": {"category": "handwriting", "variants": "400", "subsets": "latin"},
  "Goblin One": {"category": "display", "variants": "400", "subsets": "latin"},
  "Gochi Hand": {"category": "handwriting", "variants": "400", "subsets": "latin"},
  "Goldman": {
    "category": "display",
    "variants": "400,700",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Gorditas": {"category": "display", "variants": "400,700", "subsets": "latin"},
  "Gothic A1": {
    "category": "sans-serif",
    "variants": "100,200,300,400,500,600,700,800,900",
    "subsets": "korean,latin"
  },
  "Gotu": {
    "category": "sans-serif",
    "variants": "400",
    "subsets": "devanagari,latin,latin-ext,vietnamese"
  },
  "Goudy Bookletter 1911": {"category": "serif", "variants": "400", "subsets": "latin"},
  "Graduate": {"category": "display", "variants": "400", "subsets": "latin"},
  "Grand Hotel": {
    "category": "handwriting",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Grandstander": {
    "category": "display",
    "variants":
        "100,200,300,400,500,600,700,800,900,100i,200i,300i,400i,500i,600i,700i,800i,900i",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Gravitas One": {"category": "display", "variants": "400", "subsets": "latin"},
  "Great Vibes": {
    "category": "handwriting",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Grenze": {
    "category": "serif",
    "variants":
        "100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Grenze Gotisch": {
    "category": "display",
    "variants": "100,200,300,400,500,600,700,800,900",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Griffy": {"category": "display", "variants": "400", "subsets": "latin,latin-ext"},
  "Gruppo": {"category": "display", "variants": "400", "subsets": "latin,latin-ext"},
  "Gudea": {
    "category": "sans-serif",
    "variants": "400,400i,700",
    "subsets": "latin,latin-ext"
  },
  "Gugi": {"category": "display", "variants": "400", "subsets": "korean,latin"},
  "Gupter": {"category": "serif", "variants": "400,500,700", "subsets": "latin"},
  "Gurajada": {"category": "serif", "variants": "400", "subsets": "latin,telugu"},
  "Habibi": {"category": "serif", "variants": "400", "subsets": "latin,latin-ext"},
  "Halant": {
    "category": "serif",
    "variants": "300,400,500,600,700",
    "subsets": "devanagari,latin,latin-ext"
  },
  "Hammersmith One": {
    "category": "sans-serif",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Hanalei": {"category": "display", "variants": "400", "subsets": "latin,latin-ext"},
  "Hanalei Fill": {
    "category": "display",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Handlee": {"category": "handwriting", "variants": "400", "subsets": "latin"},
  "Happy Monkey": {
    "category": "display",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Harmattan": {
    "category": "sans-serif",
    "variants": "400,700",
    "subsets": "arabic,latin,latin-ext"
  },
  "Headland One": {"category": "serif", "variants": "400", "subsets": "latin,latin-ext"},
  "Heebo": {
    "category": "sans-serif",
    "variants": "100,200,300,400,500,600,700,800,900",
    "subsets": "hebrew,latin"
  },
  "Henny Penny": {"category": "display", "variants": "400", "subsets": "latin"},
  "Hepta Slab": {
    "category": "serif",
    "variants": "100,200,300,400,500,600,700,800,900",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Herr Von Muellerhoff": {
    "category": "handwriting",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Hi Melody": {"category": "handwriting", "variants": "400", "subsets": "korean,latin"},
  "Hind": {
    "category": "sans-serif",
    "variants": "300,400,500,600,700",
    "subsets": "devanagari,latin,latin-ext"
  },
  "Hind Guntur": {
    "category": "sans-serif",
    "variants": "300,400,500,600,700",
    "subsets": "latin,latin-ext,telugu"
  },
  "Hind Madurai": {
    "category": "sans-serif",
    "variants": "300,400,500,600,700",
    "subsets": "latin,latin-ext,tamil"
  },
  "Hind Siliguri": {
    "category": "sans-serif",
    "variants": "300,400,500,600,700",
    "subsets": "bengali,latin,latin-ext"
  },
  "Hind Vadodara": {
    "category": "sans-serif",
    "variants": "300,400,500,600,700",
    "subsets": "gujarati,latin,latin-ext"
  },
  "Holtwood One SC": {"category": "serif", "variants": "400", "subsets": "latin"},
  "Homemade Apple": {"category": "handwriting", "variants": "400", "subsets": "latin"},
  "Homenaje": {"category": "sans-serif", "variants": "400", "subsets": "latin"},
  "IBM Plex Mono": {
    "category": "monospace",
    "variants": "100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i",
    "subsets": "cyrillic,cyrillic-ext,latin,latin-ext,vietnamese"
  },
  "IBM Plex Sans": {
    "category": "sans-serif",
    "variants": "100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i",
    "subsets": "cyrillic,cyrillic-ext,greek,latin,latin-ext,vietnamese"
  },
  "IBM Plex Sans Condensed": {
    "category": "sans-serif",
    "variants": "100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "IBM Plex Serif": {
    "category": "serif",
    "variants": "100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i",
    "subsets": "cyrillic,cyrillic-ext,latin,latin-ext,vietnamese"
  },
  "IM Fell DW Pica": {"category": "serif", "variants": "400,400i", "subsets": "latin"},
  "IM Fell DW Pica SC": {"category": "serif", "variants": "400", "subsets": "latin"},
  "IM Fell Double Pica": {
    "category": "serif",
    "variants": "400,400i",
    "subsets": "latin"
  },
  "IM Fell Double Pica SC": {"category": "serif", "variants": "400", "subsets": "latin"},
  "IM Fell English": {"category": "serif", "variants": "400,400i", "subsets": "latin"},
  "IM Fell English SC": {"category": "serif", "variants": "400", "subsets": "latin"},
  "IM Fell French Canon": {
    "category": "serif",
    "variants": "400,400i",
    "subsets": "latin"
  },
  "IM Fell French Canon SC": {"category": "serif", "variants": "400", "subsets": "latin"},
  "IM Fell Great Primer": {
    "category": "serif",
    "variants": "400,400i",
    "subsets": "latin"
  },
  "IM Fell Great Primer SC": {"category": "serif", "variants": "400", "subsets": "latin"},
  "Ibarra Real Nova": {
    "category": "serif",
    "variants": "400,500,600,700,400i,500i,600i,700i",
    "subsets": "latin,latin-ext"
  },
  "Iceberg": {"category": "display", "variants": "400", "subsets": "latin"},
  "Iceland": {"category": "display", "variants": "400", "subsets": "latin"},
  "Imprima": {"category": "sans-serif", "variants": "400", "subsets": "latin,latin-ext"},
  "Inconsolata": {
    "category": "monospace",
    "variants": "200,300,400,500,600,700,800,900",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Inder": {"category": "sans-serif", "variants": "400", "subsets": "latin,latin-ext"},
  "Indie Flower": {"category": "handwriting", "variants": "400", "subsets": "latin"},
  "Inika": {"category": "serif", "variants": "400,700", "subsets": "latin,latin-ext"},
  "Inknut Antiqua": {
    "category": "serif",
    "variants": "300,400,500,600,700,800,900",
    "subsets": "devanagari,latin,latin-ext"
  },
  "Inria Sans": {
    "category": "sans-serif",
    "variants": "300,300i,400,400i,700,700i",
    "subsets": "latin,latin-ext"
  },
  "Inria Serif": {
    "category": "serif",
    "variants": "300,300i,400,400i,700,700i",
    "subsets": "latin,latin-ext"
  },
  "Inter": {
    "category": "sans-serif",
    "variants": "100,200,300,400,500,600,700,800,900",
    "subsets": "cyrillic,cyrillic-ext,greek,greek-ext,latin,latin-ext,vietnamese"
  },
  "Irish Grover": {"category": "display", "variants": "400", "subsets": "latin"},
  "Istok Web": {
    "category": "sans-serif",
    "variants": "400,400i,700,700i",
    "subsets": "cyrillic,cyrillic-ext,latin,latin-ext"
  },
  "Italiana": {"category": "serif", "variants": "400", "subsets": "latin"},
  "Italianno": {
    "category": "handwriting",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Itim": {
    "category": "handwriting",
    "variants": "400",
    "subsets": "latin,latin-ext,thai,vietnamese"
  },
  "Jacques Francois": {"category": "serif", "variants": "400", "subsets": "latin"},
  "Jacques Francois Shadow": {
    "category": "display",
    "variants": "400",
    "subsets": "latin"
  },
  "Jaldi": {
    "category": "sans-serif",
    "variants": "400,700",
    "subsets": "devanagari,latin,latin-ext"
  },
  "JetBrains Mono": {
    "category": "monospace",
    "variants": "100,200,300,400,500,600,700,800,100i,200i,300i,400i,500i,600i,700i,800i",
    "subsets": "cyrillic,cyrillic-ext,greek,latin,latin-ext,vietnamese"
  },
  "Jim Nightshade": {
    "category": "handwriting",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Jockey One": {
    "category": "sans-serif",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Jolly Lodger": {
    "category": "display",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Jomhuria": {
    "category": "display",
    "variants": "400",
    "subsets": "arabic,latin,latin-ext"
  },
  "Jomolhari": {"category": "serif", "variants": "400", "subsets": "latin,tibetan"},
  "Josefin Sans": {
    "category": "sans-serif",
    "variants": "100,200,300,400,500,600,700,100i,200i,300i,400i,500i,600i,700i",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Josefin Slab": {
    "category": "serif",
    "variants": "100,200,300,400,500,600,700,100i,200i,300i,400i,500i,600i,700i",
    "subsets": "latin"
  },
  "Jost": {
    "category": "sans-serif",
    "variants":
        "100,200,300,400,500,600,700,800,900,100i,200i,300i,400i,500i,600i,700i,800i,900i",
    "subsets": "cyrillic,latin,latin-ext"
  },
  "Joti One": {"category": "display", "variants": "400", "subsets": "latin,latin-ext"},
  "Jua": {"category": "sans-serif", "variants": "400", "subsets": "korean,latin"},
  "Judson": {
    "category": "serif",
    "variants": "400,400i,700",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Julee": {"category": "handwriting", "variants": "400", "subsets": "latin"},
  "Julius Sans One": {
    "category": "sans-serif",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Junge": {"category": "serif", "variants": "400", "subsets": "latin"},
  "Jura": {
    "category": "sans-serif",
    "variants": "300,400,500,600,700",
    "subsets": "cyrillic,cyrillic-ext,greek,greek-ext,latin,latin-ext,vietnamese"
  },
  "Just Another Hand": {"category": "handwriting", "variants": "400", "subsets": "latin"},
  "Just Me Again Down Here": {
    "category": "handwriting",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "K2D": {
    "category": "sans-serif",
    "variants": "100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i",
    "subsets": "latin,latin-ext,thai,vietnamese"
  },
  "Kadwa": {"category": "serif", "variants": "400,700", "subsets": "devanagari,latin"},
  "Kalam": {
    "category": "handwriting",
    "variants": "300,400,700",
    "subsets": "devanagari,latin,latin-ext"
  },
  "Kameron": {"category": "serif", "variants": "400,700", "subsets": "latin"},
  "Kanit": {
    "category": "sans-serif",
    "variants":
        "100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i",
    "subsets": "latin,latin-ext,thai,vietnamese"
  },
  "Kantumruy": {"category": "sans-serif", "variants": "300,400,700", "subsets": "khmer"},
  "Karla": {
    "category": "sans-serif",
    "variants": "200,300,400,500,600,700,800,200i,300i,400i,500i,600i,700i,800i",
    "subsets": "latin,latin-ext"
  },
  "Karma": {
    "category": "serif",
    "variants": "300,400,500,600,700",
    "subsets": "devanagari,latin,latin-ext"
  },
  "Katibeh": {
    "category": "display",
    "variants": "400",
    "subsets": "arabic,latin,latin-ext"
  },
  "Kaushan Script": {
    "category": "handwriting",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Kavivanar": {
    "category": "handwriting",
    "variants": "400",
    "subsets": "latin,latin-ext,tamil"
  },
  "Kavoon": {"category": "display", "variants": "400", "subsets": "latin,latin-ext"},
  "Kdam Thmor": {"category": "display", "variants": "400", "subsets": "khmer"},
  "Keania One": {"category": "display", "variants": "400", "subsets": "latin,latin-ext"},
  "Kelly Slab": {
    "category": "display",
    "variants": "400",
    "subsets": "cyrillic,latin,latin-ext"
  },
  "Kenia": {"category": "display", "variants": "400", "subsets": "latin"},
  "Khand": {
    "category": "sans-serif",
    "variants": "300,400,500,600,700",
    "subsets": "devanagari,latin,latin-ext"
  },
  "Khula": {
    "category": "sans-serif",
    "variants": "300,400,600,700,800",
    "subsets": "devanagari,latin,latin-ext"
  },
  "Kirang Haerang": {"category": "display", "variants": "400", "subsets": "korean,latin"},
  "Kite One": {"category": "sans-serif", "variants": "400", "subsets": "latin"},
  "Knewave": {"category": "display", "variants": "400", "subsets": "latin,latin-ext"},
  "KoHo": {
    "category": "sans-serif",
    "variants": "200,200i,300,300i,400,400i,500,500i,600,600i,700,700i",
    "subsets": "latin,latin-ext,thai,vietnamese"
  },
  "Kodchasan": {
    "category": "sans-serif",
    "variants": "200,200i,300,300i,400,400i,500,500i,600,600i,700,700i",
    "subsets": "latin,latin-ext,thai,vietnamese"
  },
  "Kosugi": {
    "category": "sans-serif",
    "variants": "400",
    "subsets": "cyrillic,japanese,latin"
  },
  "Kosugi Maru": {
    "category": "sans-serif",
    "variants": "400",
    "subsets": "cyrillic,japanese,latin"
  },
  "Kotta One": {"category": "serif", "variants": "400", "subsets": "latin,latin-ext"},
  "Kranky": {"category": "display", "variants": "400", "subsets": "latin"},
  "Kreon": {
    "category": "serif",
    "variants": "300,400,500,600,700",
    "subsets": "latin,latin-ext"
  },
  "Kristi": {"category": "handwriting", "variants": "400", "subsets": "latin"},
  "Krona One": {
    "category": "sans-serif",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Krub": {
    "category": "sans-serif",
    "variants": "200,200i,300,300i,400,400i,500,500i,600,600i,700,700i",
    "subsets": "latin,latin-ext,thai,vietnamese"
  },
  "Kufam": {
    "category": "display",
    "variants": "400,500,600,700,800,900,400i,500i,600i,700i,800i,900i",
    "subsets": "arabic,latin,latin-ext,vietnamese"
  },
  "Kulim Park": {
    "category": "sans-serif",
    "variants": "200,200i,300,300i,400,400i,600,600i,700,700i",
    "subsets": "latin,latin-ext"
  },
  "Kumar One": {
    "category": "display",
    "variants": "400",
    "subsets": "gujarati,latin,latin-ext"
  },
  "Kumar One Outline": {
    "category": "display",
    "variants": "400",
    "subsets": "gujarati,latin,latin-ext"
  },
  "Kumbh Sans": {
    "category": "sans-serif",
    "variants": "300,400,700",
    "subsets": "latin,latin-ext"
  },
  "Kurale": {
    "category": "serif",
    "variants": "400",
    "subsets": "cyrillic,cyrillic-ext,devanagari,latin,latin-ext"
  },
  "La Belle Aurore": {"category": "handwriting", "variants": "400", "subsets": "latin"},
  "Lacquer": {"category": "display", "variants": "400", "subsets": "latin"},
  "Laila": {
    "category": "serif",
    "variants": "300,400,500,600,700",
    "subsets": "devanagari,latin,latin-ext"
  },
  "Lakki Reddy": {
    "category": "handwriting",
    "variants": "400",
    "subsets": "latin,telugu"
  },
  "Lalezar": {
    "category": "display",
    "variants": "400",
    "subsets": "arabic,latin,latin-ext,vietnamese"
  },
  "Lancelot": {"category": "display", "variants": "400", "subsets": "latin,latin-ext"},
  "Langar": {
    "category": "display",
    "variants": "400",
    "subsets": "gurmukhi,latin,latin-ext"
  },
  "Lateef": {"category": "handwriting", "variants": "400", "subsets": "arabic,latin"},
  "Lato": {
    "category": "sans-serif",
    "variants": "100,100i,300,300i,400,400i,700,700i,900,900i",
    "subsets": "latin,latin-ext"
  },
  "League Script": {"category": "handwriting", "variants": "400", "subsets": "latin"},
  "Leckerli One": {"category": "handwriting", "variants": "400", "subsets": "latin"},
  "Ledger": {
    "category": "serif",
    "variants": "400",
    "subsets": "cyrillic,latin,latin-ext"
  },
  "Lekton": {
    "category": "sans-serif",
    "variants": "400,400i,700",
    "subsets": "latin,latin-ext"
  },
  "Lemon": {"category": "display", "variants": "400", "subsets": "latin"},
  "Lemonada": {
    "category": "display",
    "variants": "300,400,500,600,700",
    "subsets": "arabic,latin,latin-ext,vietnamese"
  },
  "Lexend Deca": {
    "category": "sans-serif",
    "variants": "400",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Lexend Exa": {
    "category": "sans-serif",
    "variants": "400",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Lexend Giga": {
    "category": "sans-serif",
    "variants": "400",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Lexend Mega": {
    "category": "sans-serif",
    "variants": "400",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Lexend Peta": {
    "category": "sans-serif",
    "variants": "400",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Lexend Tera": {
    "category": "sans-serif",
    "variants": "400",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Lexend Zetta": {
    "category": "sans-serif",
    "variants": "400",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Libre Barcode 128": {"category": "display", "variants": "400", "subsets": "latin"},
  "Libre Barcode 128 Text": {
    "category": "display",
    "variants": "400",
    "subsets": "latin"
  },
  "Libre Barcode 39": {"category": "display", "variants": "400", "subsets": "latin"},
  "Libre Barcode 39 Extended": {
    "category": "display",
    "variants": "400",
    "subsets": "latin"
  },
  "Libre Barcode 39 Extended Text": {
    "category": "display",
    "variants": "400",
    "subsets": "latin"
  },
  "Libre Barcode 39 Text": {"category": "display", "variants": "400", "subsets": "latin"},
  "Libre Baskerville": {
    "category": "serif",
    "variants": "400,400i,700",
    "subsets": "latin,latin-ext"
  },
  "Libre Caslon Display": {
    "category": "serif",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Libre Caslon Text": {
    "category": "serif",
    "variants": "400,400i,700",
    "subsets": "latin,latin-ext"
  },
  "Libre Franklin": {
    "category": "sans-serif",
    "variants":
        "100,200,300,400,500,600,700,800,900,100i,200i,300i,400i,500i,600i,700i,800i,900i",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Life Savers": {
    "category": "display",
    "variants": "400,700,800",
    "subsets": "latin,latin-ext"
  },
  "Lilita One": {"category": "display", "variants": "400", "subsets": "latin,latin-ext"},
  "Lily Script One": {
    "category": "display",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Limelight": {"category": "display", "variants": "400", "subsets": "latin,latin-ext"},
  "Linden Hill": {"category": "serif", "variants": "400,400i", "subsets": "latin"},
  "Literata": {
    "category": "serif",
    "variants": "200,300,400,500,600,700,800,900,200i,300i,400i,500i,600i,700i,800i,900i",
    "subsets": "cyrillic,cyrillic-ext,greek,greek-ext,latin,latin-ext,vietnamese"
  },
  "Liu Jian Mao Cao": {
    "category": "handwriting",
    "variants": "400",
    "subsets": "chinese-simplified,latin"
  },
  "Livvic": {
    "category": "sans-serif",
    "variants": "100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,900,900i",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Lobster": {
    "category": "display",
    "variants": "400",
    "subsets": "cyrillic,cyrillic-ext,latin,latin-ext,vietnamese"
  },
  "Lobster Two": {
    "category": "display",
    "variants": "400,400i,700,700i",
    "subsets": "latin"
  },
  "Londrina Outline": {"category": "display", "variants": "400", "subsets": "latin"},
  "Londrina Shadow": {"category": "display", "variants": "400", "subsets": "latin"},
  "Londrina Sketch": {"category": "display", "variants": "400", "subsets": "latin"},
  "Londrina Solid": {
    "category": "display",
    "variants": "100,300,400,900",
    "subsets": "latin"
  },
  "Long Cang": {
    "category": "handwriting",
    "variants": "400",
    "subsets": "chinese-simplified,latin"
  },
  "Lora": {
    "category": "serif",
    "variants": "400,500,600,700,400i,500i,600i,700i",
    "subsets": "cyrillic,cyrillic-ext,latin,latin-ext,vietnamese"
  },
  "Love Ya Like A Sister": {"category": "display", "variants": "400", "subsets": "latin"},
  "Loved by the King": {"category": "handwriting", "variants": "400", "subsets": "latin"},
  "Lovers Quarrel": {
    "category": "handwriting",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Luckiest Guy": {"category": "display", "variants": "400", "subsets": "latin"},
  "Lusitana": {"category": "serif", "variants": "400,700", "subsets": "latin"},
  "Lustria": {"category": "serif", "variants": "400", "subsets": "latin"},
  "M PLUS 1p": {
    "category": "sans-serif",
    "variants": "100,300,400,500,700,800,900",
    "subsets":
        "cyrillic,cyrillic-ext,greek,greek-ext,hebrew,japanese,latin,latin-ext,vietnamese"
  },
  "M PLUS Rounded 1c": {
    "category": "sans-serif",
    "variants": "100,300,400,500,700,800,900",
    "subsets":
        "cyrillic,cyrillic-ext,greek,greek-ext,hebrew,japanese,latin,latin-ext,vietnamese"
  },
  "Ma Shan Zheng": {
    "category": "handwriting",
    "variants": "400",
    "subsets": "chinese-simplified,latin"
  },
  "Macondo": {"category": "display", "variants": "400", "subsets": "latin"},
  "Macondo Swash Caps": {"category": "display", "variants": "400", "subsets": "latin"},
  "Mada": {
    "category": "sans-serif",
    "variants": "200,300,400,500,600,700,900",
    "subsets": "arabic,latin"
  },
  "Magra": {
    "category": "sans-serif",
    "variants": "400,700",
    "subsets": "latin,latin-ext"
  },
  "Maiden Orange": {"category": "display", "variants": "400", "subsets": "latin"},
  "Maitree": {
    "category": "serif",
    "variants": "200,300,400,500,600,700",
    "subsets": "latin,latin-ext,thai,vietnamese"
  },
  "Major Mono Display": {
    "category": "monospace",
    "variants": "400",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Mako": {"category": "sans-serif", "variants": "400", "subsets": "latin"},
  "Mali": {
    "category": "handwriting",
    "variants": "200,200i,300,300i,400,400i,500,500i,600,600i,700,700i",
    "subsets": "latin,latin-ext,thai,vietnamese"
  },
  "Mallanna": {"category": "sans-serif", "variants": "400", "subsets": "latin,telugu"},
  "Mandali": {"category": "sans-serif", "variants": "400", "subsets": "latin,telugu"},
  "Manjari": {
    "category": "sans-serif",
    "variants": "100,400,700",
    "subsets": "latin,malayalam"
  },
  "Manrope": {
    "category": "sans-serif",
    "variants": "200,300,400,500,600,700,800",
    "subsets": "cyrillic,greek,latin,latin-ext"
  },
  "Mansalva": {"category": "handwriting", "variants": "400", "subsets": "latin"},
  "Manuale": {
    "category": "serif",
    "variants": "400,500,600,700,400i,500i,600i,700i",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Marcellus": {"category": "serif", "variants": "400", "subsets": "latin,latin-ext"},
  "Marcellus SC": {"category": "serif", "variants": "400", "subsets": "latin,latin-ext"},
  "Marck Script": {
    "category": "handwriting",
    "variants": "400",
    "subsets": "cyrillic,latin,latin-ext"
  },
  "Margarine": {"category": "display", "variants": "400", "subsets": "latin,latin-ext"},
  "Markazi Text": {
    "category": "serif",
    "variants": "400,500,600,700",
    "subsets": "arabic,latin,latin-ext,vietnamese"
  },
  "Marko One": {"category": "serif", "variants": "400", "subsets": "latin"},
  "Marmelad": {
    "category": "sans-serif",
    "variants": "400",
    "subsets": "cyrillic,latin,latin-ext"
  },
  "Martel": {
    "category": "serif",
    "variants": "200,300,400,600,700,800,900",
    "subsets": "devanagari,latin,latin-ext"
  },
  "Martel Sans": {
    "category": "sans-serif",
    "variants": "200,300,400,600,700,800,900",
    "subsets": "devanagari,latin,latin-ext"
  },
  "Marvel": {
    "category": "sans-serif",
    "variants": "400,400i,700,700i",
    "subsets": "latin"
  },
  "Mate": {"category": "serif", "variants": "400,400i", "subsets": "latin"},
  "Mate SC": {"category": "serif", "variants": "400", "subsets": "latin"},
  "Maven Pro": {
    "category": "sans-serif",
    "variants": "400,500,600,700,800,900",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "McLaren": {"category": "display", "variants": "400", "subsets": "latin,latin-ext"},
  "Meddon": {"category": "handwriting", "variants": "400", "subsets": "latin"},
  "MedievalSharp": {
    "category": "display",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Medula One": {"category": "display", "variants": "400", "subsets": "latin"},
  "Meera Inimai": {"category": "sans-serif", "variants": "400", "subsets": "latin,tamil"},
  "Megrim": {"category": "display", "variants": "400", "subsets": "latin"},
  "Meie Script": {
    "category": "handwriting",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Merienda": {
    "category": "handwriting",
    "variants": "400,700",
    "subsets": "latin,latin-ext"
  },
  "Merienda One": {"category": "handwriting", "variants": "400", "subsets": "latin"},
  "Merriweather": {
    "category": "serif",
    "variants": "300,300i,400,400i,700,700i,900,900i",
    "subsets": "cyrillic,cyrillic-ext,latin,latin-ext,vietnamese"
  },
  "Merriweather Sans": {
    "category": "sans-serif",
    "variants": "300,400,500,600,700,800,300i,400i,500i,600i,700i,800i",
    "subsets": "cyrillic-ext,latin,latin-ext,vietnamese"
  },
  "Metal Mania": {"category": "display", "variants": "400", "subsets": "latin,latin-ext"},
  "Metamorphous": {
    "category": "display",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Metrophobic": {
    "category": "sans-serif",
    "variants": "400",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Michroma": {"category": "sans-serif", "variants": "400", "subsets": "latin"},
  "Milonga": {"category": "display", "variants": "400", "subsets": "latin,latin-ext"},
  "Miltonian": {"category": "display", "variants": "400", "subsets": "latin"},
  "Miltonian Tattoo": {"category": "display", "variants": "400", "subsets": "latin"},
  "Mina": {
    "category": "sans-serif",
    "variants": "400,700",
    "subsets": "bengali,latin,latin-ext"
  },
  "Miniver": {"category": "display", "variants": "400", "subsets": "latin"},
  "Miriam Libre": {
    "category": "sans-serif",
    "variants": "400,700",
    "subsets": "hebrew,latin,latin-ext"
  },
  "Mirza": {
    "category": "display",
    "variants": "400,500,600,700",
    "subsets": "arabic,latin,latin-ext"
  },
  "Miss Fajardose": {
    "category": "handwriting",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Mitr": {
    "category": "sans-serif",
    "variants": "200,300,400,500,600,700",
    "subsets": "latin,latin-ext,thai,vietnamese"
  },
  "Modak": {
    "category": "display",
    "variants": "400",
    "subsets": "devanagari,latin,latin-ext"
  },
  "Modern Antiqua": {
    "category": "display",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Mogra": {
    "category": "display",
    "variants": "400",
    "subsets": "gujarati,latin,latin-ext"
  },
  "Molengo": {"category": "sans-serif", "variants": "400", "subsets": "latin,latin-ext"},
  "Molle": {"category": "handwriting", "variants": "400i", "subsets": "latin,latin-ext"},
  "Monda": {
    "category": "sans-serif",
    "variants": "400,700",
    "subsets": "latin,latin-ext"
  },
  "Monofett": {"category": "display", "variants": "400", "subsets": "latin"},
  "Monoton": {"category": "display", "variants": "400", "subsets": "latin"},
  "Monsieur La Doulaise": {
    "category": "handwriting",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Montaga": {"category": "serif", "variants": "400", "subsets": "latin"},
  "Montez": {"category": "handwriting", "variants": "400", "subsets": "latin"},
  "Montserrat": {
    "category": "sans-serif",
    "variants":
        "100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i",
    "subsets": "cyrillic,cyrillic-ext,latin,latin-ext,vietnamese"
  },
  "Montserrat Alternates": {
    "category": "sans-serif",
    "variants":
        "100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i",
    "subsets": "cyrillic,cyrillic-ext,latin,latin-ext,vietnamese"
  },
  "Montserrat Subrayada": {
    "category": "sans-serif",
    "variants": "400,700",
    "subsets": "latin"
  },
  "Mountains of Christmas": {
    "category": "display",
    "variants": "400,700",
    "subsets": "latin"
  },
  "Mouse Memoirs": {
    "category": "sans-serif",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Mr Bedfort": {
    "category": "handwriting",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Mr Dafoe": {
    "category": "handwriting",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Mr De Haviland": {
    "category": "handwriting",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Mrs Saint Delafield": {
    "category": "handwriting",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Mrs Sheppards": {
    "category": "handwriting",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Mukta": {
    "category": "sans-serif",
    "variants": "200,300,400,500,600,700,800",
    "subsets": "devanagari,latin,latin-ext"
  },
  "Mukta Mahee": {
    "category": "sans-serif",
    "variants": "200,300,400,500,600,700,800",
    "subsets": "gurmukhi,latin,latin-ext"
  },
  "Mukta Malar": {
    "category": "sans-serif",
    "variants": "200,300,400,500,600,700,800",
    "subsets": "latin,latin-ext,tamil"
  },
  "Mukta Vaani": {
    "category": "sans-serif",
    "variants": "200,300,400,500,600,700,800",
    "subsets": "gujarati,latin,latin-ext"
  },
  "Mulish": {
    "category": "sans-serif",
    "variants": "200,300,400,500,600,700,800,900,200i,300i,400i,500i,600i,700i,800i,900i",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "MuseoModerno": {
    "category": "display",
    "variants": "100,200,300,400,500,600,700,800,900",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Mystery Quest": {
    "category": "display",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "NTR": {"category": "sans-serif", "variants": "400", "subsets": "latin,telugu"},
  "Nanum Brush Script": {
    "category": "handwriting",
    "variants": "400",
    "subsets": "korean,latin"
  },
  "Nanum Gothic": {
    "category": "sans-serif",
    "variants": "400,700,800",
    "subsets": "korean,latin"
  },
  "Nanum Gothic Coding": {
    "category": "monospace",
    "variants": "400,700",
    "subsets": "korean,latin"
  },
  "Nanum Myeongjo": {
    "category": "serif",
    "variants": "400,700,800",
    "subsets": "korean,latin"
  },
  "Nanum Pen Script": {
    "category": "handwriting",
    "variants": "400",
    "subsets": "korean,latin"
  },
  "Nerko One": {
    "category": "handwriting",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Neucha": {"category": "handwriting", "variants": "400", "subsets": "cyrillic,latin"},
  "Neuton": {
    "category": "serif",
    "variants": "200,300,400,400i,700,800",
    "subsets": "latin,latin-ext"
  },
  "New Rocker": {"category": "display", "variants": "400", "subsets": "latin,latin-ext"},
  "News Cycle": {
    "category": "sans-serif",
    "variants": "400,700",
    "subsets": "latin,latin-ext"
  },
  "Niconne": {"category": "handwriting", "variants": "400", "subsets": "latin,latin-ext"},
  "Niramit": {
    "category": "sans-serif",
    "variants": "200,200i,300,300i,400,400i,500,500i,600,600i,700,700i",
    "subsets": "latin,latin-ext,thai,vietnamese"
  },
  "Nixie One": {"category": "display", "variants": "400", "subsets": "latin"},
  "Nobile": {
    "category": "sans-serif",
    "variants": "400,400i,500,500i,700,700i",
    "subsets": "latin,latin-ext"
  },
  "Norican": {"category": "handwriting", "variants": "400", "subsets": "latin,latin-ext"},
  "Nosifer": {"category": "display", "variants": "400", "subsets": "latin,latin-ext"},
  "Notable": {"category": "sans-serif", "variants": "400", "subsets": "latin"},
  "Nothing You Could Do": {
    "category": "handwriting",
    "variants": "400",
    "subsets": "latin"
  },
  "Noticia Text": {
    "category": "serif",
    "variants": "400,400i,700,700i",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Nova Cut": {"category": "display", "variants": "400", "subsets": "latin"},
  "Nova Flat": {"category": "display", "variants": "400", "subsets": "latin"},
  "Nova Mono": {"category": "monospace", "variants": "400", "subsets": "greek,latin"},
  "Nova Oval": {"category": "display", "variants": "400", "subsets": "latin"},
  "Nova Round": {"category": "display", "variants": "400", "subsets": "latin"},
  "Nova Script": {"category": "display", "variants": "400", "subsets": "latin"},
  "Nova Slim": {"category": "display", "variants": "400", "subsets": "latin"},
  "Nova Square": {"category": "display", "variants": "400", "subsets": "latin"},
  "Numans": {"category": "sans-serif", "variants": "400", "subsets": "latin"},
  "Nunito": {
    "category": "sans-serif",
    "variants": "200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i",
    "subsets": "cyrillic,cyrillic-ext,latin,latin-ext,vietnamese"
  },
  "Nunito Sans": {
    "category": "sans-serif",
    "variants": "200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Odibee Sans": {"category": "display", "variants": "400", "subsets": "latin"},
  "Odor Mean Chey": {"category": "display", "variants": "400", "subsets": "khmer"},
  "Offside": {"category": "display", "variants": "400", "subsets": "latin"},
  "Old Standard TT": {
    "category": "serif",
    "variants": "400,400i,700",
    "subsets": "cyrillic,cyrillic-ext,latin,latin-ext,vietnamese"
  },
  "Oldenburg": {"category": "display", "variants": "400", "subsets": "latin,latin-ext"},
  "Oleo Script": {
    "category": "display",
    "variants": "400,700",
    "subsets": "latin,latin-ext"
  },
  "Oleo Script Swash Caps": {
    "category": "display",
    "variants": "400,700",
    "subsets": "latin,latin-ext"
  },
  "Open Sans": {
    "category": "sans-serif",
    "variants": "300,300i,400,400i,600,600i,700,700i,800,800i",
    "subsets": "cyrillic,cyrillic-ext,greek,greek-ext,latin,latin-ext,vietnamese"
  },
  "Open Sans Condensed": {
    "category": "sans-serif",
    "variants": "300,300i,700",
    "subsets": "cyrillic,cyrillic-ext,greek,greek-ext,latin,latin-ext,vietnamese"
  },
  "Oranienbaum": {
    "category": "serif",
    "variants": "400",
    "subsets": "cyrillic,cyrillic-ext,latin,latin-ext"
  },
  "Orbitron": {
    "category": "sans-serif",
    "variants": "400,500,600,700,800,900",
    "subsets": "latin"
  },
  "Oregano": {
    "category": "display",
    "variants": "400,400i",
    "subsets": "latin,latin-ext"
  },
  "Orienta": {"category": "sans-serif", "variants": "400", "subsets": "latin,latin-ext"},
  "Original Surfer": {"category": "display", "variants": "400", "subsets": "latin"},
  "Oswald": {
    "category": "sans-serif",
    "variants": "200,300,400,500,600,700",
    "subsets": "cyrillic,cyrillic-ext,latin,latin-ext,vietnamese"
  },
  "Over the Rainbow": {"category": "handwriting", "variants": "400", "subsets": "latin"},
  "Overlock": {
    "category": "display",
    "variants": "400,400i,700,700i,900,900i",
    "subsets": "latin,latin-ext"
  },
  "Overlock SC": {"category": "display", "variants": "400", "subsets": "latin,latin-ext"},
  "Overpass": {
    "category": "sans-serif",
    "variants": "100,100i,200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i",
    "subsets": "latin,latin-ext"
  },
  "Overpass Mono": {
    "category": "monospace",
    "variants": "300,400,600,700",
    "subsets": "latin,latin-ext"
  },
  "Ovo": {"category": "serif", "variants": "400", "subsets": "latin"},
  "Oxanium": {
    "category": "display",
    "variants": "200,300,400,500,600,700,800",
    "subsets": "latin,latin-ext"
  },
  "Oxygen": {
    "category": "sans-serif",
    "variants": "300,400,700",
    "subsets": "latin,latin-ext"
  },
  "Oxygen Mono": {
    "category": "monospace",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "PT Mono": {
    "category": "monospace",
    "variants": "400",
    "subsets": "cyrillic,cyrillic-ext,latin,latin-ext"
  },
  "PT Sans": {
    "category": "sans-serif",
    "variants": "400,400i,700,700i",
    "subsets": "cyrillic,cyrillic-ext,latin,latin-ext"
  },
  "PT Sans Caption": {
    "category": "sans-serif",
    "variants": "400,700",
    "subsets": "cyrillic,cyrillic-ext,latin,latin-ext"
  },
  "PT Sans Narrow": {
    "category": "sans-serif",
    "variants": "400,700",
    "subsets": "cyrillic,cyrillic-ext,latin,latin-ext"
  },
  "PT Serif": {
    "category": "serif",
    "variants": "400,400i,700,700i",
    "subsets": "cyrillic,cyrillic-ext,latin,latin-ext"
  },
  "PT Serif Caption": {
    "category": "serif",
    "variants": "400,400i",
    "subsets": "cyrillic,cyrillic-ext,latin,latin-ext"
  },
  "Pacifico": {
    "category": "handwriting",
    "variants": "400",
    "subsets": "cyrillic,cyrillic-ext,latin,latin-ext,vietnamese"
  },
  "Padauk": {"category": "sans-serif", "variants": "400,700", "subsets": "latin,myanmar"},
  "Palanquin": {
    "category": "sans-serif",
    "variants": "100,200,300,400,500,600,700",
    "subsets": "devanagari,latin,latin-ext"
  },
  "Palanquin Dark": {
    "category": "sans-serif",
    "variants": "400,500,600,700",
    "subsets": "devanagari,latin,latin-ext"
  },
  "Pangolin": {
    "category": "handwriting",
    "variants": "400",
    "subsets": "cyrillic,cyrillic-ext,latin,latin-ext,vietnamese"
  },
  "Paprika": {"category": "display", "variants": "400", "subsets": "latin"},
  "Parisienne": {
    "category": "handwriting",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Passero One": {"category": "display", "variants": "400", "subsets": "latin,latin-ext"},
  "Passion One": {
    "category": "display",
    "variants": "400,700,900",
    "subsets": "latin,latin-ext"
  },
  "Pathway Gothic One": {
    "category": "sans-serif",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Patrick Hand": {
    "category": "handwriting",
    "variants": "400",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Patrick Hand SC": {
    "category": "handwriting",
    "variants": "400",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Pattaya": {
    "category": "sans-serif",
    "variants": "400",
    "subsets": "cyrillic,latin,latin-ext,thai,vietnamese"
  },
  "Patua One": {"category": "display", "variants": "400", "subsets": "latin"},
  "Pavanam": {
    "category": "sans-serif",
    "variants": "400",
    "subsets": "latin,latin-ext,tamil"
  },
  "Paytone One": {
    "category": "sans-serif",
    "variants": "400",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Peddana": {"category": "serif", "variants": "400", "subsets": "latin,telugu"},
  "Peralta": {"category": "display", "variants": "400", "subsets": "latin,latin-ext"},
  "Permanent Marker": {"category": "handwriting", "variants": "400", "subsets": "latin"},
  "Petit Formal Script": {
    "category": "handwriting",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Petrona": {
    "category": "serif",
    "variants":
        "100,200,300,400,500,600,700,800,900,100i,200i,300i,400i,500i,600i,700i,800i,900i",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Philosopher": {
    "category": "sans-serif",
    "variants": "400,400i,700,700i",
    "subsets": "cyrillic,cyrillic-ext,latin,vietnamese"
  },
  "Piazzolla": {
    "category": "serif",
    "variants":
        "100,200,300,400,500,600,700,800,900,100i,200i,300i,400i,500i,600i,700i,800i,900i",
    "subsets": "cyrillic,cyrillic-ext,greek,greek-ext,latin,latin-ext,vietnamese"
  },
  "Piedra": {"category": "display", "variants": "400", "subsets": "latin,latin-ext"},
  "Pinyon Script": {"category": "handwriting", "variants": "400", "subsets": "latin"},
  "Pirata One": {"category": "display", "variants": "400", "subsets": "latin,latin-ext"},
  "Plaster": {"category": "display", "variants": "400", "subsets": "latin,latin-ext"},
  "Play": {
    "category": "sans-serif",
    "variants": "400,700",
    "subsets": "cyrillic,cyrillic-ext,greek,latin,latin-ext,vietnamese"
  },
  "Playball": {"category": "display", "variants": "400", "subsets": "latin,latin-ext"},
  "Playfair Display": {
    "category": "serif",
    "variants": "400,500,600,700,800,900,400i,500i,600i,700i,800i,900i",
    "subsets": "cyrillic,latin,latin-ext,vietnamese"
  },
  "Playfair Display SC": {
    "category": "serif",
    "variants": "400,400i,700,700i,900,900i",
    "subsets": "cyrillic,latin,latin-ext,vietnamese"
  },
  "Podkova": {
    "category": "serif",
    "variants": "400,500,600,700,800",
    "subsets": "cyrillic,cyrillic-ext,latin,latin-ext,vietnamese"
  },
  "Poiret One": {
    "category": "display",
    "variants": "400",
    "subsets": "cyrillic,latin,latin-ext"
  },
  "Poller One": {"category": "display", "variants": "400", "subsets": "latin"},
  "Poly": {"category": "serif", "variants": "400,400i", "subsets": "latin"},
  "Pompiere": {"category": "display", "variants": "400", "subsets": "latin"},
  "Pontano Sans": {
    "category": "sans-serif",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Poor Story": {"category": "display", "variants": "400", "subsets": "korean,latin"},
  "Poppins": {
    "category": "sans-serif",
    "variants":
        "100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i",
    "subsets": "devanagari,latin,latin-ext"
  },
  "Port Lligat Sans": {"category": "sans-serif", "variants": "400", "subsets": "latin"},
  "Port Lligat Slab": {"category": "serif", "variants": "400", "subsets": "latin"},
  "Pragati Narrow": {
    "category": "sans-serif",
    "variants": "400,700",
    "subsets": "devanagari,latin,latin-ext"
  },
  "Prata": {
    "category": "serif",
    "variants": "400",
    "subsets": "cyrillic,cyrillic-ext,latin,vietnamese"
  },
  "Press Start 2P": {
    "category": "display",
    "variants": "400",
    "subsets": "cyrillic,cyrillic-ext,greek,latin,latin-ext"
  },
  "Pridi": {
    "category": "serif",
    "variants": "200,300,400,500,600,700",
    "subsets": "latin,latin-ext,thai,vietnamese"
  },
  "Princess Sofia": {
    "category": "handwriting",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Prociono": {"category": "serif", "variants": "400", "subsets": "latin"},
  "Prompt": {
    "category": "sans-serif",
    "variants":
        "100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i",
    "subsets": "latin,latin-ext,thai,vietnamese"
  },
  "Prosto One": {
    "category": "display",
    "variants": "400",
    "subsets": "cyrillic,latin,latin-ext"
  },
  "Proza Libre": {
    "category": "sans-serif",
    "variants": "400,400i,500,500i,600,600i,700,700i,800,800i",
    "subsets": "latin,latin-ext"
  },
  "Public Sans": {
    "category": "sans-serif",
    "variants":
        "100,200,300,400,500,600,700,800,900,100i,200i,300i,400i,500i,600i,700i,800i,900i",
    "subsets": "latin,latin-ext"
  },
  "Puritan": {
    "category": "sans-serif",
    "variants": "400,400i,700,700i",
    "subsets": "latin"
  },
  "Purple Purse": {
    "category": "display",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Quando": {"category": "serif", "variants": "400", "subsets": "latin,latin-ext"},
  "Quantico": {
    "category": "sans-serif",
    "variants": "400,400i,700,700i",
    "subsets": "latin"
  },
  "Quattrocento": {
    "category": "serif",
    "variants": "400,700",
    "subsets": "latin,latin-ext"
  },
  "Questrial": {
    "category": "sans-serif",
    "variants": "400",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Quicksand": {
    "category": "sans-serif",
    "variants": "300,400,500,600,700",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Quintessential": {
    "category": "handwriting",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Qwigley": {"category": "handwriting", "variants": "400", "subsets": "latin,latin-ext"},
  "Racing Sans One": {
    "category": "display",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Radley": {"category": "serif", "variants": "400,400i", "subsets": "latin,latin-ext"},
  "Rajdhani": {
    "category": "sans-serif",
    "variants": "300,400,500,600,700",
    "subsets": "devanagari,latin,latin-ext"
  },
  "Rakkas": {
    "category": "display",
    "variants": "400",
    "subsets": "arabic,latin,latin-ext"
  },
  "Raleway": {
    "category": "sans-serif",
    "variants":
        "100,200,300,400,500,600,700,800,900,100i,200i,300i,400i,500i,600i,700i,800i,900i",
    "subsets": "cyrillic,cyrillic-ext,latin,latin-ext,vietnamese"
  },
  "Raleway Dots": {
    "category": "display",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Ramabhadra": {"category": "sans-serif", "variants": "400", "subsets": "latin,telugu"},
  "Ramaraja": {"category": "serif", "variants": "400", "subsets": "latin,telugu"},
  "Rambla": {
    "category": "sans-serif",
    "variants": "400,400i,700,700i",
    "subsets": "latin,latin-ext"
  },
  "Rammetto One": {
    "category": "display",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Ranchers": {"category": "display", "variants": "400", "subsets": "latin,latin-ext"},
  "Rancho": {"category": "handwriting", "variants": "400", "subsets": "latin"},
  "Ranga": {
    "category": "display",
    "variants": "400,700",
    "subsets": "devanagari,latin,latin-ext"
  },
  "Rasa": {
    "category": "serif",
    "variants": "300,400,500,600,700",
    "subsets": "gujarati,latin,latin-ext"
  },
  "Rationale": {"category": "sans-serif", "variants": "400", "subsets": "latin"},
  "Ravi Prakash": {"category": "display", "variants": "400", "subsets": "latin,telugu"},
  "Recursive": {
    "category": "sans-serif",
    "variants": "300,400,500,600,700,800,900",
    "subsets": "latin,vietnamese"
  },
  "Red Hat Display": {
    "category": "sans-serif",
    "variants": "400,400i,500,500i,700,700i,900,900i",
    "subsets": "latin,latin-ext"
  },
  "Red Hat Text": {
    "category": "sans-serif",
    "variants": "400,400i,500,500i,700,700i",
    "subsets": "latin,latin-ext"
  },
  "Red Rose": {
    "category": "display",
    "variants": "300,400,500,600,700",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Redressed": {"category": "handwriting", "variants": "400", "subsets": "latin"},
  "Reem Kufi": {"category": "sans-serif", "variants": "400", "subsets": "arabic,latin"},
  "Reenie Beanie": {"category": "handwriting", "variants": "400", "subsets": "latin"},
  "Revalia": {"category": "display", "variants": "400", "subsets": "latin,latin-ext"},
  "Rhodium Libre": {
    "category": "serif",
    "variants": "400",
    "subsets": "devanagari,latin,latin-ext"
  },
  "Ribeye": {"category": "display", "variants": "400", "subsets": "latin,latin-ext"},
  "Ribeye Marrow": {
    "category": "display",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Righteous": {"category": "display", "variants": "400", "subsets": "latin,latin-ext"},
  "Risque": {"category": "display", "variants": "400", "subsets": "latin,latin-ext"},
  "Roboto": {
    "category": "sans-serif",
    "variants": "100,100i,300,300i,400,400i,500,500i,700,700i,900,900i",
    "subsets": "cyrillic,cyrillic-ext,greek,greek-ext,latin,latin-ext,vietnamese"
  },
  "Roboto Condensed": {
    "category": "sans-serif",
    "variants": "300,300i,400,400i,700,700i",
    "subsets": "cyrillic,cyrillic-ext,greek,greek-ext,latin,latin-ext,vietnamese"
  },
  "Roboto Mono": {
    "category": "monospace",
    "variants": "100,200,300,400,500,600,700,100i,200i,300i,400i,500i,600i,700i",
    "subsets": "cyrillic,cyrillic-ext,greek,latin,latin-ext,vietnamese"
  },
  "Rochester": {"category": "handwriting", "variants": "400", "subsets": "latin"},
  "Rock Salt": {"category": "handwriting", "variants": "400", "subsets": "latin"},
  "Rokkitt": {
    "category": "serif",
    "variants": "100,200,300,400,500,600,700,800,900",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Romanesco": {
    "category": "handwriting",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Ropa Sans": {
    "category": "sans-serif",
    "variants": "400,400i",
    "subsets": "latin,latin-ext"
  },
  "Rosario": {
    "category": "sans-serif",
    "variants": "300,400,500,600,700,300i,400i,500i,600i,700i",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Rosarivo": {"category": "serif", "variants": "400,400i", "subsets": "latin,latin-ext"},
  "Rouge Script": {"category": "handwriting", "variants": "400", "subsets": "latin"},
  "Rowdies": {
    "category": "display",
    "variants": "300,400,700",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Rozha One": {
    "category": "serif",
    "variants": "400",
    "subsets": "devanagari,latin,latin-ext"
  },
  "Rubik": {
    "category": "sans-serif",
    "variants": "300,400,500,600,700,800,900,300i,400i,500i,600i,700i,800i,900i",
    "subsets": "cyrillic,cyrillic-ext,hebrew,latin,latin-ext"
  },
  "Rubik Mono One": {
    "category": "sans-serif",
    "variants": "400",
    "subsets": "cyrillic,latin,latin-ext"
  },
  "Ruda": {
    "category": "sans-serif",
    "variants": "400,500,600,700,800,900",
    "subsets": "cyrillic,latin,latin-ext,vietnamese"
  },
  "Rufina": {"category": "serif", "variants": "400,700", "subsets": "latin,latin-ext"},
  "Ruge Boogie": {
    "category": "handwriting",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Ruluko": {"category": "sans-serif", "variants": "400", "subsets": "latin,latin-ext"},
  "Rum Raisin": {
    "category": "sans-serif",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Ruslan Display": {
    "category": "display",
    "variants": "400",
    "subsets": "cyrillic,latin,latin-ext"
  },
  "Russo One": {
    "category": "sans-serif",
    "variants": "400",
    "subsets": "cyrillic,latin,latin-ext"
  },
  "Ruthie": {"category": "handwriting", "variants": "400", "subsets": "latin,latin-ext"},
  "Rye": {"category": "display", "variants": "400", "subsets": "latin,latin-ext"},
  "Sacramento": {
    "category": "handwriting",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Sahitya": {"category": "serif", "variants": "400,700", "subsets": "devanagari,latin"},
  "Sail": {"category": "display", "variants": "400", "subsets": "latin,latin-ext"},
  "Saira": {
    "category": "sans-serif",
    "variants": "100,200,300,400,500,600,700,800,900",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Saira Condensed": {
    "category": "sans-serif",
    "variants": "100,200,300,400,500,600,700,800,900",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Saira Extra Condensed": {
    "category": "sans-serif",
    "variants": "100,200,300,400,500,600,700,800,900",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Saira Semi Condensed": {
    "category": "sans-serif",
    "variants": "100,200,300,400,500,600,700,800,900",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Saira Stencil One": {
    "category": "display",
    "variants": "400",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Salsa": {"category": "display", "variants": "400", "subsets": "latin"},
  "Sanchez": {"category": "serif", "variants": "400,400i", "subsets": "latin,latin-ext"},
  "Sancreek": {"category": "display", "variants": "400", "subsets": "latin,latin-ext"},
  "Sansita Swashed": {
    "category": "display",
    "variants": "300,400,500,600,700,800,900",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Sarabun": {
    "category": "sans-serif",
    "variants": "100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i",
    "subsets": "latin,latin-ext,thai,vietnamese"
  },
  "Sarala": {
    "category": "sans-serif",
    "variants": "400,700",
    "subsets": "devanagari,latin,latin-ext"
  },
  "Sarina": {"category": "display", "variants": "400", "subsets": "latin,latin-ext"},
  "Sarpanch": {
    "category": "sans-serif",
    "variants": "400,500,600,700,800,900",
    "subsets": "devanagari,latin,latin-ext"
  },
  "Satisfy": {"category": "handwriting", "variants": "400", "subsets": "latin"},
  "Sawarabi Gothic": {
    "category": "sans-serif",
    "variants": "400",
    "subsets": "cyrillic,japanese,latin,latin-ext,vietnamese"
  },
  "Sawarabi Mincho": {
    "category": "sans-serif",
    "variants": "400",
    "subsets": "japanese,latin,latin-ext"
  },
  "Scada": {
    "category": "sans-serif",
    "variants": "400,400i,700,700i",
    "subsets": "cyrillic,cyrillic-ext,latin,latin-ext"
  },
  "Scheherazade": {"category": "serif", "variants": "400,700", "subsets": "arabic,latin"},
  "Schoolbell": {"category": "handwriting", "variants": "400", "subsets": "latin"},
  "Scope One": {"category": "serif", "variants": "400", "subsets": "latin,latin-ext"},
  "Seaweed Script": {
    "category": "display",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Secular One": {
    "category": "sans-serif",
    "variants": "400",
    "subsets": "hebrew,latin,latin-ext"
  },
  "Sedgwick Ave": {
    "category": "handwriting",
    "variants": "400",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Sedgwick Ave Display": {
    "category": "handwriting",
    "variants": "400",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Sen": {
    "category": "sans-serif",
    "variants": "400,700,800",
    "subsets": "latin,latin-ext"
  },
  "Sevillana": {"category": "display", "variants": "400", "subsets": "latin,latin-ext"},
  "Seymour One": {
    "category": "sans-serif",
    "variants": "400",
    "subsets": "cyrillic,latin,latin-ext"
  },
  "Shadows Into Light": {
    "category": "handwriting",
    "variants": "400",
    "subsets": "latin"
  },
  "Shadows Into Light Two": {
    "category": "handwriting",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Shanti": {"category": "sans-serif", "variants": "400", "subsets": "latin"},
  "Share": {
    "category": "display",
    "variants": "400,400i,700,700i",
    "subsets": "latin,latin-ext"
  },
  "Share Tech": {"category": "sans-serif", "variants": "400", "subsets": "latin"},
  "Share Tech Mono": {"category": "monospace", "variants": "400", "subsets": "latin"},
  "Shojumaru": {"category": "display", "variants": "400", "subsets": "latin,latin-ext"},
  "Short Stack": {"category": "handwriting", "variants": "400", "subsets": "latin"},
  "Shrikhand": {
    "category": "display",
    "variants": "400",
    "subsets": "gujarati,latin,latin-ext"
  },
  "Sigmar One": {
    "category": "display",
    "variants": "400",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Signika": {
    "category": "sans-serif",
    "variants": "300,400,500,600,700",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Signika Negative": {
    "category": "sans-serif",
    "variants": "300,400,600,700",
    "subsets": "latin,latin-ext"
  },
  "Simonetta": {
    "category": "display",
    "variants": "400,400i,900,900i",
    "subsets": "latin,latin-ext"
  },
  "Single Day": {"category": "display", "variants": "400", "subsets": "korean"},
  "Sintony": {
    "category": "sans-serif",
    "variants": "400,700",
    "subsets": "latin,latin-ext"
  },
  "Sirin Stencil": {"category": "display", "variants": "400", "subsets": "latin"},
  "Six Caps": {"category": "sans-serif", "variants": "400", "subsets": "latin"},
  "Skranji": {"category": "display", "variants": "400,700", "subsets": "latin,latin-ext"},
  "Slabo 13px": {"category": "serif", "variants": "400", "subsets": "latin,latin-ext"},
  "Slabo 27px": {"category": "serif", "variants": "400", "subsets": "latin,latin-ext"},
  "Slackey": {"category": "display", "variants": "400", "subsets": "latin"},
  "Smokum": {"category": "display", "variants": "400", "subsets": "latin"},
  "Smythe": {"category": "display", "variants": "400", "subsets": "latin"},
  "Sniglet": {"category": "display", "variants": "400,800", "subsets": "latin,latin-ext"},
  "Snippet": {"category": "sans-serif", "variants": "400", "subsets": "latin"},
  "Snowburst One": {
    "category": "display",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Sofadi One": {"category": "display", "variants": "400", "subsets": "latin"},
  "Sofia": {"category": "handwriting", "variants": "400", "subsets": "latin"},
  "Solway": {"category": "serif", "variants": "300,400,500,700,800", "subsets": "latin"},
  "Song Myung": {"category": "serif", "variants": "400", "subsets": "korean,latin"},
  "Sonsie One": {"category": "display", "variants": "400", "subsets": "latin,latin-ext"},
  "Sora": {
    "category": "sans-serif",
    "variants": "100,200,300,400,500,600,700,800",
    "subsets": "latin,latin-ext"
  },
  "Sorts Mill Goudy": {
    "category": "serif",
    "variants": "400,400i",
    "subsets": "latin,latin-ext"
  },
  "Source Code Pro": {
    "category": "monospace",
    "variants": "200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,900,900i",
    "subsets": "cyrillic,cyrillic-ext,greek,latin,latin-ext,vietnamese"
  },
  "Source Sans Pro": {
    "category": "sans-serif",
    "variants": "200,200i,300,300i,400,400i,600,600i,700,700i,900,900i",
    "subsets": "cyrillic,cyrillic-ext,greek,greek-ext,latin,latin-ext,vietnamese"
  },
  "Source Serif Pro": {
    "category": "serif",
    "variants": "200,200i,300,300i,400,400i,600,600i,700,700i,900,900i",
    "subsets": "cyrillic,cyrillic-ext,greek,latin,latin-ext,vietnamese"
  },
  "Space Grotesk": {
    "category": "sans-serif",
    "variants": "300,400,500,600,700",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Space Mono": {
    "category": "monospace",
    "variants": "400,400i,700,700i",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Spartan": {
    "category": "sans-serif",
    "variants": "100,200,300,400,500,600,700,800,900",
    "subsets": "latin,latin-ext"
  },
  "Special Elite": {"category": "display", "variants": "400", "subsets": "latin"},
  "Spectral": {
    "category": "serif",
    "variants": "200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i",
    "subsets": "cyrillic,latin,latin-ext,vietnamese"
  },
  "Spectral SC": {
    "category": "serif",
    "variants": "200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i",
    "subsets": "cyrillic,latin,latin-ext,vietnamese"
  },
  "Spicy Rice": {"category": "display", "variants": "400", "subsets": "latin"},
  "Spinnaker": {
    "category": "sans-serif",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Spirax": {"category": "display", "variants": "400", "subsets": "latin"},
  "Squada One": {"category": "display", "variants": "400", "subsets": "latin"},
  "Sree Krushnadevaraya": {
    "category": "serif",
    "variants": "400",
    "subsets": "latin,telugu"
  },
  "Sriracha": {
    "category": "handwriting",
    "variants": "400",
    "subsets": "latin,latin-ext,thai,vietnamese"
  },
  "Srisakdi": {
    "category": "display",
    "variants": "400,700",
    "subsets": "latin,latin-ext,thai,vietnamese"
  },
  "Staatliches": {"category": "display", "variants": "400", "subsets": "latin,latin-ext"},
  "Stalemate": {
    "category": "handwriting",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Stardos Stencil": {"category": "display", "variants": "400,700", "subsets": "latin"},
  "Stint Ultra Condensed": {
    "category": "display",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Stint Ultra Expanded": {
    "category": "display",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Stoke": {"category": "serif", "variants": "300,400", "subsets": "latin,latin-ext"},
  "Strait": {"category": "sans-serif", "variants": "400", "subsets": "latin"},
  "Stylish": {"category": "sans-serif", "variants": "400", "subsets": "korean,latin"},
  "Sue Ellen Francisco": {
    "category": "handwriting",
    "variants": "400",
    "subsets": "latin"
  },
  "Suez One": {
    "category": "serif",
    "variants": "400",
    "subsets": "hebrew,latin,latin-ext"
  },
  "Sulphur Point": {
    "category": "sans-serif",
    "variants": "300,400,700",
    "subsets": "latin,latin-ext"
  },
  "Sumana": {
    "category": "serif",
    "variants": "400,700",
    "subsets": "devanagari,latin,latin-ext"
  },
  "Sunflower": {
    "category": "sans-serif",
    "variants": "300,500,700",
    "subsets": "korean,latin"
  },
  "Sunshiney": {"category": "handwriting", "variants": "400", "subsets": "latin"},
  "Supermercado One": {"category": "display", "variants": "400", "subsets": "latin"},
  "Sura": {
    "category": "serif",
    "variants": "400,700",
    "subsets": "devanagari,latin,latin-ext"
  },
  "Suranna": {"category": "serif", "variants": "400", "subsets": "latin,telugu"},
  "Suravaram": {"category": "serif", "variants": "400", "subsets": "latin,telugu"},
  "Swanky and Moo Moo": {
    "category": "handwriting",
    "variants": "400",
    "subsets": "latin"
  },
  "Syncopate": {"category": "sans-serif", "variants": "400,700", "subsets": "latin"},
  "Syne": {
    "category": "sans-serif",
    "variants": "400,500,600,700,800",
    "subsets": "latin,latin-ext"
  },
  "Syne Mono": {"category": "monospace", "variants": "400", "subsets": "latin,latin-ext"},
  "Syne Tactile": {
    "category": "display",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Tajawal": {
    "category": "sans-serif",
    "variants": "200,300,400,500,700,800,900",
    "subsets": "arabic,latin"
  },
  "Tangerine": {"category": "handwriting", "variants": "400,700", "subsets": "latin"},
  "Tauri": {"category": "sans-serif", "variants": "400", "subsets": "latin,latin-ext"},
  "Taviraj": {
    "category": "serif",
    "variants":
        "100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i",
    "subsets": "latin,latin-ext,thai,vietnamese"
  },
  "Teko": {
    "category": "sans-serif",
    "variants": "300,400,500,600,700",
    "subsets": "devanagari,latin,latin-ext"
  },
  "Telex": {"category": "sans-serif", "variants": "400", "subsets": "latin,latin-ext"},
  "Tenali Ramakrishna": {
    "category": "sans-serif",
    "variants": "400",
    "subsets": "latin,telugu"
  },
  "Tenor Sans": {
    "category": "sans-serif",
    "variants": "400",
    "subsets": "cyrillic,latin,latin-ext"
  },
  "Text Me One": {
    "category": "sans-serif",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Thasadith": {
    "category": "sans-serif",
    "variants": "400,400i,700,700i",
    "subsets": "latin,latin-ext,thai,vietnamese"
  },
  "The Girl Next Door": {
    "category": "handwriting",
    "variants": "400",
    "subsets": "latin"
  },
  "Tienne": {"category": "serif", "variants": "400,700,900", "subsets": "latin"},
  "Tillana": {
    "category": "handwriting",
    "variants": "400,500,600,700,800",
    "subsets": "devanagari,latin,latin-ext"
  },
  "Timmana": {"category": "sans-serif", "variants": "400", "subsets": "latin,telugu"},
  "Tinos": {
    "category": "serif",
    "variants": "400,400i,700,700i",
    "subsets": "cyrillic,cyrillic-ext,greek,greek-ext,hebrew,latin,latin-ext,vietnamese"
  },
  "Titan One": {"category": "display", "variants": "400", "subsets": "latin,latin-ext"},
  "Titillium Web": {
    "category": "sans-serif",
    "variants": "200,200i,300,300i,400,400i,600,600i,700,700i,900",
    "subsets": "latin,latin-ext"
  },
  "Tomorrow": {
    "category": "sans-serif",
    "variants":
        "100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i",
    "subsets": "latin,latin-ext"
  },
  "Trade Winds": {"category": "display", "variants": "400", "subsets": "latin"},
  "Trirong": {
    "category": "serif",
    "variants":
        "100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i",
    "subsets": "latin,latin-ext,thai,vietnamese"
  },
  "Trispace": {
    "category": "sans-serif",
    "variants": "100,200,300,400,500,600,700,800",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Trocchi": {"category": "serif", "variants": "400", "subsets": "latin,latin-ext"},
  "Trochut": {"category": "display", "variants": "400,400i,700", "subsets": "latin"},
  "Trykker": {"category": "serif", "variants": "400", "subsets": "latin,latin-ext"},
  "Tulpen One": {"category": "display", "variants": "400", "subsets": "latin"},
  "Turret Road": {
    "category": "display",
    "variants": "200,300,400,500,700,800",
    "subsets": "latin,latin-ext"
  },
  "Ubuntu": {
    "category": "sans-serif",
    "variants": "300,300i,400,400i,500,500i,700,700i",
    "subsets": "cyrillic,cyrillic-ext,greek,greek-ext,latin,latin-ext"
  },
  "Ubuntu Condensed": {
    "category": "sans-serif",
    "variants": "400",
    "subsets": "cyrillic,cyrillic-ext,greek,greek-ext,latin,latin-ext"
  },
  "Ubuntu Mono": {
    "category": "monospace",
    "variants": "400,400i,700,700i",
    "subsets": "cyrillic,cyrillic-ext,greek,greek-ext,latin,latin-ext"
  },
  "Ultra": {"category": "serif", "variants": "400", "subsets": "latin"},
  "Uncial Antiqua": {"category": "display", "variants": "400", "subsets": "latin"},
  "Underdog": {
    "category": "display",
    "variants": "400",
    "subsets": "cyrillic,latin,latin-ext"
  },
  "Unica One": {"category": "display", "variants": "400", "subsets": "latin,latin-ext"},
  "UnifrakturCook": {"category": "display", "variants": "700", "subsets": "latin"},
  "UnifrakturMaguntia": {"category": "display", "variants": "400", "subsets": "latin"},
  "Unkempt": {"category": "display", "variants": "400,700", "subsets": "latin"},
  "Unlock": {"category": "display", "variants": "400", "subsets": "latin"},
  "Unna": {
    "category": "serif",
    "variants": "400,400i,700,700i",
    "subsets": "latin,latin-ext"
  },
  "VT323": {
    "category": "monospace",
    "variants": "400",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Vampiro One": {"category": "display", "variants": "400", "subsets": "latin,latin-ext"},
  "Varela": {"category": "sans-serif", "variants": "400", "subsets": "latin,latin-ext"},
  "Varela Round": {
    "category": "sans-serif",
    "variants": "400",
    "subsets": "hebrew,latin,latin-ext,vietnamese"
  },
  "Varta": {
    "category": "sans-serif",
    "variants": "300,400,500,600,700",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Vast Shadow": {"category": "display", "variants": "400", "subsets": "latin"},
  "Vesper Libre": {
    "category": "serif",
    "variants": "400,500,700,900",
    "subsets": "devanagari,latin,latin-ext"
  },
  "Viaoda Libre": {
    "category": "display",
    "variants": "400",
    "subsets": "cyrillic,cyrillic-ext,latin,latin-ext,vietnamese"
  },
  "Vibes": {"category": "display", "variants": "400", "subsets": "arabic,latin"},
  "Vibur": {"category": "handwriting", "variants": "400", "subsets": "latin"},
  "Vidaloka": {"category": "serif", "variants": "400", "subsets": "latin"},
  "Viga": {"category": "sans-serif", "variants": "400", "subsets": "latin,latin-ext"},
  "Voces": {"category": "display", "variants": "400", "subsets": "latin,latin-ext"},
  "Volkhov": {"category": "serif", "variants": "400,400i,700,700i", "subsets": "latin"},
  "Vollkorn": {
    "category": "serif",
    "variants": "400,500,600,700,800,900,400i,500i,600i,700i,800i,900i",
    "subsets": "cyrillic,cyrillic-ext,greek,latin,latin-ext,vietnamese"
  },
  "Vollkorn SC": {
    "category": "serif",
    "variants": "400,600,700,900",
    "subsets": "cyrillic,cyrillic-ext,latin,latin-ext,vietnamese"
  },
  "Voltaire": {"category": "sans-serif", "variants": "400", "subsets": "latin"},
  "Waiting for the Sunrise": {
    "category": "handwriting",
    "variants": "400",
    "subsets": "latin"
  },
  "Wallpoet": {"category": "display", "variants": "400", "subsets": "latin"},
  "Walter Turncoat": {"category": "handwriting", "variants": "400", "subsets": "latin"},
  "Warnes": {"category": "display", "variants": "400", "subsets": "latin,latin-ext"},
  "Wellfleet": {"category": "display", "variants": "400", "subsets": "latin,latin-ext"},
  "Wendy One": {
    "category": "sans-serif",
    "variants": "400",
    "subsets": "latin,latin-ext"
  },
  "Wire One": {"category": "sans-serif", "variants": "400", "subsets": "latin"},
  "Work Sans": {
    "category": "sans-serif",
    "variants":
        "100,200,300,400,500,600,700,800,900,100i,200i,300i,400i,500i,600i,700i,800i,900i",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Xanh Mono": {
    "category": "monospace",
    "variants": "400,400i",
    "subsets": "latin,latin-ext,vietnamese"
  },
  "Yanone Kaffeesatz": {
    "category": "sans-serif",
    "variants": "200,300,400,500,600,700",
    "subsets": "cyrillic,latin,latin-ext,vietnamese"
  },
  "Yantramanav": {
    "category": "sans-serif",
    "variants": "100,300,400,500,700,900",
    "subsets": "devanagari,latin,latin-ext"
  },
  "Yatra One": {
    "category": "display",
    "variants": "400",
    "subsets": "devanagari,latin,latin-ext"
  },
  "Yellowtail": {"category": "handwriting", "variants": "400", "subsets": "latin"},
  "Yeon Sung": {"category": "display", "variants": "400", "subsets": "korean,latin"},
  "Yeseva One": {
    "category": "display",
    "variants": "400",
    "subsets": "cyrillic,cyrillic-ext,latin,latin-ext,vietnamese"
  },
  "Yesteryear": {"category": "handwriting", "variants": "400", "subsets": "latin"},
  "Yrsa": {
    "category": "serif",
    "variants": "300,400,500,600,700",
    "subsets": "latin,latin-ext"
  },
  "ZCOOL KuaiLe": {
    "category": "display",
    "variants": "400",
    "subsets": "chinese-simplified,latin"
  },
  "ZCOOL QingKe HuangYou": {
    "category": "display",
    "variants": "400",
    "subsets": "chinese-simplified,latin"
  },
  "ZCOOL XiaoWei": {
    "category": "serif",
    "variants": "400",
    "subsets": "chinese-simplified,latin"
  },
  "Zeyada": {"category": "handwriting", "variants": "400", "subsets": "latin"},
  "Zhi Mang Xing": {
    "category": "handwriting",
    "variants": "400",
    "subsets": "chinese-simplified,latin"
  },
  "Zilla Slab": {
    "category": "serif",
    "variants": "300,300i,400,400i,500,500i,600,600i,700,700i",
    "subsets": "latin,latin-ext"
  },
  "Zilla Slab Highlight": {
    "category": "display",
    "variants": "400,700",
    "subsets": "latin,latin-ext"
  }
};
