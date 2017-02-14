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
  'kilogram'
]

units.each { |name| Unit.create(name: name) }
