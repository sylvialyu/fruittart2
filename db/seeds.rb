# Initialize Admin User
if User.find_by(email: "a@a.com").nil?
  u = User.new
  u.email = "a@a.com"           # 可以改成自己的 email
  u.password = "123456"                # 最少要六码
  u.password_confirmation = "123456"   # 最少要六码
  u.is_admin = true
  u.save
  puts "Admin 已经建立好了，帐号为#{u.email}, 密码为#{u.password}"
else
  puts "Admin 已经建立过了，脚本跳过该步骤。"
end


# Initialize Product

Product.create!(
  id: 1,
  title: "Fresh banana cream and caramel coffee tart",
  description: "Plenty of banana cream in moist and baked banana bread, a tart
  spreading a sweet scent in every bite. The crispy texture of chopped
  walnut and coffee beans with a fragrant aroma and thinly laid
  chocolate is accented. Please enjoy with the source of caramel coffee",
  price: 65,
  quantity: 45,
  )
Photo.create!(product_id:1,avatar: open(File.join(Rails.root, "/app/assets/images/products/banacho1.jpg")))
Photo.create!(product_id:1,avatar: open(File.join(Rails.root, "/app/assets/images/products/banacho2.jpg")))

Product.create!(
  id: 2,
  title: "Pineapple and avocado flavored cream cheese tart",
  description: "A rich cream cheese with avocado in a juicy pineapple, also a
tart made with a gourmet additive avocado to a thoroughly baked
Madeleine. The sweet smell of pineapple and a slight bitterness of
lime that made it work for cream cheese spread into the volume flavor",
  price: 68,
  quantity: 43,
  )
Photo.create!(product_id:2,avatar: open(File.join(Rails.root, "/app/assets/images/products/pianapple1.jpg")))
Photo.create!(product_id:2,avatar: open(File.join(Rails.root, "/app/assets/images/products/pianapple2.jpg")))

Product.create!(
  id: 3,
  title: "Grapefruit and Earl Gray Bavarian tart",
  description: "We combined grapefruit with plentiful flowers in motif and Bavarian
tea that we carefully boiled Earl Gray 's tea leaves.
The taste of grapefruit full of fruit juice and black tea
is compatible. Please enjoy with a refreshing scent of cardamom that
made Bavarian effect.",
  price: 70,
  quantity: 38,
  )
Photo.create!(product_id:3,avatar: open(File.join(Rails.root, "/app/assets/images/products/grapefruit1.jpg")))
Photo.create!(product_id:3,avatar: open(File.join(Rails.root, "/app/assets/images/products/grapefruit2.jpg")))

Product.create!(
  id: 4,
  title: "Matcha and soymilk tart",
  description: "Sprinkled redbeans into a crispy texture of tart fabrics, and
superimposed soybean mousse finished in a rich flavored green tea
Bavarian and creamy. If you put it in your mouth with cream of soft
sweet green tea, deep flavor like elegant Japanese sweets will spread.",
  price: 68,
  quantity: 55,
  )
Photo.create!(product_id:4,avatar: open(File.join(Rails.root, "/app/assets/images/products/macha1.jpg")))
Photo.create!(product_id:4,avatar: open(File.join(Rails.root, "/app/assets/images/products/macha2.jpg")))


Product.create!(
  id: 5,
  title: "Crown melon tart",
  description: "Crown melon, the king of a melon drifting with a rich fragrance.
Stuffed with mellow custard cream and sponge plus fresh creamy buttery
rich tart, we combined a fragrant brandy very compatible with crown
melon. Please relish that elegant taste.",
  price: 75,
  quantity: 25,
  )
Photo.create!(product_id:5,avatar: open(File.join(Rails.root, "/app/assets/images/products/melon1.jpg")))
Photo.create!(product_id:5,avatar: open(File.join(Rails.root, "/app/assets/images/products/melon2.jpg")))


Product.create!(
  id: 6,
  title: "Honey and lemon tart",
  description: "To the mousse using fresh lemon juice, we mixed fragrant honey
and mellow fresh cream. Please enjoy the refreshing lemon scent.",
  price: 62,
  quantity: 19,
  )
Photo.create!(product_id:6,avatar: open(File.join(Rails.root, "/app/assets/images/products/lemon1.jpg")))
Photo.create!(product_id:6,avatar: open(File.join(Rails.root, "/app/assets/images/products/lemon2.jpg")))


Product.create!(
  id: 7,
  title: "Taiwan Mango tart",
  description: "Sweetness, fragrance, nice tongue touch, rich taste Taiwan
mango combined a mellow custard cream and sweet and sour
flambooise, finished in a luxurious dish.",
  price: 80,
  quantity: 3,
  )
Photo.create!(product_id:7,avatar: open(File.join(Rails.root, "/app/assets/images/products/mango1.jpg")))
Photo.create!(product_id:7,avatar: open(File.join(Rails.root, "/app/assets/images/products/mango2.jpg")))


Product.create!(
  id: 8,
  title: "Cherry sugar and Le tecto tart",
  description: "We combined Cherry Blossom Shoest with Le Rectier's compote. It is a
perfect tart for spring, adding cherry flavor to brulee carefully
baked carefully. Please enjoy it with the cherry blossoms of nectar.",
  price: 85,
  quantity: 27,
  )
Photo.create!(product_id:8,avatar: open(File.join(Rails.root, "/app/assets/images/products/banacho1.jpg")))
Photo.create!(product_id:8,avatar: open(File.join(Rails.root, "/app/assets/images/products/banacho2.jpg")))


Product.create!(
  id: 9,
  title: "Orange tart",
  description: "Bitterness chocolate cream and cream rich in orange flavor, fresh
orange that is soaked in liqueur is a balanced tart.",
  price: 82,
  quantity: 44,
  )
Photo.create!(product_id:9,avatar: open(File.join(Rails.root, "/app/assets/images/products/orange1.jpg")))
Photo.create!(product_id:9,avatar: open(File.join(Rails.root, "/app/assets/images/products/orange2.jpg")))

Product.create!(
  id: 10,
  title: "Extra-banana tart",
  description: "It is a limited tart of the Taipei branch, using
a banana, making plenty of fresh cream and a banana with an eating
hint of dusty texture, a tart excellent for compatibility of smooth
pink pudding with a tongue Praline (almond) paste has become a taste
accents.",
  price: 70,
  quantity: 12,
  )
Photo.create!(product_id:10,avatar: open(File.join(Rails.root, "/app/assets/images/products/banana1.jpg")))
Photo.create!(product_id:10,avatar: open(File.join(Rails.root, "/app/assets/images/products/banana2.jpg")))

Product.create!(
  id: 11,
  title: "White chocolate and cream cheese souffle tart",
  description: "Add white chocolate and moist and baked cheese souffle, it is tart
finished vividly with sweet and sour sauce and red fruit. The
combination of cheese rich and red fruit as good as acidity, and cream
is exquisite.",
  price: 69,
  quantity: 8,
  )
Photo.create!(product_id:11,avatar: open(File.join(Rails.root, "/app/assets/images/products/straw1.jpg")))
Photo.create!(product_id:11,avatar: open(File.join(Rails.root, "/app/assets/images/products/straw2.jpg")))

Product.create!(
  id: 12,
  title: "Seasonal fruit tart ~ Spring version ~",
  description: "For colorful fruits with luxury, there are plenty of sticking points,
production places, cuts, arranging directions, as well as taste.
Combination of fresh fruit and smooth custard cream, crispy pie cloth
is the No. 1 Kilfevon popularity.",
  price: 88,
  quantity: 19,
  )
Photo.create!(product_id:12,avatar: open(File.join(Rails.root, "/app/assets/images/products/season1.jpg")))
Photo.create!(product_id:12,avatar: open(File.join(Rails.root, "/app/assets/images/products/season2.jpg")))

Product.create!(
  id: 13,
  title: "Tart of Momoka (Strawberry)",
  description: "We made the tart that used the luxuriously used strawberry Momoka, as
if its name is as sweet as peach, fresh and crispy, strawberry
overturning the image of past strawberries.",
  price: 86,
  quantity: 33,
  )
Photo.create!(product_id:13,avatar: open(File.join(Rails.root, "/app/assets/images/products/strawberry1.jpg")))
Photo.create!(product_id:13,avatar: open(File.join(Rails.root, "/app/assets/images/products/strawberry2.jpg")))

Product.create!(
  id: 14,
  title: "Mahachanok Mango's tart ~ yoghurt flavor from Thailand ~",
  description: "The rich fragrance and tight fruit pulp, rich flavor mango
'Mahachanok' was used abundantly and it finished like a vivid flower
blooming in Thailand. Please enjoy it with smooth yoghurt-flavored
mousse, buttery flavored saucepan pie cloth. Mint liqueur made honedly
effective has become accent of taste.",
  price: 66,
  quantity: 3,
  )
Photo.create!(product_id:14,avatar: open(File.join(Rails.root, "/app/assets/images/products/thai1.jpg")))
Photo.create!(product_id:14,avatar: open(File.join(Rails.root, "/app/assets/images/products/thai2.jpg")))

Product.create!(
  id: 15,
  title: "Yuzu and yoghurt tart",
  description: "Yuzu village, Tart with the fragrant yuzu juice of Majo village in
Kochi prefecture. I shed a yoghurt mousse on crispy tart with whole
grain flour and decorated orange jelly.",
  price: 62,
  quantity: 11,
  )
Photo.create!(product_id:15,avatar: open(File.join(Rails.root, "/app/assets/images/products/yuzu1.jpg")))
Photo.create!(product_id:15,avatar: open(File.join(Rails.root, "/app/assets/images/products/yuzu2.jpg")))

Product.create!(
  id: 16,
  title: "Special selection soy sauce tart",
  description: "We made the tart by imagining a sweet salty sauce with a dusty texture
and everyone's favorite Mitarashi dumplings. We put finning fertilizer
in custard cream cooked with rice milk and finished with plenty of
cream combined with special selection soy sauce born in Osaka. The
taste of Tamba's squeezed beans and the delicious accent that Mitara
sauce made with special soy sauce is delicious.",
  price: 84,
  quantity: 36,
  )
Photo.create!(product_id:16,avatar: open(File.join(Rails.root, "/app/assets/images/products/syoyu1.jpg")))
Photo.create!(product_id:16,avatar: open(File.join(Rails.root, "/app/assets/images/products/syoyu2.jpg")))
