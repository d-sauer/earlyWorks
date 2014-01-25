Attribute VB_Name = "MusicType"
Public Type POINTAPI
X As Long
Y As Long
End Type
Public Declare Function GetCursorPos Lib "user32" (lpPoint As POINTAPI) As Long

Function Rock(Num As Integer)
Dim LRock
LRock = Array("Aboriginal Rock ", "Adult Alternative Pop/Rock", "Album Rock", "Alternative Country-Rock ", "Alternative Dance", "Ambient Pop ", "American Trad Rock", "Arena Rock", "Bar Band ", "Beach", "Blues-Rock", "Brill Building Pop", "British Invasion ", "British Psychedelia ", "British Trad Rock", "Brown Eyed Soul ", _
"C-86 ", "Chamber Pop ", "Club/Dance", "College Rock ", "Contemporary R&B ", "Country-Soul ", "Dance-Pop", "Deep Soul", "Disco", "Doom Metal", "Early British Pop/Rock", "Emo ", "Euro-Pop ", "Experimental Rock", "Folk-Rock", "Frat Rock", "Freestyle", "French Rock ", "Funk Metal", "Garage Rock ", "Girl Group", "Glitter ", "Goth Metal", _
"Grindcore", "Guitar Virtuoso ", "Hard Rock", "Heartland Rock", "Hong Kong Pop", "Hot Rod Revival ", "Indie Rock", "Industrial Metal ", "International Pop", "Jangle Pop", "Japanese Rock", "Kraut Rock", "Latin Rock", "Madchester", "Memphis Soul ", "Mod ", "Motown", "Neo-Glam ", "Neo-Psychedelia ", "New Orleans R&B ", "New Wave ", _
"New York Punk", "No Wave ", "Noise-Rock", "Obscuro ", "Paisley Underground ", "Pop ", "Pop-Metal", "Pop/Rock ", "Post-Punk", "Power Metal ", "Prog-Rock/Art Rock", "Proto-Punk", "Psychedelic Pop ", "Pub Rock ", "Punk Metal", "Punk-Pop ", "Quiet Storm ", "Rap-Metal", "Retro Swing ", "Retro-Soul", "Rock & Roll ", "Rockabilly Revival", "Sadcore ", _
"Shibuya-Kei ", "Singer/Songwriter", "Ska-Punk ", "Skiffle ", "Sludge Metal ", "Soft Rock", "Soul ", "Southern Soul", "Speed Metal ", "Stoner Metal ", "Sunshine Pop ", "Surf Revival ", "Swedish Pop/Rock ", "Synth Pop", "Teen Pop ", "Third Wave Ska Revival", "Tribute Albums", "Uptown Soul ", "Urban Folk", "Acid Rock", "Adult Contemporary", "Alternative Pop/Rock ", _
"Alternative Metal", "AM Pop", "American Punk", "Anarchist Punk", "Aussie Rock ", "Baroque Pop ", "Blue-Eyed Soul", "Boogie Rock ", "British Folk-Rock", "British Metal", "British Punk ", "Britpop ", "Bubblegum", "Canterbury Scene ", "Chicago Soul ", "Cocktail ", "Comedy Rock ", "Country-Rock ", "Cowpunk ", "Death Metal/Black Metal ", "Detroit Rock ", "Doo Wop ", "Dream Pop", _
"Electro-Industrial", "Euro-Dance", "Euro-Rock", "Folk-Pop ", "Foreign Language Rock", "Freakbeat", "French Pop", "Funk ", "Garage Punk ", "Garage Rock Revival ", "Glam Rock", "Go-Go", "Goth Rock", "Grunge", "Hair Metal", "Hardcore Punk", "Heavy Metal ", "Hot Rod ", "Indie Pop", "Industrial", "Instrumental Rock", "Jam Bands", "Japanese Pop ", "Jazz-Rock", "L.A. Punk", "Lo-Fi", _
"Math Rock", "Merseybeat", "Mod Revival ", "Neo-Classical Metal ", "Neo-Prog ", "New Jack Swing", "New Romantic ", "New Wave of British Heavy Metal ", "New Zealand Rock ", "Noise Pop", "Northern Soul", "Oi! ", "Philly Soul ", "Pop Underground ", "Pop-Soul ", "Post-Grunge ", "Post-Rock/Experimental", "Power Pop", "Progressive Metal", "Psychedelic ", "Psychobilly ", "Punk ", _
"Punk Revival ", "Queercore", "R&B ", "Rap-Rock ", "Retro-Rock", "Riot Grrrl", "Rockabilly", "Roots Rock", "Scandinavian Metal", "Shoegazing", "Ska Revival ", "Skatepunk", "Slowcore ", "Smooth Soul ", "Sophisti-Pop ", "Southern Rock", "Space Rock", "Sports Anthems", "Straight-Edge", "Surf ", "Swamp Pop", "Symphonic Black Metal", "Teen Idol", "Tex-Mex ", "Thrash", "Twee Pop ", "Urban")

Rock = LRock(Num)
End Function


Function Country(Num As Integer)
Dim LCountry
LCountry = Array("Alternative Country", "Americana", "Appalachian Folk", "Bakersfield Sound", "Close Harmony", "Contemporary Country", "Country Boogie", "Country Comedy", "Country Gospel", "Country-Folk", "Country-Pop", "Cowboy", "Honky Tonk", "Instrumental Country", "Jug Band", "Nashville Sound/Countrypolitan", "Neo-Traditionalist Country", "New Traditionalist", "Old-Timey", "Outlaw Country", "Progressive Country", "Rodeo", "Square Dance", "String Bands", "Traditional Country", "Truck Driving Country", "Urban Cowboy", "Western Swing", "Western Swing Revival", "Yodeling")
Country = LCountry(Num)
End Function


Function Jazz(Num As Integer)
Dim LJazz
LJazz = Array("African Jazz ", "Avant-Garde Jazz ", "Big Band ", "Bop ", "Chamber Jazz ", "Contemporary Jazz", "Crossover Jazz  ", "Dance Bands ", "Dixieland Revival", "Experimental Big Band", "Free Funk", "Fusion", "Jazz Blues", "Jazz-Pop", "M-Base", "Modal Music", "Modern Creative", "Mood Music", "New Orleans Jazz", "Novelty Ragtime", "Post-Bop", "Progressive Jazz", "Smooth Jazz", "Standards", "Sweet Bands", "Third Stream", "Vocal Jazz", "West Coast Jazz", "Afro-Cuban Jazz", "Ballads", "Boogie-Woogie", "Brazilian Jazz", "Classic Jazz", "Cool", "Cuban Jazz", "Dixieland", "Early Creative", "Folk-Jazz", "Free Jazz", _
"Hard Bop", "Jazz-Funk", "Jive", "Mainstream Jazz", "Modern Big Band", "Modern Free", "Neo-Bop", "New Orleans Brass Bands", "Orchestral Jazz", "Progressive Big Band", "Ragtime", "Soul-Jazz", "Stride", "Swing", "Trad Jazz", "Vocalese", "World Fusion")

Jazz = LJazz(Num)
End Function



Function Blues(Num As Integer)
Dim LBlues
LBlues = Array("Acoustic Blues", "Acoustic Louisiana Blues", "Acoustic New Orleans Blues", "Blues Gospel", "British Blues", "Classic Female Blues", "Country Blues", "Detroit Blues", "Early American Blues", "Electric Blues", "Electric Country Blues", "Electric Harmonica Blues", "Electric Texas Blues", "Harmonica Blues", "Jump Blues", "Memphis Blues", "Modern Acoustic Blues", "Modern Electric Blues", "Modern Electric Texas Blues", "New York Blues", "Piedmont Blues", "Prewar Country Blues", "Slide Guitar Blues", "Soul-Blues", "Swamp Blues", "Urban Blues", "West Coast Blues", "Acoustic Chicago Blues", "Acoustic Memphis Blues", "Acoustic Texas Blues", "Blues Revival", "Chicago Blues", "Contemporary Blues", "Delta Blues", "Dirty Blues", "East Coast Blues", _
"Electric Chicago Blues", "Electric Delta Blues", "Electric Memphis Blues", "Folk-Blues", "Juke Joint Blues", "Louisiana Blues", "Minstrel", "Modern Delta Blues", "Modern Electric Chicago Blues", "New Orleans Blues", "Piano Blues", "Prewar Blues", "Prewar Gospel Blues", "Songster", "St. Louis Blues", "Texas Blues", "Vaudeville Blues", "Work Songs")

Blues = LBlues(Num)
End Function


Function World(Num As Integer)
Dim LWorld
LWorld = Array("Aboriginal Folk", "Afro-Beat", "American Jewish Pop", "Apala", "Armenian Folk", "Asian Pop", "Belair", "Bhangra", "Bombara", "Cadence", "Carnatic", "Changui", "Chassidic", "Chinese Folk", "Chinese Pop-Rock", "Contemporary Flamenco", "Dhrupad", "Djabdong", "Ethnic", "Fado", "Finnish Folk", "Folklore", "Fuji", "Georgian Choir", "Greek Folk", "Gwo Ka", "Hebrew", "Hungarian Folk", "Indian Classical", "Indian Pop", "International Folk", "Italian Folk", "Jaipongan", "Jewish Folk", "Jit", "Juju", "Kabuki", "Khmer Rouge Dance", "Kora", "Macapat Poetry", "Mantras", "Mbalax", "Mbira", "Mbuti Choral", "Moravian Folk", "Mugam", "Neo-Traditional", "Noh", _
"Omutibo", "Pipe Bands", "Qawwali", "Raga", "Rapso", "Russian Folk", "Scandinavian Folk", "Sharki", "Slack-Key Guitar", "Social Commentary", "South African Pop", "Spanish Folk", "Swedish Folk", "Séga", "Township Jazz", "Traditional European Folk", "Traditional Chinese", "Turkish Folk", "Vaudou", "Zouk", "African Folk", "Afro-Pop", "Andalus Classical", "Armenian", "Asian Folk", "Bava", "Belly Dancing", "Bikutsi", "Bulgarian Folk", "Calypso", "Ceremonial", "Chants", "Chimurenga", "Chinese Pop", "Chouval Bwa", "Danzon", "Dimotiko", "Eastern Europe", "European Folk", "Finger-Picked Guitar", "Flamenco", "French Folk", "Gamelan", "Giddha", "Grupero", "Gypsy", "Highlife", _
"Indian Art Film Music", "Indian Folk", "Indigenous", "Inuit", "Italian Pop", "Japanese Orchestral", "Jewish Music", "Joik", "Junkanoo", "Kecak", "Klezmer", "Laika", "Makossa", "Marabi", "Mbaqanga", "Mbube", "Mira", "Morna", "Musette", "Nissiotiko", "Norwegian Folk", "Party Soca", "Pygmy", "Quadrille", "Rai", "Rembetika", "Sarangi", "Scottish Folk", "Shinto", "Soca", "Soukous", "South African Folk", "Steel Band", "Switzerland Folk", "Taarab", "Traditional", "Traditional Japanese", "Traditional Middle Eastern Folk", "Tuvan Throat Singing", "Worldbeat")

World = LWorld(Num)
End Function


Function Folk(Num As Integer)
Dim LFolk
LFolk = Array("Alternative Folk", "Anti-Folk", "British Folk", "Children's Folk", "Contemporary Folk", "Contemporary Singer/Songwriter", "Field Recordings", "Folk Revival", "Folksongs", "Irish Folk", "New Acoustic", "Political Folk", "Progressive Folk", "Sea Shanties", "Traditional Folk", "Traditional Scottish Folk")

Folk = LFolk(Num)
End Function

Function Rap(Num As Integer)
Dim LRap
LRap = Array("Alternative Rap", "Bass Music", "British Rap", "Comedy Rap", "Dirty Rap", "Dirty South", "DJ", "East Coast Rap", "Foreign Rap", "G-Funk", "Gangsta Rap", "Golden Age", "Hardcore Rap", "Hip-Hop", "Jazz-Rap", "Latin Rap", "Old School Rap", "Party Rap", "Political Rap", "Pop-Rap", "Southern Rap", "Turntablism", "Underground Rap", "West Coast Rap")

Rap = LRap(Num)
End Function


Public Function Reggae(Num As Integer)
Dim LReggae
LReggae = Array("Bluebeat", "Caribbean Folk", "Contemporary Reggae", "Dancehall", "Dub", "Dub Poetry", "Lovers Rock", "Nyahbinghi", "Political Reggae", "Ragga", "Reggae-Pop", "Rocksteady", "Roots Reggae", "Ska", "Smooth Reggae")

Reggae = LReggae(Num)
End Function

Public Function Vocal(Num As Integer)
Dim LVocal
LVocal = Array("Acappella", "American Popular Song", "Barbershop Quartet", "Cabaret", "Celebrity", "Harmony Vocal Group", "Music Hall", "Musical Theater", "Nostalgia", "Tin Pan Alley Pop", "Torch Songs", "Traditional Pop", "Vocal Pop")

Vocal = LVocal(Num)
End Function


Public Function Gospel(Num As Integer)
Dim LGospel
LGospel = Array("Alternative CCM", "Black Gospel", "CCM", "Christian Comedy", "Christian Metal", "Christian Punk", "Christian Rap", "Christian Rock", "Contemporary Gospel", "Gospel Choir", "Hymns", "Inspirational", "Instrumental Gospel", "Jesus Rock", "Praise & Worship", "Reggae Gospel", "Scriptures", "Southern Gospel", "Spirituals", "Traditional Gospel")

Gospel = LGospel(Num)
End Function

Public Function Easy(Num As Integer)
Dim LEasy

LEasy = Array("Ballroom Dance", "Classical Pop", "Easy Pop", "Exotica", "Instrumental Pop", "Lounge", "Orchestral", "Orchestral Pop", "Polka", "Space Age Pop", "Vaudeville", "Waltz", "Wedding Music")

Easy = LEasy(Num)
End Function

Public Function NewAge(Num As Integer)
Dim LNewAge
LNewAge = Array("Adult Alternative", "Ambient", "Contemporary Instrumental", "Ethnic Fusion", "Healing", "Meditation", "Mystical Minimalism", "Nature", "Neo-Classical", "New Age Tone Poems", "Progressive Alternative", "Progressive Electronic", "Relaxation", "Self-Help", "Solo Instrumental", "Space", "Spiritual", "Techno-Tribal")

NewAge = LNewAge(Num)
End Function

Public Function Winamp(Num As Integer)
Dim Matrix
Matrix = Array("Blues", "Classic Rock", "Country", "Dance", "Disco", "Funk", "Grunge", _
"Hip -Hop", "Jazz", "Metal", "New Age", "Oldies", "Other", "Pop", "R&b", "Rap", "Reggae", _
"Rock", "Techno", "Industrial", "Alternative", "Ska", "Death Metal", "Pranks", _
"Soundtrack", "Euro -Techno", "Ambient", "Trip -Hop", "Vocal", "Jazz Funk", "Fusion", _
"Trance", "Classical", "Instrumental", "Acid", "House", "Game", "Sound Clip", "Gospel", _
"Noise", "AlternRock", "Bass", "Soul", "Punk", "Space", "Meditative", "Instrumental Pop", _
"Instrumental Rock", "Ethnic", "Gothic", "Darkwave", "Techno -Industrial", "Electronic", _
"Pop -Folk", "Eurodance", "Dream", "Southern Rock", "Comedy", "Cult", "Gangsta", "Top 40", _
"Christian Rap", "Pop/Funk", "Jungle", "Native American", "Cabaret", "New Wave", _
"Psychadelic", "Rave", "Showtunes", "Trailer", "Lo -Fi", "Tribal", "Acid Punk", "Acid Jazz", _
"Polka", "Retro", "Musical", "Rock & Roll", "Hard Rock", "Folk", "Folk/Rock", "National Folk", _
"Swing", "Bebob", "Latin", "Revival", "Celtic", "Bluegrass", "Avantgarde", "Gothic Rock", _
"Progressive Rock", "Psychedelic Rock", "Symphonic Rock", "Slow Rock", "Big Band", "Chorus", "Easy Listening", _
"Acoustic", "Humour", "Speech", "Chanson", "Opera", "Chamber Music", "Sonata", "Symphony", "Booty Bass", _
"Primus", "Porn Groove", "Satire", "Slow Jam", "Club", "Tango", "Samba", "Folklore", "Ballad", "Power Ballad", _
"Rhythmic Soul", "Freestyle", "Duet", "Punk Rock", "Drum Solo", "A Cappella", _
"Euro - House", "Dance Hall", "Goa", "Drum & Bass", "Club - House", "Hardcore", "Terror", "Indie", "BritPop", _
"Negerpunk", "Polsk Punk", "Beat", "Christian Gangsta Rap", "Heavy Metal", "Black Metal", "Crossover", _
"Contemporary Christian", "Christian Rock", "Merengue", "Salsa", "Thrash Metal", "Anime", "JPop", "Synthpop")
Winamp = Matrix(Num)
End Function


Public Function AllGame(Num As Integer)
Dim LGame
LGame = Array("Action", "Adult", "Adventure", "Educational", "Fighting", "Home", "Maintenance/Organizer", "Puzzle", "Racing", "Reference", "Shooter", "Simulation", "Sports", "Strategy", "Traditional")
AllGame = LGame(Num)
End Function

Public Function AllMovie(Num As Integer)
Dim LMovie
LMovie = Array("Action Movies", "Adventure Films", "American Films of the Seventies", "Animated Films", "Avant-Garde", "Comedy", "Crime", "Cult Films", "Docudramas", "Documentaries", "Erotic", "Exploitation Movies: Bikers, Babes, and Slashers", "Fantasy", "Film Festivals and Awards", "Film Noir", "Home Video", "Horror", "Martial-Arts Films", "Movie Serials", "Musicals", "Mysteries", "Prison", "Religious", "RKO", "Science Fiction Films", "Silent Movies", "Spaghetti Westerns", "Spy Film", "The Supernatural", "Thrillers", "Tragedy", "War Films", "Westerns", "Porno")
AllMovie = LMovie(Num)
End Function

