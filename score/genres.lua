--
-- User: Glastis
-- Mail: glastis@glastis.com
-- Date: 13/05/18
-- Time: 17:31
--

local genres = {}

local function get_genres()
    local sub_genre
    local genre

    genre = {}

    sub_genre = {}
    sub_genre.name = 'Alternative'
    sub_genre.sub = {}
    sub_genre.sub[#sub_genre.sub + 1] = 'Art Punk'
    sub_genre.sub[#sub_genre.sub + 1] = 'Alternative Rock'
    sub_genre.sub[#sub_genre.sub + 1] = 'College Rock'
    sub_genre.sub[#sub_genre.sub + 1] = 'Crossover Thrash'
    sub_genre.sub[#sub_genre.sub + 1] = 'Crust Punk'
    sub_genre.sub[#sub_genre.sub + 1] = 'Experimental Rock'
    sub_genre.sub[#sub_genre.sub + 1] = 'Folk Punk'
    sub_genre.sub[#sub_genre.sub + 1] = 'Goth / Gothic Rock'
    sub_genre.sub[#sub_genre.sub + 1] = 'Grunge'
    sub_genre.sub[#sub_genre.sub + 1] = 'Hardcore Punk'
    sub_genre.sub[#sub_genre.sub + 1] = 'Hard Rock'
    sub_genre.sub[#sub_genre.sub + 1] = 'Indie Rock'
    sub_genre.sub[#sub_genre.sub + 1] = 'Lo-fi'
    sub_genre.sub[#sub_genre.sub + 1] = 'New Wave'
    sub_genre.sub[#sub_genre.sub + 1] = 'Progressive Rock'
    sub_genre.sub[#sub_genre.sub + 1] = 'Punk'
    sub_genre.sub[#sub_genre.sub + 1] = 'Shoegaze'
    sub_genre.sub[#sub_genre.sub + 1] = 'Steampunk'
    genre[#genre + 1] = sub_genre

    sub_genre = {}
    sub_genre.name = 'Anime'
    genre[#genre + 1] = sub_genre

    sub_genre = {}
    sub_genre.name = 'Blues'
    sub_genre.sub[#sub_genre.sub + 1] = 'Acoustic Blues'
    sub_genre.sub[#sub_genre.sub + 1] = 'Chicago Blues'
    sub_genre.sub[#sub_genre.sub + 1] = 'Classic Blues'
    sub_genre.sub[#sub_genre.sub + 1] = 'Contemporary Blues'
    sub_genre.sub[#sub_genre.sub + 1] = 'Country Blues'
    sub_genre.sub[#sub_genre.sub + 1] = 'Delta Blues'
    sub_genre.sub[#sub_genre.sub + 1] = 'Electric Blues'
    sub_genre.sub[#sub_genre.sub + 1] = 'Ragtime Blues'
    genre[#genre + 1] = sub_genre

    sub_genre = {}
    sub_genre.name = 'Children\'s Music'
    sub_genre.sub[#sub_genre.sub + 1] = 'Lullabies'
    sub_genre.sub[#sub_genre.sub + 1] = 'Sing-Along'
    sub_genre.sub[#sub_genre.sub + 1] = 'Stories'
    genre[#genre + 1] = sub_genre

    sub_genre = {}
    sub_genre.name = 'Classical'
    sub_genre.sub[#sub_genre.sub + 1] = 'Avant-Garde'
    sub_genre.sub[#sub_genre.sub + 1] = 'Baroque'
    sub_genre.sub[#sub_genre.sub + 1] = 'Chamber Music'
    sub_genre.sub[#sub_genre.sub + 1] = 'Chant'
    sub_genre.sub[#sub_genre.sub + 1] = 'Choral'
    sub_genre.sub[#sub_genre.sub + 1] = 'Classical Crossover'
    sub_genre.sub[#sub_genre.sub + 1] = 'Contemporary Classical'
    sub_genre.sub[#sub_genre.sub + 1] = 'Early Music'
    sub_genre.sub[#sub_genre.sub + 1] = 'Expressionist'
    sub_genre.sub[#sub_genre.sub + 1] = 'High Classical'
    sub_genre.sub[#sub_genre.sub + 1] = 'Impressionist'
    sub_genre.sub[#sub_genre.sub + 1] = 'Medieval'
    sub_genre.sub[#sub_genre.sub + 1] = 'Minimalism'
    sub_genre.sub[#sub_genre.sub + 1] = 'Modern Composition'
    sub_genre.sub[#sub_genre.sub + 1] = 'Opera'
    sub_genre.sub[#sub_genre.sub + 1] = 'Orchestral'
    sub_genre.sub[#sub_genre.sub + 1] = 'Renaissance'
    sub_genre.sub[#sub_genre.sub + 1] = 'Romantic (early period)'
    sub_genre.sub[#sub_genre.sub + 1] = 'Romantic (later period)'
    sub_genre.sub[#sub_genre.sub + 1] = 'Wedding Music'
    genre[#genre + 1] = sub_genre

    sub_genre = {}
    sub_genre.name = 'Comedy'
    sub_genre.sub[#sub_genre.sub + 1] = 'Novelty'
    sub_genre.sub[#sub_genre.sub + 1] = 'Standup Comedy'
    sub_genre.sub[#sub_genre.sub + 1] = 'Vaudeville'
    genre[#genre + 1] = sub_genre

    sub_genre = {}
    sub_genre.name = 'Commercial'
    sub_genre.sub[#sub_genre.sub + 1] = 'Jingles'
    sub_genre.sub[#sub_genre.sub + 1] = 'TV Themes'
    genre[#genre + 1] = sub_genre

    sub_genre = {}
    sub_genre.name = 'Country'
    sub_genre.sub[#sub_genre.sub + 1] = 'Alternative Country'
    sub_genre.sub[#sub_genre.sub + 1] = 'Americana'
    sub_genre.sub[#sub_genre.sub + 1] = 'Bluegrass'
    sub_genre.sub[#sub_genre.sub + 1] = 'Contemporary Bluegrass'
    sub_genre.sub[#sub_genre.sub + 1] = 'Contemporary Country'
    sub_genre.sub[#sub_genre.sub + 1] = 'Country Gospel'
    sub_genre.sub[#sub_genre.sub + 1] = 'Country Pop'
    sub_genre.sub[#sub_genre.sub + 1] = 'Honky Tonk'
    sub_genre.sub[#sub_genre.sub + 1] = 'Outlaw Country'
    sub_genre.sub[#sub_genre.sub + 1] = 'Traditional Bluegrass'
    sub_genre.sub[#sub_genre.sub + 1] = 'Traditional Country'
    sub_genre.sub[#sub_genre.sub + 1] = 'Urban Cowboy'
    genre[#genre + 1] = sub_genre

    sub_genre = {}
    sub_genre.name = 'Dance'
    sub_genre.sub[#sub_genre.sub + 1] = 'Club / Club Dance'
    sub_genre.sub[#sub_genre.sub + 1] = 'Breakcore'
    sub_genre.sub[#sub_genre.sub + 1] = 'Breakbeat / Breakstep'
    sub_genre.sub[#sub_genre.sub + 1] = 'Brostep'
    sub_genre.sub[#sub_genre.sub + 1] = 'Chillstep'
    sub_genre.sub[#sub_genre.sub + 1] = 'Deep House'
    sub_genre.sub[#sub_genre.sub + 1] = 'Dubstep'
    sub_genre.sub[#sub_genre.sub + 1] = 'Electro House'
    sub_genre.sub[#sub_genre.sub + 1] = 'Electroswing'
    sub_genre.sub[#sub_genre.sub + 1] = 'Exercise'
    sub_genre.sub[#sub_genre.sub + 1] = 'Future Garage'
    sub_genre.sub[#sub_genre.sub + 1] = 'Garage'
    sub_genre.sub[#sub_genre.sub + 1] = 'Glitch Hop'
    sub_genre.sub[#sub_genre.sub + 1] = 'Glitch Pop'
    sub_genre.sub[#sub_genre.sub + 1] = 'Grime'
    sub_genre.sub[#sub_genre.sub + 1] = 'Hardcore'
    sub_genre.sub[#sub_genre.sub + 1] = 'Hard Dance'
    sub_genre.sub[#sub_genre.sub + 1] = 'Hi-NRG / Eurodance'
    sub_genre.sub[#sub_genre.sub + 1] = 'Horrorcore'
    sub_genre.sub[#sub_genre.sub + 1] = 'House'
    sub_genre.sub[#sub_genre.sub + 1] = 'Jackin House'
    sub_genre.sub[#sub_genre.sub + 1] = 'Jungle / Drum&bass'
    sub_genre.sub[#sub_genre.sub + 1] = 'Liquid Dub'
    sub_genre.sub[#sub_genre.sub + 1] = 'Regstep'
    sub_genre.sub[#sub_genre.sub + 1] = 'Speedcore'
    sub_genre.sub[#sub_genre.sub + 1] = 'Techno'
    sub_genre.sub[#sub_genre.sub + 1] = 'Trance'
    sub_genre.sub[#sub_genre.sub + 1] = 'Trap'
    genre[#genre + 1] = sub_genre

    sub_genre = {}
    sub_genre.name = 'Easy Listening'
    sub_genre.sub[#sub_genre.sub + 1] = 'Bop'
    sub_genre.sub[#sub_genre.sub + 1] = 'Lounge'
    sub_genre.sub[#sub_genre.sub + 1] = 'Swing'
    genre[#genre + 1] = sub_genre

    sub_genre = {}
    sub_genre.name = 'Electronic'
    sub_genre.sub[#sub_genre.sub + 1] = '2-Step'
    sub_genre.sub[#sub_genre.sub + 1] = '8-bit, Bitpop and Chiptune'
    sub_genre.sub[#sub_genre.sub + 1] = 'Ambient'
    sub_genre.sub[#sub_genre.sub + 1] = 'Bassline'
    sub_genre.sub[#sub_genre.sub + 1] = 'Chillwave'
    sub_genre.sub[#sub_genre.sub + 1] = 'Chiptune'
    sub_genre.sub[#sub_genre.sub + 1] = 'Crunk'
    sub_genre.sub[#sub_genre.sub + 1] = 'Downtempo'
    sub_genre.sub[#sub_genre.sub + 1] = 'Drum & Bass'
    sub_genre.sub[#sub_genre.sub + 1] = 'Electro'
    sub_genre.sub[#sub_genre.sub + 1] = 'Electro-swing'
    sub_genre.sub[#sub_genre.sub + 1] = 'Electronica'
    sub_genre.sub[#sub_genre.sub + 1] = 'Electronic Rock'
    sub_genre.sub[#sub_genre.sub + 1] = 'Hardstyle'
    sub_genre.sub[#sub_genre.sub + 1] = 'IDM/Experimental'
    sub_genre.sub[#sub_genre.sub + 1] = 'Industrial'
    sub_genre.sub[#sub_genre.sub + 1] = 'Trip Hop'
    genre[#genre + 1] = sub_genre

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
    sub_genre.sub[#sub_genre.sub + 1] = 'Alternative Rap'
    sub_genre.sub[#sub_genre.sub + 1] = 'Bounce'
    sub_genre.sub[#sub_genre.sub + 1] = 'Dirty South'
    sub_genre.sub[#sub_genre.sub + 1] = 'East Coast Rap'
    sub_genre.sub[#sub_genre.sub + 1] = 'Gangsta Rap'
    sub_genre.sub[#sub_genre.sub + 1] = 'Hardcore Rap'
    sub_genre.sub[#sub_genre.sub + 1] = 'Hip-Hop'
    sub_genre.sub[#sub_genre.sub + 1] = 'Latin Rap'
    sub_genre.sub[#sub_genre.sub + 1] = 'Old School Rap'
    sub_genre.sub[#sub_genre.sub + 1] = 'Rap'
    sub_genre.sub[#sub_genre.sub + 1] = 'Turntablism'
    sub_genre.sub[#sub_genre.sub + 1] = 'Underground Rap'
    sub_genre.sub[#sub_genre.sub + 1] = 'West Coast Rap'
    genre[#genre + 1] = sub_genre

    sub_genre = {}
    sub_genre.name = 'Holiday'
    sub_genre.sub[#sub_genre.sub + 1] = 'Chanukah'
    sub_genre.sub[#sub_genre.sub + 1] = 'Christmas'
    sub_genre.sub[#sub_genre.sub + 1] = 'Christmas: Children'
    sub_genre.sub[#sub_genre.sub + 1] = 'Christmas: Classic'
    sub_genre.sub[#sub_genre.sub + 1] = 'Christmas: Classical'
    sub_genre.sub[#sub_genre.sub + 1] = 'Christmas: Comedy'
    sub_genre.sub[#sub_genre.sub + 1] = 'Christmas: Jazz'
    sub_genre.sub[#sub_genre.sub + 1] = 'Christmas: Modern'
    sub_genre.sub[#sub_genre.sub + 1] = 'Christmas: Pop'
    sub_genre.sub[#sub_genre.sub + 1] = 'Christmas: R&amp;B'
    sub_genre.sub[#sub_genre.sub + 1] = 'Christmas: Religious'
    sub_genre.sub[#sub_genre.sub + 1] = 'Christmas: Rock'
    sub_genre.sub[#sub_genre.sub + 1] = 'Easter'
    sub_genre.sub[#sub_genre.sub + 1] = 'Halloween'
    sub_genre.sub[#sub_genre.sub + 1] = 'Holiday: Other'
    sub_genre.sub[#sub_genre.sub + 1] = 'Thanksgiving'
    genre[#genre + 1] = sub_genre

    sub_genre = {}
    sub_genre.name = 'Indie Pop'
    genre[#genre + 1] = sub_genre

    sub_genre = {}
    sub_genre.name = 'Industrial'

    genre[#genre + 1] = sub_genre

    sub_genre = {}
    sub_genre.name = 'Gospel'
    sub_genre.sub[#sub_genre.sub + 1] = 'CCM'
    sub_genre.sub[#sub_genre.sub + 1] = 'Christian Metal'
    sub_genre.sub[#sub_genre.sub + 1] = 'Christian Pop'
    sub_genre.sub[#sub_genre.sub + 1] = 'Christian Rap'
    sub_genre.sub[#sub_genre.sub + 1] = 'Christian Rock'
    sub_genre.sub[#sub_genre.sub + 1] = 'Classic Christian'
    sub_genre.sub[#sub_genre.sub + 1] = 'Contemporary Gospel'
    sub_genre.sub[#sub_genre.sub + 1] = 'Gospel'
    sub_genre.sub[#sub_genre.sub + 1] = 'Christian &amp; Gospel'
    sub_genre.sub[#sub_genre.sub + 1] = 'Praise &amp; Worship'
    sub_genre.sub[#sub_genre.sub + 1] = 'Qawwali'
    sub_genre.sub[#sub_genre.sub + 1] = 'Southern Gospel'
    sub_genre.sub[#sub_genre.sub + 1] = 'Traditional Gospel'
    genre[#genre + 1] = sub_genre

    sub_genre = {}
    sub_genre.name = 'Instrumental'
    sub_genre.sub[#sub_genre.sub + 1] = 'March'
    genre[#genre + 1] = sub_genre

    sub_genre = {}
    sub_genre.name = 'J-Pop'
    sub_genre.sub[#sub_genre.sub + 1] = 'J-Rock'
    sub_genre.sub[#sub_genre.sub + 1] = 'J-Synth'
    sub_genre.sub[#sub_genre.sub + 1] = 'J-Ska'
    sub_genre.sub[#sub_genre.sub + 1] = 'J-Punk'
    genre[#genre + 1] = sub_genre

    sub_genre = {}
    sub_genre.name = 'Jazz'
    sub_genre.sub[#sub_genre.sub + 1] = 'Acid Jazz'
    sub_genre.sub[#sub_genre.sub + 1] = 'Avant-Garde Jazz'
    sub_genre.sub[#sub_genre.sub + 1] = 'Bebop'
    sub_genre.sub[#sub_genre.sub + 1] = 'Big Band'
    sub_genre.sub[#sub_genre.sub + 1] = 'Blue Note'
    sub_genre.sub[#sub_genre.sub + 1] = 'Contemporary Jazz'
    sub_genre.sub[#sub_genre.sub + 1] = 'Cool'
    sub_genre.sub[#sub_genre.sub + 1] = 'Crossover Jazz'
    sub_genre.sub[#sub_genre.sub + 1] = 'Dixieland'
    sub_genre.sub[#sub_genre.sub + 1] = 'Ethio-jazz'
    sub_genre.sub[#sub_genre.sub + 1] = 'Fusion'
    sub_genre.sub[#sub_genre.sub + 1] = 'Gypsy Jazz'
    sub_genre.sub[#sub_genre.sub + 1] = 'Hard Bop'
    sub_genre.sub[#sub_genre.sub + 1] = 'Latin Jazz'
    sub_genre.sub[#sub_genre.sub + 1] = 'Mainstream Jazz'
    sub_genre.sub[#sub_genre.sub + 1] = 'Ragtime'
    sub_genre.sub[#sub_genre.sub + 1] = 'Smooth Jazz'
    sub_genre.sub[#sub_genre.sub + 1] = 'Trad Jazz'
    genre[#genre + 1] = sub_genre

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
    sub_genre.sub[#sub_genre.sub + 1] = 'Alternativo / Rock Latino'
    sub_genre.sub[#sub_genre.sub + 1] = 'Argentine tango'
    sub_genre.sub[#sub_genre.sub + 1] = 'Baladas y Boleros'
    sub_genre.sub[#sub_genre.sub + 1] = 'Bossa Nova'
    sub_genre.sub[#sub_genre.sub + 1] = 'Brazilian'
    sub_genre.sub[#sub_genre.sub + 1] = 'Contemporary Latin'
    sub_genre.sub[#sub_genre.sub + 1] = 'Cumbia'
    sub_genre.sub[#sub_genre.sub + 1] = 'Flamenco / Spanish Flamenco'
    sub_genre.sub[#sub_genre.sub + 1] = 'Latin Jazz'
    sub_genre.sub[#sub_genre.sub + 1] = 'Nuevo Flamenco'
    sub_genre.sub[#sub_genre.sub + 1] = 'Pop Latino'
    sub_genre.sub[#sub_genre.sub + 1] = 'Portuguese fado'
    sub_genre.sub[#sub_genre.sub + 1] = 'Raíces'
    sub_genre.sub[#sub_genre.sub + 1] = 'Reggaeton y Hip-Hop'
    sub_genre.sub[#sub_genre.sub + 1] = 'Regional Mexicano'
    sub_genre.sub[#sub_genre.sub + 1] = 'Salsa y Tropical'
    genre[#genre + 1] = sub_genre

    sub_genre = {}
    sub_genre.name = 'New Age'
    sub_genre.sub[#sub_genre.sub + 1] = 'Environmental'
    sub_genre.sub[#sub_genre.sub + 1] = 'Healing'
    sub_genre.sub[#sub_genre.sub + 1] = 'Meditation'
    sub_genre.sub[#sub_genre.sub + 1] = 'Nature'
    sub_genre.sub[#sub_genre.sub + 1] = 'Relaxation'
    sub_genre.sub[#sub_genre.sub + 1] = 'Travel'
    genre[#genre + 1] = sub_genre

    sub_genre = {}
    sub_genre.name = 'Opera'

    genre[#genre + 1] = sub_genre

    sub_genre = {}
    sub_genre.name = 'Pop'
    sub_genre.sub[#sub_genre.sub + 1] = 'Adult Contemporary'
    sub_genre.sub[#sub_genre.sub + 1] = 'Britpop'
    sub_genre.sub[#sub_genre.sub + 1] = 'Bubblegum Pop'
    sub_genre.sub[#sub_genre.sub + 1] = 'Chamber Pop'
    sub_genre.sub[#sub_genre.sub + 1] = 'Dance Pop'
    sub_genre.sub[#sub_genre.sub + 1] = 'Dream Pop'
    sub_genre.sub[#sub_genre.sub + 1] = 'Electro Pop'
    sub_genre.sub[#sub_genre.sub + 1] = 'Orchestral Pop'
    sub_genre.sub[#sub_genre.sub + 1] = 'Pop/Rock'
    sub_genre.sub[#sub_genre.sub + 1] = 'Pop Punk'
    sub_genre.sub[#sub_genre.sub + 1] = 'Power Pop'
    sub_genre.sub[#sub_genre.sub + 1] = 'Soft Rock'
    sub_genre.sub[#sub_genre.sub + 1] = 'Synthpop'
    sub_genre.sub[#sub_genre.sub + 1] = 'Teen Pop'
    genre[#genre + 1] = sub_genre

    sub_genre = {}
    sub_genre.name = 'R&B/Soul'
    sub_genre.sub[#sub_genre.sub + 1] = 'Contemporary R&B'
    sub_genre.sub[#sub_genre.sub + 1] = 'Disco'
    sub_genre.sub[#sub_genre.sub + 1] = 'Doo Wop'
    sub_genre.sub[#sub_genre.sub + 1] = 'Funk'
    sub_genre.sub[#sub_genre.sub + 1] = 'Modern Soul'
    sub_genre.sub[#sub_genre.sub + 1] = 'Motown'
    sub_genre.sub[#sub_genre.sub + 1] = 'Neo-Soul'
    sub_genre.sub[#sub_genre.sub + 1] = 'Northern Soul'
    sub_genre.sub[#sub_genre.sub + 1] = 'Psychedelic Soul'
    sub_genre.sub[#sub_genre.sub + 1] = 'Quiet Storm'
    sub_genre.sub[#sub_genre.sub + 1] = 'Soul'
    sub_genre.sub[#sub_genre.sub + 1] = 'Soul Blues'
    sub_genre.sub[#sub_genre.sub + 1] = 'Southern Soul'
    genre[#genre + 1] = sub_genre

    sub_genre = {}
    sub_genre.name = 'Reggae'
    sub_genre.sub[#sub_genre.sub + 1] = '2-Tone'
    sub_genre.sub[#sub_genre.sub + 1] = 'Dancehall'
    sub_genre.sub[#sub_genre.sub + 1] = 'Dub'
    sub_genre.sub[#sub_genre.sub + 1] = 'Roots Reggae'
    sub_genre.sub[#sub_genre.sub + 1] = 'Ska'
    genre[#genre + 1] = sub_genre

    sub_genre = {}
    sub_genre.name = 'Rock'
    sub_genre.sub[#sub_genre.sub + 1] = 'Acid Rock'
    sub_genre.sub[#sub_genre.sub + 1] = 'Adult-Oriented Rock'
    sub_genre.sub[#sub_genre.sub + 1] = 'Afro Punk'
    sub_genre.sub[#sub_genre.sub + 1] = 'Adult Alternative'
    sub_genre.sub[#sub_genre.sub + 1] = 'Alternative Rock'
    sub_genre.sub[#sub_genre.sub + 1] = 'American Trad Rock'
    sub_genre.sub[#sub_genre.sub + 1] = 'Anatolian Rock'
    sub_genre.sub[#sub_genre.sub + 1] = 'Arena Rock'
    sub_genre.sub[#sub_genre.sub + 1] = 'Art Rock'
    sub_genre.sub[#sub_genre.sub + 1] = 'Blues-Rock'
    sub_genre.sub[#sub_genre.sub + 1] = 'British Invasion'
    sub_genre.sub[#sub_genre.sub + 1] = 'Cock Rock'
    sub_genre.sub[#sub_genre.sub + 1] = 'Death Metal / Black Metal'
    sub_genre.sub[#sub_genre.sub + 1] = 'Doom Metal'
    sub_genre.sub[#sub_genre.sub + 1] = 'Glam Rock'
    sub_genre.sub[#sub_genre.sub + 1] = 'Gothic Metal'
    sub_genre.sub[#sub_genre.sub + 1] = 'Grind Core'
    sub_genre.sub[#sub_genre.sub + 1] = 'Hair Metal'
    sub_genre.sub[#sub_genre.sub + 1] = 'Hard Rock'
    sub_genre.sub[#sub_genre.sub + 1] = 'Math Metal'
    sub_genre.sub[#sub_genre.sub + 1] = 'Math Rock'
    sub_genre.sub[#sub_genre.sub + 1] = 'Metal'
    sub_genre.sub[#sub_genre.sub + 1] = 'Metal Core'
    sub_genre.sub[#sub_genre.sub + 1] = 'Noise Rock'
    sub_genre.sub[#sub_genre.sub + 1] = 'Jam Bands'
    sub_genre.sub[#sub_genre.sub + 1] = 'Post Punk'
    sub_genre.sub[#sub_genre.sub + 1] = 'Prog-Rock/Art Rock'
    sub_genre.sub[#sub_genre.sub + 1] = 'Progressive Metal'
    sub_genre.sub[#sub_genre.sub + 1] = 'Psychedelic'
    sub_genre.sub[#sub_genre.sub + 1] = 'Rock&Roll'
    sub_genre.sub[#sub_genre.sub + 1] = 'Rockabilly'
    sub_genre.sub[#sub_genre.sub + 1] = 'Roots Rock'
    sub_genre.sub[#sub_genre.sub + 1] = 'Singer/Songwriter'
    sub_genre.sub[#sub_genre.sub + 1] = 'Southern Rock'
    sub_genre.sub[#sub_genre.sub + 1] = 'Spazzcore'
    sub_genre.sub[#sub_genre.sub + 1] = 'Stoner Metal'
    sub_genre.sub[#sub_genre.sub + 1] = 'Surf'
    sub_genre.sub[#sub_genre.sub + 1] = 'Technical Death Metal'
    sub_genre.sub[#sub_genre.sub + 1] = 'Tex-Mex'
    sub_genre.sub[#sub_genre.sub + 1] = 'Time Lord Rock (Trock)'
    sub_genre.sub[#sub_genre.sub + 1] = 'Trash Metal'
    genre[#genre + 1] = sub_genre

    sub_genre = {}
    sub_genre.name = 'Singer/Songwriter'
    sub_genre.sub[#sub_genre.sub + 1] = 'Alternative Folk'
    sub_genre.sub[#sub_genre.sub + 1] = 'Contemporary Folk'
    sub_genre.sub[#sub_genre.sub + 1] = 'Contemporary Singer/Songwriter'
    sub_genre.sub[#sub_genre.sub + 1] = 'Indie Folk'
    sub_genre.sub[#sub_genre.sub + 1] = 'Folk-Rock'
    sub_genre.sub[#sub_genre.sub + 1] = 'Love Song'
    sub_genre.sub[#sub_genre.sub + 1] = 'New Acoustic'
    sub_genre.sub[#sub_genre.sub + 1] = 'Traditional Folk'
    genre[#genre + 1] = sub_genre

    sub_genre = {}
    sub_genre.name = 'Soundtrack'
    sub_genre.sub[#sub_genre.sub + 1] = 'Foreign Cinema'
    sub_genre.sub[#sub_genre.sub + 1] = 'Movie Soundtrack'
    sub_genre.sub[#sub_genre.sub + 1] = 'Musicals'
    sub_genre.sub[#sub_genre.sub + 1] = 'Original Score'
    sub_genre.sub[#sub_genre.sub + 1] = 'Soundtrack'
    sub_genre.sub[#sub_genre.sub + 1] = 'TV Soundtrack'
    genre[#genre + 1] = sub_genre

    sub_genre = {}
    sub_genre.name = 'Spoken Word'
    genre[#genre + 1] = sub_genre

    sub_genre = {}
    sub_genre.name = 'Tex-Mex / Tejano'
    sub_genre.sub[#sub_genre.sub + 1] = 'Chicano'
    sub_genre.sub[#sub_genre.sub + 1] = 'Classic'
    sub_genre.sub[#sub_genre.sub + 1] = 'Conjunto'
    sub_genre.sub[#sub_genre.sub + 1] = 'Conjunto Progressive'
    sub_genre.sub[#sub_genre.sub + 1] = 'New Mex'
    sub_genre.sub[#sub_genre.sub + 1] = 'Tex-Mex'
    genre[#genre + 1] = sub_genre

    sub_genre = {}
    sub_genre.name = 'Vocal'
    sub_genre.sub[#sub_genre.sub + 1] = 'A cappella'
    sub_genre.sub[#sub_genre.sub + 1] = 'Barbershop'
    sub_genre.sub[#sub_genre.sub + 1] = 'Doo-wop'
    sub_genre.sub[#sub_genre.sub + 1] = 'Gregorian Chant'
    sub_genre.sub[#sub_genre.sub + 1] = 'Standards'
    sub_genre.sub[#sub_genre.sub + 1] = 'Traditional Pop'
    sub_genre.sub[#sub_genre.sub + 1] = 'Vocal Jazz'
    sub_genre.sub[#sub_genre.sub + 1] = 'Vocal Pop'
    genre[#genre + 1] = sub_genre

    sub_genre = {}
    sub_genre.name = 'World'
    sub_genre.sub[#sub_genre.sub + 1] = 'Africa'
    sub_genre.sub[#sub_genre.sub + 1] = 'Afro-Beat'
    sub_genre.sub[#sub_genre.sub + 1] = 'Afro-Pop'
    sub_genre.sub[#sub_genre.sub + 1] = 'Asia'
    sub_genre.sub[#sub_genre.sub + 1] = 'Australia'
    sub_genre.sub[#sub_genre.sub + 1] = 'Cajun'
    sub_genre.sub[#sub_genre.sub + 1] = 'Calypso'
    sub_genre.sub[#sub_genre.sub + 1] = 'Caribbean'
    sub_genre.sub[#sub_genre.sub + 1] = 'Carnatic'
    sub_genre.sub[#sub_genre.sub + 1] = 'Celtic'
    sub_genre.sub[#sub_genre.sub + 1] = 'Celtic Folk'
    sub_genre.sub[#sub_genre.sub + 1] = 'Contemporary Celtic'
    sub_genre.sub[#sub_genre.sub + 1] = 'Coupé-décalé'
    sub_genre.sub[#sub_genre.sub + 1] = 'Dangdut'
    sub_genre.sub[#sub_genre.sub + 1] = 'Drinking Songs'
    sub_genre.sub[#sub_genre.sub + 1] = 'Drone'
    sub_genre.sub[#sub_genre.sub + 1] = 'Europe'
    sub_genre.sub[#sub_genre.sub + 1] = 'France'
    sub_genre.sub[#sub_genre.sub + 1] = 'Hawaii'
    sub_genre.sub[#sub_genre.sub + 1] = 'Hindustani'
    sub_genre.sub[#sub_genre.sub + 1] = 'Indian Ghazal'
    sub_genre.sub[#sub_genre.sub + 1] = 'Indian Pop'
    sub_genre.sub[#sub_genre.sub + 1] = 'Japan'
    sub_genre.sub[#sub_genre.sub + 1] = 'Japanese Pop'
    sub_genre.sub[#sub_genre.sub + 1] = 'Klezmer'
    sub_genre.sub[#sub_genre.sub + 1] = 'Mbalax'
    sub_genre.sub[#sub_genre.sub + 1] = 'Middle East'
    sub_genre.sub[#sub_genre.sub + 1] = 'North America'
    sub_genre.sub[#sub_genre.sub + 1] = 'Ode'
    sub_genre.sub[#sub_genre.sub + 1] = 'Piphat'
    sub_genre.sub[#sub_genre.sub + 1] = 'Polka'
    sub_genre.sub[#sub_genre.sub + 1] = 'Soca'
    sub_genre.sub[#sub_genre.sub + 1] = 'South Africa'
    sub_genre.sub[#sub_genre.sub + 1] = 'South America'
    sub_genre.sub[#sub_genre.sub + 1] = 'Traditional Celtic'
    sub_genre.sub[#sub_genre.sub + 1] = 'Worldbeat'
    sub_genre.sub[#sub_genre.sub + 1] = 'Zydeco'
    genre[#genre + 1] = sub_genre

    return genre
end
genres.get_genres = get_genres


