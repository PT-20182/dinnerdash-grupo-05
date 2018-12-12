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
massa     = MealCategory.create(name: 'Massa')
peixe     = MealCategory.create(name: 'Peixe')
salada    = MealCategory.create(name: 'Salada')

#criar refeições
Meal.create(
  name: "Macarrão",
  meal_category_id: massa.id,
  description: "Macarrão feito de areia e cola",
  price: "2,90"
).image.attach(io: File.open("app/assets/images/seed/macarrão-a-bolonhesa-300x200.jpg"), filename: "fileName")

# create admin
User.create(
  email: "admin@admin",
  name: "admin",
  is_admin: true,
  password: "123456",
  password_confirmation: "123456"
)

