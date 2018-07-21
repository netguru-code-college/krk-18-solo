# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

categories = Category.create([{ name: 'Beer' }, { name: 'Wine' }, { name: 'Cider' }, { name: 'Whisky'} ])

beer = Category.find_by(name: 'Beer')
wine = Category.find_by(name: 'Wine')
cider = Category.find_by(name: 'Cider')
whisky = Category.find_by(name: 'whisky')

categories = Category.create([{ name: 'Beer' }, { name: 'Whisky' }, { name: 'Wine' }, { name: 'Cider' }])

beer = Category.find_by(name: 'Beer')
wine = Category.find_by(name: 'Wine')
whisky = Category.find_by(name: 'Whisky')
cider = Category.find_by(name: 'Cider')

Type.create([{ name: 'IPA', description: 'Lorem', category_id: beer.id }, { name: 'APA', description: 'Lorem', category_id: beer.id }, { name: 'Light', description: 'Lorem', category_id: beer.id }, {name: 'Dark', description: 'Lorem', category_id: beer.id}, {name: 'Scotch', description: 'Lorem', category_id: whisky.id}, {name: 'Irish', description: 'Lorem', category_id: whisky.id}, {name: 'Single Malt', description: 'Lorem', category_id: whisky.id}, {name: 'Rye', description: 'Lorem', category_id: whisky.id}, { name: 'IPA', description: 'Lorem', category_id: beer.id }, { name: 'APA', description: 'Lorem', category_id: beer.id }, { name: 'Riesling', description: 'Lighter than Chardonnay wines. The aromas generally include fresh apples. The riesling variety expresses itself very differently depending on the district and the winemaking. Rieslings should taste fresh. If they do, then they might also prove tastier and tastier as they age.', category_id: wine.id }, { name: 'Chardonnay', description: 'Wide-bodied and velvety with rich citrus (lemon, grapefruit) flavours. Fermenting in new oak barrels adds a buttery tone (vanilla, toast, coconut, toffee). Citrus fruit flavours, hints of melon, vanilla, some toasty character and some creaminess.', category_id: wine.id }, { name: 'Sauvignon blanc', description: ' in varietal wine: generally lighter than Chardonnay — Sauvignon blanc normally shows a herbal character suggesting bell pepper or freshly mown grass. The dominating flavours range from sour green fruits of apple, pear and gooseberry through to tropical fruits of melon, mango and blackcurrant. Quality unoaked Sauvignon Blancs will display smokey qualities; they require bright aromas and a strong acid finish; they are best grown in cool climates.', category_id: wine.id }, { name: 'Merlot', description: 'Black-cherry and herbal flavours are typical. The texture is round but a middle palate gap is common.', category_id: wine.id }, 
{ name: 'Bittersweet', description: 'High in tannin and low in acid', category_id: cider.id }, { name: 'Sweet', description: 'Low in tannin and low in acid', category_id: cider.id }, { name: 'Bittersharp', description: 'High in tannin and high in acid', category_id: cider.id }])
