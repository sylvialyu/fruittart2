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
  title: "Pineapple & Avocado Cheese Tart",
  description: "A rich cream cheese with avocado in a juicy pineapple, also a
tart made with a gourmet additive avocado to a thoroughly baked
Madeleine. The sweet smell of pineapple and a slight bitterness of
lime that made it work for cream cheese spread into the volume flavor",
  price: 68,
  quantity: 43,
  )
Photo.create!(product_id:1,avatar: open('http://i.imgur.com/OVZjFhf.jpg'))
Photo.create!(product_id:1,avatar: open('http://i.imgur.com/6iCSL9Q.jpg'))
Photo.create!(product_id:1,avatar: open(File.join(Rails.root, "/app/assets/images/products/pinklove.jpg")))

Product.create!(
  id: 2,
  title: "Grapefruit & Earl Gray Bavarian Tart",
  description: "We combined grapefruit with plentiful flowers in motif and Bavarian
tea that we carefully boiled Earl Gray 's tea leaves.
The taste of grapefruit full of fruit juice and black tea
is compatible. Please enjoy with a refreshing scent of cardamom that
made Bavarian effect.",
  price: 70,
  quantity: 38,
  )
Photo.create!(product_id:2,avatar: open('http://i.imgur.com/0dQpF2p.jpg'))
Photo.create!(product_id:2,avatar: open('http://i.imgur.com/YayAkWP.jpg'))
Photo.create!(product_id:2,avatar: open(File.join(Rails.root, "/app/assets/images/products/pinklove.jpg")))

Product.create!(
  id: 3,
  title: "Matcha & Soymilk Tart",
  description: "Sprinkled redbeans into a crispy texture of tart fabrics, and
superimposed soybean mousse finished in a rich flavored green tea
Bavarian and creamy. If you put it in your mouth with cream of soft
sweet green tea, deep flavor like elegant Japanese sweets will spread.",
  price: 68,
  quantity: 55,
  )
Photo.create!(product_id:3,avatar: open('http://i.imgur.com/0KbdaqQ.jpg'))
Photo.create!(product_id:3,avatar: open('http://i.imgur.com/BklBufL.jpg'))
Photo.create!(product_id:3,avatar: open(File.join(Rails.root, "/app/assets/images/products/pinklove.jpg")))

Product.create!(
  id: 4,
  title: "Banana cream & Caramel Coffee Tart",
  description: "Plenty of banana cream in moist and baked banana bread, a tart
  spreading a sweet scent in every bite. The crispy texture of chopped
  walnut and coffee beans with a fragrant aroma and thinly laid
  chocolate is accented. Please enjoy with the source of caramel coffee",
  price: 65,
  quantity: 45,
  )
Photo.create!(product_id:4,avatar: open('http://i.imgur.com/Vw8LPk2.jpg'))
Photo.create!(product_id:4,avatar: open('http://i.imgur.com/MHtRV6g.jpg'))
Photo.create!(product_id:4,avatar: open(File.join(Rails.root, "/app/assets/images/products/pinklove.jpg")))

Product.create!(
  id: 5,
  title: "Crown Melon Tart",
  description: "Crown melon, the king of a melon drifting with a rich fragrance.
Stuffed with mellow custard cream and sponge plus fresh creamy buttery
rich tart, we combined a fragrant brandy very compatible with crown
melon. Please relish that elegant taste.",
  price: 75,
  quantity: 25,
  )
Photo.create!(product_id:5,avatar: open('http://i.imgur.com/SLPKbrL.jpg'))
Photo.create!(product_id:5,avatar: open('http://i.imgur.com/89bkLvP.jpg'))
Photo.create!(product_id:5,avatar: open(File.join(Rails.root, "/app/assets/images/products/pinklove.jpg")))


Product.create!(
  id: 6,
  title: "Honey & Lemon Tart",
  description: "To the mousse using fresh lemon juice, we mixed fragrant honey
and mellow fresh cream. Please enjoy the refreshing lemon scent.",
  price: 62,
  quantity: 19,
  )
Photo.create!(product_id:6,avatar: open('http://i.imgur.com/mM4nxc4.jpg'))
Photo.create!(product_id:6,avatar: open('http://i.imgur.com/FkzHW37.jpg'))
Photo.create!(product_id:6,avatar: open(File.join(Rails.root, "/app/assets/images/products/pinklove.jpg")))


Product.create!(
  id: 7,
  title: "Taiwan Mango Tart",
  description: "Sweetness, fragrance, nice tongue touch, rich taste Taiwan
mango combined a mellow custard cream and sweet and sour
flambooise, finished in a luxurious dish.",
  price: 80,
  quantity: 3,
  )
Photo.create!(product_id:7,avatar: open('http://i.imgur.com/rfq7Wen.jpg'))
Photo.create!(product_id:7,avatar: open('http://i.imgur.com/9RmVNZl.jpg'))
Photo.create!(product_id:7,avatar: open(File.join(Rails.root, "/app/assets/images/products/pinklove.jpg")))


Product.create!(
  id: 8,
  title: "Cherry Sugar & Le Tecto Tart",
  description: "We combined Cherry Blossom Shoest with Le Rectier's compote. It is a
perfect tart for spring, adding cherry flavor to brulee carefully
baked carefully. Please enjoy it with the cherry blossoms of nectar.",
  price: 85,
  quantity: 27,
  )
Photo.create!(product_id:8,avatar: open('http://i.imgur.com/kLCvF8t.jpg'))
Photo.create!(product_id:8,avatar: open('http://i.imgur.com/aMMehqd.jpg'))
Photo.create!(product_id:8,avatar: open(File.join(Rails.root, "/app/assets/images/products/pinklove.jpg")))


Product.create!(
  id: 9,
  title: "Orange Tart",
  description: "Bitterness chocolate cream and cream rich in orange flavor, fresh
orange that is soaked in liqueur is a balanced tart.",
  price: 82,
  quantity: 44,
  )
Photo.create!(product_id:9,avatar: open('http://i.imgur.com/RPaO0xj.jpg'))
Photo.create!(product_id:9,avatar: open('http://i.imgur.com/s0vhXyD.jpg'))
Photo.create!(product_id:9,avatar: open(File.join(Rails.root, "/app/assets/images/products/pinklove.jpg")))

Product.create!(
  id: 10,
  title: "Extra-banana Tart",
  description: "It is a limited tart of the Taipei branch, using
a banana, making plenty of fresh cream and a banana with an eating
hint of dusty texture, a tart excellent for compatibility of smooth
pink pudding with a tongue Praline (almond) paste has become a taste
accents.",
  price: 70,
  quantity: 12,
  )
Photo.create!(product_id:10,avatar: open('http://i.imgur.com/JuuX2CT.jpg'))
Photo.create!(product_id:10,avatar: open('http://i.imgur.com/xXnnTgj.jpg'))
Photo.create!(product_id:10,avatar: open(File.join(Rails.root, "/app/assets/images/products/pinklove.jpg")))

Product.create!(
  id: 11,
  title: "Seasonal Fruit Tart ~ Spring version ~",
  description: "For colorful fruits with luxury, there are plenty of sticking points,
production places, cuts, arranging directions, as well as taste.
Combination of fresh fruit and smooth custard cream, crispy pie cloth
is the No. 1 Kilfevon popularity.",
  price: 88,
  quantity: 19,
  )
Photo.create!(product_id:11,avatar: open('http://i.imgur.com/4of4vD1.jpg'))
Photo.create!(product_id:11,avatar: open('http://i.imgur.com/OvKr1HO.jpg'))
Photo.create!(product_id:11,avatar: open(File.join(Rails.root, "/app/assets/images/products/pinklove.jpg")))

Product.create!(
  id: 12,
  title: "White Chocolate & Cheese Souffle Tart",
  description: "Add white chocolate and moist and baked cheese souffle, it is tart
finished vividly with sweet and sour sauce and red fruit. The
combination of cheese rich and red fruit as good as acidity, and cream
is exquisite.",
  price: 69,
  quantity: 8,
  )
Photo.create!(product_id:12,avatar: open('http://i.imgur.com/EVVDJVH.jpg'))
Photo.create!(product_id:12,avatar: open('http://i.imgur.com/iApZlbD.jpg'))
Photo.create!(product_id:12,avatar: open(File.join(Rails.root, "/app/assets/images/products/pinklove.jpg")))

Product.create!(
  id: 13,
  title: "Tart of Momoka (Strawberry)",
  description: "We made the tart that used the luxuriously used strawberry Momoka, as
if its name is as sweet as peach, fresh and crispy, strawberry
overturning the image of past strawberries.",
  price: 86,
  quantity: 33,
  )
Photo.create!(product_id:13,avatar: open('http://i.imgur.com/9yI1dgY.jpg'))
Photo.create!(product_id:13,avatar: open('http://i.imgur.com/6zFOofk.jpg'))
Photo.create!(product_id:13,avatar: open(File.join(Rails.root, "/app/assets/images/products/pinklove.jpg")))

Product.create!(
  id: 14,
  title: "Mahachanok Mango Tart ~ Yoghurt Flavor ~",
  description: "The rich fragrance and tight fruit pulp, rich flavor mango
'Mahachanok' was used abundantly and it finished like a vivid flower
blooming in Thailand. Please enjoy it with smooth yoghurt-flavored
mousse, buttery flavored saucepan pie cloth. Mint liqueur made honedly
effective has become accent of taste.",
  price: 66,
  quantity: 3,
  )
Photo.create!(product_id:14,avatar: open('http://i.imgur.com/Q4aEiRq.jpg'))
Photo.create!(product_id:14,avatar: open('http://i.imgur.com/CumOtnR.jpg'))
Photo.create!(product_id:14,avatar: open(File.join(Rails.root, "/app/assets/images/products/pinklove.jpg")))

Product.create!(
  id: 15,
  title: "Yuzu & Yoghurt Tart",
  description: "Yuzu village, Tart with the fragrant yuzu juice of Majo village in
Kochi prefecture. I shed a yoghurt mousse on crispy tart with whole
grain flour and decorated orange jelly.",
  price: 62,
  quantity: 11,
  )
Photo.create!(product_id:15,avatar: open('http://i.imgur.com/sMqKASB.jpg'))
Photo.create!(product_id:15,avatar: open('http://i.imgur.com/88xacor.jpg'))
Photo.create!(product_id:15,avatar: open(File.join(Rails.root, "/app/assets/images/products/pinklove.jpg")))

Product.create!(
  id: 16,
  title: "Special Selection Soy Sauce Tart",
  description: "We made the tart by imagining a sweet salty sauce with a dusty texture
and everyone's favorite Mitarashi dumplings. We put finning fertilizer
in custard cream cooked with rice milk and finished with plenty of
cream combined with special selection soy sauce born in Osaka. The
taste of Tamba's squeezed beans and the delicious accent that Mitara
sauce made with special soy sauce is delicious.",
  price: 84,
  quantity: 36,
  )
Photo.create!(product_id:16,avatar: open('http://i.imgur.com/79dfK9m.jpg'))
Photo.create!(product_id:16,avatar: open('http://i.imgur.com/Y33vgOX.jpg'))
Photo.create!(product_id:16,avatar: open(File.join(Rails.root, "/app/assets/images/products/pinklove.jpg")))
