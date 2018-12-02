#============================
# SONGS
#============================

# Para evitar a repetição do comando no código inserimos em uma variável.
tmp_dir = Rails.root.join("tmp")

#============================
# CATEGORIAS
#============================
 
rock = Category.create(name: "Rock")
rock.image.attach(io: File.open("#{tmp_dir}/seed_files/rock.png"), filename: "rock.png")

blues = Category.create(name: "Blues")
blues.image.attach(io: File.open("#{tmp_dir}/seed_files/blues.png"), filename: "blues.png")

country = Category.create(name: "Country")
country.image.attach(io: File.open("#{tmp_dir}/seed_files/country.png"), filename: "country.png")

jazz = Category.create(name: "Jazz")
jazz.image.attach(io: File.open("#{tmp_dir}/seed_files/jazz.png"), filename: "jazz.png")


#============================
# ARTISTAS, ÁLBUNS, MÚSICAS
#============================

# ANDREW HOWS
andrew_howes = Artist.create(name: "Andrew Howes")
andrew_howes.photo.attach(io: File.open("#{tmp_dir}/seed_files/andrew_howes.jpg"), filename: "andrew_howes.jpg")

    # ÁLBUM - GUBERNATOR
    gubernator = andrew_howes.albums.create(title: "Gubernator", date: Time.strptime("18/05/2015", "%d/%m/%Y"), category: rock)
    gubernator.cover.attach(io: File.open("#{tmp_dir}/seed_files/gubernator.jpg"), filename: "gubernator.jpg")

    dumb_luck = gubernator.songs.create(title: "Dumb Luck", played_count: Random.rand(1000))
    dumb_luck.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/dumb_luck.mp3"), filename: "dumb_luck.mp3")
    helmsman = gubernator.songs.create(title: "Helmsman", played_count: Random.rand(1000))
    helmsman.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/helmsman.mp3"), filename: "helmsman.mp3")
    crimea = gubernator.songs.create(title: "Crimea", played_count: Random.rand(1000))
    crimea.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/crimea.mp3"), filename: "crimea.mp3")
    traitors_gate = gubernator.songs.create(title: "Traitors Gate", played_count: Random.rand(1000))
    traitors_gate.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/traitors_gate.mp3"), filename: "traitors_gate.mp3")
    
    # ÁLBUM - THE GREAT BEAR
    the_great_bear = andrew_howes.albums.create(title: "The Great Bear", date: Time.strptime("19/05/2015", "%d/%m/%Y"), category: rock)
    the_great_bear.cover.attach(io: File.open("#{tmp_dir}/seed_files/the_great_bear.jpg"), filename: "the_great_bear.jpg")
     
    big_drop = the_great_bear.songs.create(title: "Big Drop", played_count: Random.rand(1000))
    big_drop.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/big_drop.mp3"), filename: "big_drop.mp3")
    four_am = the_great_bear.songs.create(title: "4am", played_count: Random.rand(1000))
    four_am.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/4_am.mp3"), filename: "4_am.mp3")
    waiting = the_great_bear.songs.create(title: "Waiting", played_count: Random.rand(1000))
    waiting.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/waiting.mp3"), filename: "waiting.mp3")
    

# YELLOW CHAIR
yellow_chair = Artist.create(name: "Yellow Chair")
yellow_chair.photo.attach(io: File.open("#{tmp_dir}/seed_files/yellow_chair.jpg"), filename: "yellow_chair.jpg")

    # ÁLBUM - BARCELONA
    barcelona = yellow_chair.albums.create(title: "Barcelona", date: Time.strptime("07/01/2008", "%d/%m/%Y"), category: rock)
    barcelona.cover.attach(io: File.open("#{tmp_dir}/seed_files/barcelona.jpg"), filename: "barcelona.jpg")
     
    via_laietana = barcelona.songs.create(title: "Via Laietana", played_count: Random.rand(1000))
    via_laietana.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/via_laietana.mp3"), filename: "via_laietana.mp3")
    passeig_de_gracia = barcelona.songs.create(title: "Passeig de Gràcia", played_count: Random.rand(1000))
    passeig_de_gracia.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/passeig_de_gracia.mp3"), filename: "passeig_de_gracia.mp3")
    itaca = barcelona.songs.create(title: "Itaca", played_count: Random.rand(1000))
    itaca.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/itaca.mp3"), filename: "itaca.mp3")
        
    # ÁLBUM - EVERYTHING ZEN
    everything_zen = yellow_chair.albums.create(title: "Everything Zen", date: Time.strptime("01/07/2013", "%d/%m/%Y"), category: rock)
    everything_zen.cover.attach(io: File.open("#{tmp_dir}/seed_files/everything_zen.jpg"), filename: "everything_zen.jpg")
     
    everything_zen_music = everything_zen.songs.create(title: "Everything Zen", played_count: Random.rand(1000))
    everything_zen_music.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/everything_zen.mp3"), filename: "everything_zen.mp3")