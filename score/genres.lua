--
-- User: Glastis
-- Mail: glastis@glastis.com
-- Date: 13/05/18
-- Time: 17:31
--

local constant = require('common.constants')
local utilitie = require('common.utilities')

local genres
genres = {}

local function get_genres()
    local amount
    local sub_genre
    local genre
    local id

    genre = {}
    amount = 0
    id = 0
    sub_genre = {}
    sub_genre.name = 'Alternative'
    sub_genre.sub = {}
    sub_genre.sub['Art Punk'] = id id = id + 1
    sub_genre.sub['Alternative Rock'] = id id = id + 1
    sub_genre.sub['College Rock'] = id id = id + 1
    sub_genre.sub['Crossover Thrash'] = id id = id + 1
    sub_genre.sub['Crust Punk'] = id id = id + 1
    sub_genre.sub['Experimental Rock'] = id id = id + 1
    sub_genre.sub['Folk Punk'] =   id id = id + 1
    sub_genre.sub['Goth / Gothic Rock'] = id id = id + 1
    sub_genre.sub['Grunge'] = id id = id + 1
    sub_genre.sub['Hardcore Punk'] = id id = id + 1
    sub_genre.sub['Hard Rock'] =   id id = id + 1
    sub_genre.sub['Indie Rock'] = id id = id + 1
    sub_genre.sub['Lo-fi'] = id id = id + 1
    sub_genre.sub['New Wave'] = id id = id + 1
    sub_genre.sub['Progressive Rock'] = id id = id + 1
    sub_genre.sub['Punk'] = id id = id + 1
    sub_genre.sub['Shoegaze'] = id id = id + 1
    sub_genre.sub['Steampunk'] = id id = id + 1
    genre[#genre + 1] = sub_genre
    amount = amount + #sub_genre.sub

    sub_genre = {}
    sub_genre.name = 'Anime'
    genre[#genre + 1] = sub_genre

    sub_genre = {}
    sub_genre.name = 'Blues'
    sub_genre.sub = {}
    sub_genre.sub['Acoustic Blues'] = id id = id + 1
    sub_genre.sub['Chicago Blues'] = id id = id + 1
    sub_genre.sub['Classic Blues'] = id id = id + 1
    sub_genre.sub['Contemporary Blues'] = id id = id + 1
    sub_genre.sub['Country Blues'] = id id = id + 1
    sub_genre.sub['Delta Blues'] = id id = id + 1
    sub_genre.sub['Electric Blues'] = id id = id + 1
    sub_genre.sub['Ragtime Blues'] = id id = id + 1
    genre[#genre + 1] = sub_genre
    amount = amount + #sub_genre.sub

    sub_genre = {}
    sub_genre.name = 'Children\'s Music'
    sub_genre.sub = {}
    sub_genre.sub['Lullabies'] = id id = id + 1
    sub_genre.sub['Sing-Along'] = id id = id + 1
    sub_genre.sub['Stories'] = id id = id + 1
    genre[#genre + 1] = sub_genre
    amount = amount + #sub_genre.sub

    sub_genre = {}
    sub_genre.name = 'Classical'
    sub_genre.sub = {}
    sub_genre.sub['Avant-Garde'] = id id = id + 1
    sub_genre.sub['Baroque'] = id id = id + 1
    sub_genre.sub['Chamber Music'] = id id = id + 1
    sub_genre.sub['Chant'] = id id = id + 1
    sub_genre.sub['Choral'] = id id = id + 1
    sub_genre.sub['Classical Crossover'] = id id = id + 1
    sub_genre.sub['Contemporary Classical'] = id id = id + 1
    sub_genre.sub['Early Music'] = id id = id + 1
    sub_genre.sub['Expressionist'] = id id = id + 1
    sub_genre.sub['High Classical'] = id id = id + 1
    sub_genre.sub['Impressionist'] = id id = id + 1
    sub_genre.sub['Medieval'] = id id = id + 1
    sub_genre.sub['Minimalism'] = id id = id + 1
    sub_genre.sub['Modern Composition'] = id id = id + 1
    sub_genre.sub['Opera'] = id id = id + 1
    sub_genre.sub['Orchestral'] = id id = id + 1
    sub_genre.sub['Renaissance'] = id id = id + 1
    sub_genre.sub['Romantic (early period)'] = id id = id + 1
    sub_genre.sub['Romantic (later period)'] = id id = id + 1
    sub_genre.sub['Wedding Music'] = id id = id + 1
    genre[#genre + 1] = sub_genre
    amount = amount + #sub_genre.sub

    sub_genre = {}
    sub_genre.name = 'Comedy'
    sub_genre.sub = {}
    sub_genre.sub['Novelty'] = id id = id + 1
    sub_genre.sub['Standup Comedy'] = id id = id + 1
    sub_genre.sub['Vaudeville'] = id id = id + 1
    genre[#genre + 1] = sub_genre
    amount = amount + #sub_genre.sub

    sub_genre = {}
    sub_genre.name = 'Commercial'
    sub_genre.sub = {}
    sub_genre.sub['Jingles'] = id id = id + 1
    sub_genre.sub['TV Themes'] = id id = id + 1
    genre[#genre + 1] = sub_genre
    amount = amount + #sub_genre.sub

    sub_genre = {}
    sub_genre.name = 'Country'
    sub_genre.sub = {}
    sub_genre.sub['Alternative Country'] = id id = id + 1
    sub_genre.sub['Americana'] = id id = id + 1
    sub_genre.sub['Bluegrass'] = id id = id + 1
    sub_genre.sub['Contemporary Bluegrass'] = id id = id + 1
    sub_genre.sub['Contemporary Country'] = id id = id + 1
    sub_genre.sub['Country Gospel'] = id id = id + 1
    sub_genre.sub['Country Pop'] = id id = id + 1
    sub_genre.sub['Honky Tonk'] = id id = id + 1
    sub_genre.sub['Outlaw Country'] = id id = id + 1
    sub_genre.sub['Traditional Bluegrass'] = id id = id + 1
    sub_genre.sub['Traditional Country'] = id id = id + 1
    sub_genre.sub['Urban Cowboy'] = id id = id + 1
    genre[#genre + 1] = sub_genre
    amount = amount + #sub_genre.sub

    sub_genre = {}
    sub_genre.name = 'Dance'
    sub_genre.sub = {}
    sub_genre.sub['Club / Club Dance'] = id id = id + 1
    sub_genre.sub['Breakcore'] = id id = id + 1
    sub_genre.sub['Breakbeat / Breakstep'] = id id = id + 1
    sub_genre.sub['Brostep'] = id id = id + 1
    sub_genre.sub['Chillstep'] = id id = id + 1
    sub_genre.sub['Deep House'] = id id = id + 1
    sub_genre.sub['Dubstep'] = id id = id + 1
    sub_genre.sub['Electro House'] = id id = id + 1
    sub_genre.sub['Electroswing'] = id id = id + 1
    sub_genre.sub['Exercise'] = id id = id + 1
    sub_genre.sub['Future Garage'] = id id = id + 1
    sub_genre.sub['Garage'] = id id = id + 1
    sub_genre.sub['Glitch Hop'] = id id = id + 1
    sub_genre.sub['Glitch Pop'] = id id = id + 1
    sub_genre.sub['Grime'] = id id = id + 1
    sub_genre.sub['Hardcore'] = id id = id + 1
    sub_genre.sub['Hard Dance'] = id id = id + 1
    sub_genre.sub['Hi-NRG / Eurodance'] = id id = id + 1
    sub_genre.sub['Horrorcore'] = id id = id + 1
    sub_genre.sub['House'] = id id = id + 1
    sub_genre.sub['Jackin House'] = id id = id + 1
    sub_genre.sub['Jungle / Drum&bass'] = id id = id + 1
    sub_genre.sub['Liquid Dub'] = id id = id + 1
    sub_genre.sub['Regstep'] = id id = id + 1
    sub_genre.sub['Speedcore'] = id id = id + 1
    sub_genre.sub['Techno'] = id id = id + 1
    sub_genre.sub['Trance'] = id id = id + 1
    sub_genre.sub['Trap'] = id id = id + 1
    genre[#genre + 1] = sub_genre
    amount = amount + #sub_genre.sub

    sub_genre = {}
    sub_genre.name = 'Easy Listening'
    sub_genre.sub = {}
    sub_genre.sub['Bop'] = id id = id + 1
    sub_genre.sub['Lounge'] = id id = id + 1
    sub_genre.sub['Swing'] = id id = id + 1
    genre[#genre + 1] = sub_genre
    amount = amount + #sub_genre.sub

    sub_genre = {}
    sub_genre.name = 'Electronic'
    sub_genre.sub = {}
    sub_genre.sub['2-Step'] = id id = id + 1
    sub_genre.sub['8-bit, Bitpop and Chiptune'] = id id = id + 1
    sub_genre.sub['Ambient'] = id id = id + 1
    sub_genre.sub['Bassline'] = id id = id + 1
    sub_genre.sub['Chillwave'] = id id = id + 1
    sub_genre.sub['Chiptune'] = id id = id + 1
    sub_genre.sub['Crunk'] = id id = id + 1
    sub_genre.sub['Downtempo'] = id id = id + 1
    sub_genre.sub['Drum & Bass'] = id id = id + 1
    sub_genre.sub['Electro'] = id id = id + 1
    sub_genre.sub['Electro-swing'] = id id = id + 1
    sub_genre.sub['Electronica'] = id id = id + 1
    sub_genre.sub['Electronic Rock'] = id id = id + 1
    sub_genre.sub['Hardstyle'] = id id = id + 1
    sub_genre.sub['IDM/Experimental'] = id id = id + 1
    sub_genre.sub['Industrial'] = id id = id + 1
    sub_genre.sub['Trip Hop'] = id id = id + 1
    genre[#genre + 1] = sub_genre
    amount = amount + #sub_genre.sub

    sub_genre = {}
    sub_genre.name = 'Enka'
    genre[#genre + 1] = sub_genre

    sub_genre = {}
    sub_genre.name = 'French Pop'
    genre[#genre + 1] = sub_genre

    sub_genre = {}
    sub_genre.name = 'German Folk'
    genre[#genre + 1] = sub_genre

    sub_genre = {}
    sub_genre.name = 'German Pop'
    genre[#genre + 1] = sub_genre

    sub_genre = {}
    sub_genre.name = 'Workout'
    genre[#genre + 1] = sub_genre

    sub_genre = {}
    sub_genre.name = 'Hip-Hop/Rap'
    sub_genre.sub = {}
    sub_genre.sub['Alternative Rap'] = id id = id + 1
    sub_genre.sub['Bounce'] = id id = id + 1
    sub_genre.sub['Dirty South'] = id id = id + 1
    sub_genre.sub['East Coast Rap'] = id id = id + 1
    sub_genre.sub['Gangsta Rap'] = id id = id + 1
    sub_genre.sub['Hardcore Rap'] = id id = id + 1
    sub_genre.sub['Hip-Hop'] = id id = id + 1
    sub_genre.sub['Latin Rap'] = id id = id + 1
    sub_genre.sub['Old School Rap'] = id id = id + 1
    sub_genre.sub['Rap'] = id id = id + 1
    sub_genre.sub['Turntablism'] = id id = id + 1
    sub_genre.sub['Underground Rap'] = id id = id + 1
    sub_genre.sub['West Coast Rap'] = id id = id + 1
    genre[#genre + 1] = sub_genre
    amount = amount + #sub_genre.sub

    sub_genre = {}
    sub_genre.name = 'Holiday'
    sub_genre.sub = {}
    sub_genre.sub['Chanukah'] = id id = id + 1
    sub_genre.sub['Christmas'] = id id = id + 1
    sub_genre.sub['Christmas: Children'] = id id = id + 1
    sub_genre.sub['Christmas: Classic'] = id id = id + 1
    sub_genre.sub['Christmas: Classical'] = id id = id + 1
    sub_genre.sub['Christmas: Comedy'] = id id = id + 1
    sub_genre.sub['Christmas: Jazz'] = id id = id + 1
    sub_genre.sub['Christmas: Modern'] = id id = id + 1
    sub_genre.sub['Christmas: Pop'] = id id = id + 1
    sub_genre.sub['Christmas: R&amp;B'] = id id = id + 1
    sub_genre.sub['Christmas: Religious'] = id id = id + 1
    sub_genre.sub['Christmas: Rock'] = id id = id + 1
    sub_genre.sub['Easter'] = id id = id + 1
    sub_genre.sub['Halloween'] = id id = id + 1
    sub_genre.sub['Holiday: Other'] = id id = id + 1
    sub_genre.sub['Thanksgiving'] = id id = id + 1
    genre[#genre + 1] = sub_genre
    amount = amount + #sub_genre.sub

    sub_genre = {}
    sub_genre.name = 'Indie Pop'
    genre[#genre + 1] = sub_genre

    sub_genre = {}
    sub_genre.name = 'Industrial'

    genre[#genre + 1] = sub_genre

    sub_genre = {}
    sub_genre.name = 'Gospel'
    sub_genre.sub = {}
    sub_genre.sub['CCM'] = id id = id + 1
    sub_genre.sub['Christian Metal'] = id id = id + 1
    sub_genre.sub['Christian Pop'] = id id = id + 1
    sub_genre.sub['Christian Rap'] = id id = id + 1
    sub_genre.sub['Christian Rock'] = id id = id + 1
    sub_genre.sub['Classic Christian'] = id id = id + 1
    sub_genre.sub['Contemporary Gospel'] = id id = id + 1
    sub_genre.sub['Gospel'] = id id = id + 1
    sub_genre.sub['Christian &amp; Gospel'] = id id = id + 1
    sub_genre.sub['Praise &amp; Worship'] = id id = id + 1
    sub_genre.sub['Qawwali'] = id id = id + 1
    sub_genre.sub['Southern Gospel'] = id id = id + 1
    sub_genre.sub['Traditional Gospel'] = id id = id + 1
    genre[#genre + 1] = sub_genre
    amount = amount + #sub_genre.sub

    sub_genre = {}
    sub_genre.name = 'Instrumental'
    sub_genre.sub = {}
    sub_genre.sub['March'] = id id = id + 1
    genre[#genre + 1] = sub_genre
    amount = amount + #sub_genre.sub

    sub_genre = {}
    sub_genre.name = 'J-Pop'
    sub_genre.sub = {}
    sub_genre.sub['J-Rock'] =id id = id + 1
    sub_genre.sub['J-Synth'] =id id = id + 1
    sub_genre.sub['J-Ska'] =id id = id + 1
    sub_genre.sub['J-Punk'] =id id = id + 1
    genre[#genre + 1] = sub_genre
    amount = amount + #sub_genre.sub

    sub_genre = {}
    sub_genre.name = 'Jazz'
    sub_genre.sub = {}
    sub_genre.sub['Acid Jazz'] = id id = id + 1
    sub_genre.sub['Avant-Garde Jazz'] = id id = id + 1
    sub_genre.sub['Bebop'] = id id = id + 1
    sub_genre.sub['Big Band'] = id id = id + 1
    sub_genre.sub['Blue Note'] = id id = id + 1
    sub_genre.sub['Contemporary Jazz'] = id id = id + 1
    sub_genre.sub['Cool'] = id id = id + 1
    sub_genre.sub['Crossover Jazz'] = id id = id + 1
    sub_genre.sub['Dixieland'] = id id = id + 1
    sub_genre.sub['Ethio-jazz'] = id id = id + 1
    sub_genre.sub['Fusion'] = id id = id + 1
    sub_genre.sub['Gypsy Jazz'] = id id = id + 1
    sub_genre.sub['Hard Bop'] = id id = id + 1
    sub_genre.sub['Latin Jazz'] = id id = id + 1
    sub_genre.sub['Mainstream Jazz'] = id id = id + 1
    sub_genre.sub['Ragtime'] = id id = id + 1
    sub_genre.sub['Smooth Jazz'] = id id = id + 1
    sub_genre.sub['Trad Jazz'] = id id = id + 1
    genre[#genre + 1] = sub_genre
    amount = amount + #sub_genre.sub

    sub_genre = {}
    sub_genre.name = 'K-Pop'
    genre[#genre + 1] = sub_genre

    sub_genre = {}
    sub_genre.name = 'Karaoke'
    genre[#genre + 1] = sub_genre

    sub_genre = {}
    sub_genre.name = 'Kayokyoku'
    genre[#genre + 1] = sub_genre

    sub_genre = {}
    sub_genre.name = 'Latin'
    sub_genre.sub = {}
    sub_genre.sub['Alternativo / Rock Latino'] = id id = id + 1
    sub_genre.sub['Argentine tango'] = id id = id + 1
    sub_genre.sub['Baladas y Boleros'] = id id = id + 1
    sub_genre.sub['Bossa Nova'] = id id = id + 1
    sub_genre.sub['Brazilian'] = id id = id + 1
    sub_genre.sub['Contemporary Latin'] = id id = id + 1
    sub_genre.sub['Cumbia'] = id id = id + 1
    sub_genre.sub['Flamenco / Spanish Flamenco'] = id id = id + 1
    sub_genre.sub['Latin Jazz'] = id id = id + 1
    sub_genre.sub['Nuevo Flamenco'] = id id = id + 1
    sub_genre.sub['Pop Latino'] = id id = id + 1
    sub_genre.sub['Portuguese fado'] = id id = id + 1
    sub_genre.sub['Raíces'] = id id = id + 1
    sub_genre.sub['Reggaeton y Hip-Hop'] = id id = id + 1
    sub_genre.sub['Regional Mexicano'] = id id = id + 1
    sub_genre.sub['Salsa y Tropical'] = id id = id + 1
    genre[#genre + 1] = sub_genre
    amount = amount + #sub_genre.sub

    sub_genre = {}
    sub_genre.name = 'New Age'
    sub_genre.sub = {}
    sub_genre.sub['Environmental'] = id id = id + 1
    sub_genre.sub['Healing'] = id id = id + 1
    sub_genre.sub['Meditation'] = id id = id + 1
    sub_genre.sub['Nature'] = id id = id + 1
    sub_genre.sub['Relaxation'] = id id = id + 1
    sub_genre.sub['Travel'] = id id = id + 1
    genre[#genre + 1] = sub_genre
    amount = amount + #sub_genre.sub

    sub_genre = {}
    sub_genre.name = 'Opera'
    genre[#genre + 1] = sub_genre

    sub_genre = {}
    sub_genre.name = 'Pop'
    sub_genre.sub = {}
    sub_genre.sub['Adult Contemporary'] = id id = id + 1
    sub_genre.sub['Britpop'] = id id = id + 1
    sub_genre.sub['Bubblegum Pop'] = id id = id + 1
    sub_genre.sub['Chamber Pop'] = id id = id + 1
    sub_genre.sub['Dance Pop'] = id id = id + 1
    sub_genre.sub['Dream Pop'] = id id = id + 1
    sub_genre.sub['Electro Pop'] = id id = id + 1
    sub_genre.sub['Orchestral Pop'] = id id = id + 1
    sub_genre.sub['Pop/Rock'] = id id = id + 1
    sub_genre.sub['Pop Punk'] = id id = id + 1
    sub_genre.sub['Power Pop'] = id id = id + 1
    sub_genre.sub['Soft Rock'] = id id = id + 1
    sub_genre.sub['Synthpop'] = id id = id + 1
    sub_genre.sub['Teen Pop'] = id id = id + 1
    genre[#genre + 1] = sub_genre
    amount = amount + #sub_genre.sub

    sub_genre = {}
    sub_genre.name = 'R&B/Soul'
    sub_genre.sub = {}
    sub_genre.sub['Contemporary R&B'] = id id = id + 1
    sub_genre.sub['Disco'] = id id = id + 1
    sub_genre.sub['Doo Wop'] = id id = id + 1
    sub_genre.sub['Funk'] = id id = id + 1
    sub_genre.sub['Modern Soul'] = id id = id + 1
    sub_genre.sub['Motown'] = id id = id + 1
    sub_genre.sub['Neo-Soul'] = id id = id + 1
    sub_genre.sub['Northern Soul'] = id id = id + 1
    sub_genre.sub['Psychedelic Soul'] = id id = id + 1
    sub_genre.sub['Quiet Storm'] = id id = id + 1
    sub_genre.sub['Soul'] = id id = id + 1
    sub_genre.sub['Soul Blues'] = id id = id + 1
    sub_genre.sub['Southern Soul'] = id id = id + 1
    genre[#genre + 1] = sub_genre
    amount = amount + #sub_genre.sub

    sub_genre = {}
    sub_genre.name = 'Reggae'
    sub_genre.sub = {}
    sub_genre.sub['2-Tone'] = id id = id + 1
    sub_genre.sub['Dancehall'] = id id = id + 1
    sub_genre.sub['Dub'] = id id = id + 1
    sub_genre.sub['Roots Reggae'] = id id = id + 1
    sub_genre.sub['Ska'] = id id = id + 1
    genre[#genre + 1] = sub_genre
    amount = amount + #sub_genre.sub

    sub_genre = {}
    sub_genre.name = 'Rock'
    sub_genre.sub = {}
    sub_genre.sub['Acid Rock'] = id id = id + 1
    sub_genre.sub['Adult-Oriented Rock'] = id id = id + 1
    sub_genre.sub['Afro Punk'] = id id = id + 1
    sub_genre.sub['Adult Alternative'] = id id = id + 1
    sub_genre.sub['Alternative Rock'] = id id = id + 1
    sub_genre.sub['American Trad Rock'] =id id = id + 1
    sub_genre.sub['Anatolian Rock'] = id id = id + 1
    sub_genre.sub['Arena Rock'] = id id = id + 1
    sub_genre.sub['Art Rock'] = id id = id + 1
    sub_genre.sub['Blues-Rock'] = id id = id + 1
    sub_genre.sub['British Invasion'] = id id = id + 1
    sub_genre.sub['Cock Rock'] = id id = id + 1
    sub_genre.sub['Death Metal / Black Metal'] = id id = id + 1
    sub_genre.sub['Doom Metal'] = id id = id + 1
    sub_genre.sub['Glam Rock'] = id id = id + 1
    sub_genre.sub['Gothic Metal'] = id id = id + 1
    sub_genre.sub['Grind Core'] = id id = id + 1
    sub_genre.sub['Hair Metal'] = id id = id + 1
    sub_genre.sub['Hard Rock'] = id id = id + 1
    sub_genre.sub['Math Metal'] = id id = id + 1
    sub_genre.sub['Math Rock'] = id id = id + 1
    sub_genre.sub['Metal'] = id id = id + 1
    sub_genre.sub['Metal Core'] = id id = id + 1
    sub_genre.sub['Noise Rock'] = id id = id + 1
    sub_genre.sub['Jam Bands'] = id id = id + 1
    sub_genre.sub['Post Punk'] = id id = id + 1
    sub_genre.sub['Prog-Rock/Art Rock'] =id id = id + 1
    sub_genre.sub['Progressive Metal'] = id id = id + 1
    sub_genre.sub['Psychedelic'] = id id = id + 1
    sub_genre.sub['Rock&Roll'] = id id = id + 1
    sub_genre.sub['Rockabilly'] = id id = id + 1
    sub_genre.sub['Roots Rock'] = id id = id + 1
    sub_genre.sub['Singer/Songwriter'] = id id = id + 1
    sub_genre.sub['Southern Rock'] = id id = id + 1
    sub_genre.sub['Spazzcore'] = id id = id + 1
    sub_genre.sub['Stoner Metal'] = id id = id + 1
    sub_genre.sub['Surf'] = id id = id + 1
    sub_genre.sub['Technical Death Metal'] = id id = id + 1
    sub_genre.sub['Tex-Mex'] = id id = id + 1
    sub_genre.sub['Time Lord Rock (Trock)'] = id id = id + 1
    sub_genre.sub['Trash Metal'] = id id = id + 1
    genre[#genre + 1] = sub_genre
    amount = amount + #sub_genre.sub

    sub_genre = {}
    sub_genre.name = 'Singer/Songwriter'
    sub_genre.sub = {}
    sub_genre.sub['Alternative Folk'] = id id = id + 1
    sub_genre.sub['Contemporary Folk'] = id id = id + 1
    sub_genre.sub['Contemporary Singer/Songwriter'] = id id = id + 1
    sub_genre.sub['Indie Folk'] = id id = id + 1
    sub_genre.sub['Folk-Rock'] = id id = id + 1
    sub_genre.sub['Love Song'] = id id = id + 1
    sub_genre.sub['New Acoustic'] = id id = id + 1
    sub_genre.sub['Traditional Folk'] = id id = id + 1
    genre[#genre + 1] = sub_genre
    amount = amount + #sub_genre.sub

    sub_genre = {}
    sub_genre.name = 'Soundtrack'
    sub_genre.sub = {}
    sub_genre.sub['Foreign Cinema'] = id id = id + 1
    sub_genre.sub['Movie Soundtrack'] = id id = id + 1
    sub_genre.sub['Musicals'] = id id = id + 1
    sub_genre.sub['Original Score'] = id id = id + 1
    sub_genre.sub['Soundtrack'] = id id = id + 1
    sub_genre.sub['TV Soundtrack'] = id id = id + 1
    genre[#genre + 1] = sub_genre
    amount = amount + #sub_genre.sub

    sub_genre = {}
    sub_genre.name = 'Spoken Word'
    genre[#genre + 1] = sub_genre

    sub_genre = {}
    sub_genre.name = 'Tex-Mex / Tejano'
    sub_genre.sub = {}
    sub_genre.sub['Chicano'] = id id = id + 1
    sub_genre.sub['Classic'] = id id = id + 1
    sub_genre.sub['Conjunto'] = id id = id + 1
    sub_genre.sub['Conjunto Progressive'] = id id = id + 1
    sub_genre.sub['New Mex'] = id id = id + 1
    sub_genre.sub['Tex-Mex'] = id id = id + 1
    genre[#genre + 1] = sub_genre
    amount = amount + #sub_genre.sub

    sub_genre = {}
    sub_genre.name = 'Vocal'
    sub_genre.sub = {}
    sub_genre.sub['A cappella'] = id id = id + 1
    sub_genre.sub['Barbershop'] = id id = id + 1
    sub_genre.sub['Doo-wop'] = id id = id + 1
    sub_genre.sub['Gregorian Chant'] = id id = id + 1
    sub_genre.sub['Standards'] = id id = id + 1
    sub_genre.sub['Traditional Pop'] = id id = id + 1
    sub_genre.sub['Vocal Jazz'] = id id = id + 1
    sub_genre.sub['Vocal Pop'] = id id = id + 1
    genre[#genre + 1] = sub_genre
    amount = amount + #sub_genre.sub

    sub_genre = {}
    sub_genre.name = 'World'
    sub_genre.sub = {}
    sub_genre.sub['Africa'] = id id = id + 1
    sub_genre.sub['Afro-Beat'] = id id = id + 1
    sub_genre.sub['Afro-Pop'] = id id = id + 1
    sub_genre.sub['Asia'] = id id = id + 1
    sub_genre.sub['Australia'] = id id = id + 1
    sub_genre.sub['Cajun'] = id id = id + 1
    sub_genre.sub['Calypso'] = id id = id + 1
    sub_genre.sub['Caribbean'] = id id = id + 1
    sub_genre.sub['Carnatic'] = id id = id + 1
    sub_genre.sub['Celtic'] = id id = id + 1
    sub_genre.sub['Celtic Folk'] = id id = id + 1
    sub_genre.sub['Contemporary Celtic'] = id id = id + 1
    sub_genre.sub['Coupé-décalé'] = id id = id + 1
    sub_genre.sub['Dangdut'] = id id = id + 1
    sub_genre.sub['Drinking Songs'] = id id = id + 1
    sub_genre.sub['Drone'] = id id = id + 1
    sub_genre.sub['Europe'] = id id = id + 1
    sub_genre.sub['France'] = id id = id + 1
    sub_genre.sub['Hawaii'] = id id = id + 1
    sub_genre.sub['Hindustani'] = id id = id + 1
    sub_genre.sub['Indian Ghazal'] = id id = id + 1
    sub_genre.sub['Indian Pop'] = id id = id + 1
    sub_genre.sub['Japan'] = id id = id + 1
    sub_genre.sub['Japanese Pop'] = id id = id + 1
    sub_genre.sub['Klezmer'] = id id = id + 1
    sub_genre.sub['Mbalax'] = id id = id + 1
    sub_genre.sub['Middle East'] = id id = id + 1
    sub_genre.sub['North America'] = id id = id + 1
    sub_genre.sub['Ode'] = id id = id + 1
    sub_genre.sub['Piphat'] = id id = id + 1
    sub_genre.sub['Polka'] = id id = id + 1
    sub_genre.sub['Soca'] = id id = id + 1
    sub_genre.sub['South Africa'] = id id = id + 1
    sub_genre.sub['South America'] = id id = id + 1
    sub_genre.sub['Traditional Celtic'] = id id = id + 1
    sub_genre.sub['Worldbeat'] = id id = id + 1
    sub_genre.sub['Zydeco'] = id id = id + 1
    genre[#genre + 1] = sub_genre
    amount = amount + #sub_genre.sub

    amount = amount + #genre
    return genre, amount
end
genres.get_genres = get_genres

local function is_root_genre(genre_tree, genre)
    local i

    i = 1
    while genre_tree[i] do
        if genre_tree[i].name == genre then
            return genre_tree[i]
        end
        i = i + 1
    end
    return nil
end
genres.is_root_genre = is_root_genre

local function get_root_genre_from_sub(genre_tree, genre)
    local i

    i = 1
    while genre_tree[i] do
        if genre_tree[i].sub and genre_tree[i].sub[genre] then
            return genre_tree[i]
        end
        i = i + 1
    end
    return nil
end
genres.get_root_genre_from_sub = get_root_genre_from_sub

local function is_genres_same_brach(genre_tree, genre_ref, genre_comp)
    local i

    i = 1
    while genre_tree[i] do
        if genre_tree[i].sub and genre_tree[i].sub[genre_ref] then
            return genre_tree[i].sub[genre_comp] ~= nil
        end
        i = i + 1
    end
    return nil
end

local function get_score_genre(genre_tree, artist, label)
    local artist_root
    local label_root

    if artist == label then
        return constant.GENRE_EXACT_GAIN
    end
    if artist_root and label_root then
        return constant.GENRE_DISTANT_GAIN
    elseif (artist_root and artist_root.sub and artist_root.sub[label]) or (label_root and label_root.sub and label_root.sub[artist]) then
        return constant.GENRE_SUB_GAIN
    elseif is_genres_same_brach(genre_tree, label, artist) then
        return constant.GENRE_CLOSE_GAIN
    end
    return constant.GENRE_DISTANT_GAIN
end
genres.get_score_genre = get_score_genre

return genres