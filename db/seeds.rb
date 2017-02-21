#
# UNITS
#

units = [
  'teaspoon',
  'tablespoon',
  'cup',
  'pint',
  'quart',
  'gallon',
  'milliliter',
  'liter',
  'pound',
  'ounce',
  'milligram',
  'gram',
  'kilogram',
  'clove'
]

units.each { |name| Unit.create(name: name) }

#
# INGREDIENTS
#

ingredients = [
  'chickpeas',
  'garlic',
  'olive oil',
  'lemon juice',
  'tahini',
  'salt',
  'paprika'
]

ingredients.each { |name| Ingredient.create(name: name) }

#
# RECIPES
#

title = '5-minute Hummus'

instructions = <<-EOF
1) In a food processor, puree the chickpeas and garlic with the olive oil, lemon juice, tahini (if using), cumin, and ¾ teaspoon salt until smooth and creamy. Add 1 to 2 tablespoons water as necessary to achieve the desired consistency.
2) Transfer to a bowl. Drizzle with olive oil and sprinkle with the paprika before serving.
EOF

recipe = Recipe.create(title: title, instructions: instructions, quantities: Quantity.all)

#
# QUANTITIES
#

quantities = [
  [ 15, 'ounce', 'chickpeas' ],
  [ 1, 'clove', 'garlic' ],
  [ 0.25, 'cup', 'olive oil' ],
  [ 2, 'tablespoon', 'lemon juice' ],
  [ 2, 'tablespoon', 'tahini' ],
  [ 1, 'teaspoon', 'cumin' ],
  [ 1, 'teaspoon', 'salt' ],
  [ 0.25, 'teaspoon', 'paprika' ]
]

quantities.each do |(amount, unit_name, ingredient_name)|
  Quantity.create(
    {
      amount: amount,
      recipe: recipe,
      unit: Unit.where(name: unit_name).first,
      ingredient: Ingredient.where(name: ingredient_name).first
    }
  )
end
