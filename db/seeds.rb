categories = Category.create([{ name: 'Beer' }, { name: 'Wine' }, { name: 'Cider' }, { name: 'Whisky'} ])

beer = Category.find_by(name: 'Beer')
wine = Category.find_by(name: 'Wine')
cider = Category.find_by(name: 'Cider')
whisky = Category.find_by(name: 'Whisky')

Type.create([
  {
    name: 'IPA',
    description: 'Lorem',
    category_id: beer.id,
    occasion: 1
  },
  { 
    name: 'APA', 
    description: 'Lorem', 
    category_id: beer.id,
    occasion: 2 
  },
  { 
    name: 'Light', 
    description: 'Lorem', 
    category_id: beer.id,
    occasion: 0 
  }, 
  {
    name: 'Dark', 
    description: 'Lorem', 
    category_id: beer.id,
    occasion: 1
  }, 
  {
    name: 'Scotch', 
    description: 'Lorem', 
    category_id: whisky.id,
    occasion: 2
  }, 
  {
    name: 'Irish', 
    description: 'Lorem', 
    category_id: whisky.id,
    occasion: 0
  }, 
  {
    name: 'Single Malt', 
    description: 'Lorem', 
    category_id: whisky.id,
    occasion: 1
  }, 
  {
    name: 'Rye', 
    description: 'Lorem', 
    category_id: whisky.id,
    occasion: 2
  }, 
  { 
    name: 'IPA', 
    description: 'Lorem', 
    category_id: beer.id,
    occasion: 0 
  }, 
  { 
    name: 'APA', 
    description: 'Lorem', 
    category_id: beer.id,
    occasion: 1
  }, 
  { 
    name: 'Riesling', 
    description: 'Lighter than Chardonnay wines. The aromas generally include fresh apples. The riesling variety expresses itself very differently depending on the district and the winemaking. Rieslings should taste fresh. If they do, then they might also prove tastier and tastier as they age.', 
    category_id: wine.id,
    occasion: 2 
  }, 
  { 
    name: 'Chardonnay', 
    description: 'Wide-bodied and velvety with rich citrus (lemon, grapefruit) flavours. Fermenting in new oak barrels adds a buttery tone (vanilla, toast, coconut, toffee). Citrus fruit flavours, hints of melon, vanilla, some toasty character and some creaminess.', category_id: wine.id,
    occasion: 0 
  }, 
  { 
    name: 'Sauvignon blanc', 
    description: ' in varietal wine: generally lighter than Chardonnay — Sauvignon blanc normally shows a herbal character suggesting bell pepper or freshly mown grass. The dominating flavours range from sour green fruits of apple, pear and gooseberry through to tropical fruits of melon, mango and blackcurrant. Quality unoaked Sauvignon Blancs will display smokey qualities; they require bright aromas and a strong acid finish; they are best grown in cool climates.', 
    category_id: wine.id,
    occasion: 1 
  }, 
  { 
    name: 'Merlot', 
    description: 'Black-cherry and herbal flavours are typical. The texture is round but a middle palate gap is common.', category_id: wine.id,
    occasion: 2
  }, 
  { 
    name: 'Bittersweet', 
    description: 'High in tannin and low in acid', 
    category_id: cider.id,
    occasion: 0
  }, 
  { 
    name: 'Sweet', 
    description: 'Low in tannin and low in acid', 
    category_id: cider.id,
    occasion: 1 
  }, 
  { 
    name: 'Bittersharp', 
    description: 'High in tannin and high in acid', 
    category_id: cider.id,
    occasion: 2 
  }])
