product_1 = Product.where(name: 'Brooklyn Lager').first_or_create(
  base_sku: 'BL',
  base_price: 13.50,
  image: Rails.root.join("test/fixtures/files/brooklyn_lager.jpg").open,
  description: "In the late 1800’s Brooklyn was one of the largest brewing centers in the country, home to more than 45 breweries. Lager beer in the “Vienna” style was one of the local favorites. Brooklyn Lager is amber-gold in color and displays a firm malt center supported by a refreshing bitterness and floral hop aroma. Caramel malts show in the finish. The aromatic qualities of the beer are enhanced by “dry-hopping”, the centuries-old practice of steeping the beer with fresh hops as it undergoes a long, cold maturation. The result is a wonderfully flavorful beer, smooth, refreshing and very versatile with food. Dry-hopping is largely a British technique, which we’ve used in a Viennese-style beer to create an American original."
)

product_2 = Product.where(name: 'Guinness Extra Stout').first_or_create(
  base_sku: 'GU',
  base_price: 15,
  image: Rails.root.join("test/fixtures/files/guinness.jpg").open,
  description: "As deep as Guinness Extra Stout’s color is its taste. Crisp barley cuts through hops. A bite draws you in, bold flavors linger. Bitter marries sweet. A rich, refreshing taste. Brewed with skill. Built to last. A direct descendant of archival recipes, Guinness Extra Stout is based on a beer first brewed in 1821, when Arthur Guinness II set down precise instructions for brewing his Superior Porter. This beer has since become the precursor to every Guinness innovation you’ve ever enjoyed. Brewed at our St. James’s Gate brewery in Dublin, Guinness Extra Stout is crafted from finest quality malt, hops and Irish barley."
)

product_3 = Product.where(name: 'Weihenstephaner').first_or_create(
  base_sku: 'WS',
  base_price: 14,
  image: Rails.root.join("test/fixtures/files/weihenstephaner.jpg").open,
  description: "Weihenstephaner's golden-yellow wheat beer, with its fine-poured white foam, smells of cloves and impresses consumers with its refreshing banana flavor. It is full bodied with a smooth yeast taste. To be enjoyed at any time, this beer goes excellently with fish, seafood, spicy cheeses and pairs especially well with the traditional Bavarian veal sausage. Hefeweissbier brewed according to our centuries-old brewing tradition on the Weihenstephan hill."
)

product_1.variants.where(name: '6 Pack', sku: 'BL-6PK').first_or_create(price: 13.50)
product_2.variants.where(name: '6 Pack', sku: 'GU-6PK').first_or_create(price: 15)
product_3.variants.where(name: '6 Pack', sku: 'WS-6PK').first_or_create(price: 12)
product_3.variants.where(name: '12 Pack', sku: 'WS-12PK').first_or_create(price: 17)
product_3.variants.where(name: 'Case (24)', sku: 'WS-24').first_or_create(price: 22)