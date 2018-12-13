# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
Meal.delete_all
MealCategory.delete_all

# criar categorias
massa     = MealCategory.create(name: 'Massas')
carne     = MealCategory.create(name: 'Carnes')
peixe     = MealCategory.create(name: 'Peixes')
salada    = MealCategory.create(name: 'Saladas')

#criar refeições
def meal_create name, categ, descript, price, imgfile
  Meal.create(
    name: name,
    meal_category_id: categ.id,
    description: descript,
    price: price
  ).image.attach(io: File.open("app/assets/images/seed/#{imgfile}"), filename: "fileName")
end  

meal_create "Macarrão", massa, "Macarrão feito de areia e cola", "2,90", "macarrão-a-bolonhesa-300x200.jpg"
meal_create "Lasanha", massa, "Lasanha feita de criança. Sem glútem", "28,90", "carne.jpeg"
meal_create "Ravioli", massa, "Ravioli ravioli, olha a pedra mole", "69,69", "ravioli.jpg"

meal_create "Pernè a lá Pernildo", carne, "Perna de pernilongo frita", "16,50", "carne 1.jpg"
meal_create "Carne de boi", carne, "Mentira, é carne de porco", "23,50", "carne 2.jpg"
meal_create "Cupim", carne, "Eu não sei o que é cupim", "36,90", "carnec3.jpg"

meal_create "Sushi", peixe, "Sushi com arroz e alga e tal", "420,00", "sushi.jpeg"
meal_create "Salmão", peixe, "Nem sei se é salmão. Chutei", "42,42", "peixe assado.jpeg"
meal_create "Bacalhau", peixe, "Peixe cozido com coisas", "4,20", "peixe cozido.jpg"

meal_create "Salada 1", salada, "Uma salada", "00,00", "salada1.jpeg"
meal_create "Salada 2", salada, "Outra salada", "00,00", "salada2.jpg"
meal_create "Pilha de lixo", salada, "Gostoso que nem salada", "00,00", "pile-of-garbage.jpg"

# create admin
User.create(
  email: "admin@admin",
  name: "admin",
  is_admin: true,
  password: "123456",
  password_confirmation: "123456"
)

