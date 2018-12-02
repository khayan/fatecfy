#========================
# MÚSICAS
#========================

# Para evitar a repetição do comando no código inserimos em uma variável.
tmp_dir = Rails.root.join("tmp")

#========================
# CATEGORIAS
#========================
 
rock = Category.create(name: "Rock")
rock.image.attach(io: File.open("#{tmp_dir}/seed_files/rock.png"), filename: "rock.png")

blues = Category.create(name: "Blues")
blues.image.attach(io: File.open("#{tmp_dir}/seed_files/blues.png"), filename: "blues.png")

country = Category.create(name: "Country")
country.image.attach(io: File.open("#{tmp_dir}/seed_files/country.png"), filename: "country.png")

jazz = Category.create(name: "Jazz")
jazz.image.attach(io: File.open("#{tmp_dir}/seed_files/jazz.png"), filename: "jazz.png")