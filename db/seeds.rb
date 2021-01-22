User.create!([
  {email: "admin@rails.shop", encrypted_password: "$2a$12$ktIwfpb09inhbiloMYXtrOgG0xBHOVCf/FlC.bf257I.5cHDraQvS", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil}
])
Category.create!([
  {name: "Men", image: nil, parent_id: nil},
  {name: "Women", image: nil, parent_id: nil},
  {name: "Children", image: nil, parent_id: nil},
  {name: "Men footwear", image: nil, parent_id: 1},
  {name: "Men clothes", image: nil, parent_id: 1},
  {name: "Men accessories", image: nil, parent_id: 1},
  {name: "Women footwear", image: nil, parent_id: 2},
  {name: "Women clothes", image: nil, parent_id: 2},
  {name: "Women accessories", image: nil, parent_id: 2},
  {name: "Children footwear", image: nil, parent_id: 3},
  {name: "Children clothes", image: nil, parent_id: 3},
  {name: "Children accessories", image: nil, parent_id: 3}
])
Product.create!([
  {name: "Autumn Winter Cotton Knitted", description: "Piece Women Sweat Suits Set 2017 Autumn Winter Cotton Knitted Hoodies Pants Ladies Slim Fitness Tracksuits Two Piece Outfits", price: 75, image: "https://cdn11.bigcommerce.com/s-pkla4xn3/images/stencil/608x608/products/1883/7501/2-Piece-Women-Sweat-Suits-Set-2017-Autumn-Winter-Cotton-Knitted-Hoodies-Pants-Ladies-Slim-Fitness__26616.1576641610.jpg?c=2", category_id: 2},
  {name: "Winter Faux Leather Jacket", description: "Winter Faux Leather Jacket Women Casual Basic Coats Plus Size 7XL Ladies Basic Jackets Waterproof Windproof Coats Female 50", price: 110, image: "https://cdn11.bigcommerce.com/s-pkla4xn3/images/stencil/608x608/products/30579/287242/2018-Winter-Faux-Leather-Jacket-Women-Casual-Basic-Coats-Plus-Size-7XL-Ladies-Basic-Jackets-Waterproof__95180.1579577762.jpg?c=2", category_id: 2},
  {name: "Child Snow Boots Shoes Boys", description: "Fashion New Child Snow Boots Shoes Boys Girls Leather Boots Children Kids Baby Toddlers Shoes For Boys Girls Sneakers Shoe", price: 40, image: "https://cdn11.bigcommerce.com/s-pkla4xn3/images/stencil/608x608/products/19343/171204/Fashion-New-Child-Snow-Boots-Shoes-Boys-Girls-Leather-Boots-Children-Kids-Baby-Toddlers-Shoes__83623.1545308347.jpg?c=2", category_id: 10},
  {name: "Male shirt long sleeve", description: "Fashion New Male Shirt Long Sleeve Mens Clothes Oblique Button Dress Shirts Mandarin Collar Men Tuxedo Shirts NZ15", price: 120, image: "https://cdn11.bigcommerce.com/s-pkla4xn3/images/stencil/1280x1280/products/30735/288868/2018-Fashion-New-Male-Shirt-Long-Sleeve-Mens-Clothes-Oblique-Button-Dress-Shirts-Mandarin-Collar-Men__22943.1580302013.jpg?c=2?imbypass=on", category_id: 1},
  {name: "Thick and thin Army Green", description: "2017 High quality Ma1 Thick and thin Army Green Military motorcycle Ma-1 aviator pilot Air men bomber jacket", price: 80, image: "https://cdn11.bigcommerce.com/s-pkla4xn3/images/stencil/608x608/products/15867/151049/2017-High-quality-Ma1-Thick-and-thin-Army-Green-Military-motorcycle-Ma-1-aviator-pilot-Air__31237.1544705569.jpg?c=2", category_id: 1},
  {name: "Tactical Men Jacket Lurker", description: "Brand Jacket V5.0 Military Tactical Men Jacket Lurker Shark Skin Soft Shell Waterproof Windproof Men windbreaker Jacket Coat", price: 50, image: "https://cdn11.bigcommerce.com/s-pkla4xn3/images/stencil/608x608/products/15908/151304/Brand-Jacket-V5-0-Military-Tactical-Men-Jacket-Lurker-Shark-Skin-Soft-Shell-Waterproof-Windproof__92088.1544706054.jpg?c=2", category_id: 1},
  {name: "Jacket Blazer Women Suit", description: "2016 Fashion Basic Jacket Blazer Women Suit Cardigan Puff Sleeve Ladies Autumn Plus Size Brand Coats Casual blazer female", price: 99, image: "https://cdn11.bigcommerce.com/s-pkla4xn3/images/stencil/608x608/products/4501/35457/2016-Fashion-Basic-Jacket-Blazer-Women-Suit-Cardigan-Puff-Sleeve-Ladies-Autumn-Plus-Size-Brand-Coats__85267.1580120368.jpg?c=2", category_id: 2},
  {name: "New baby rompers Newborn", description: "2018 New baby rompers Newborn Infant Baby Boy Girl Summer clothes Cute Cartoon Printed Romper Jumpsuit Climbing Clothes #Nxt", price: 20, image: "https://cdn11.bigcommerce.com/s-pkla4xn3/images/stencil/608x608/products/7260/65565/2018-New-baby-rompers-Newborn-Infant-Baby-Boy-Girl-Summer-clothes-Cute-Cartoon-Printed-Romper-Jumpsuit__49415.1587701989.jpg?c=2", category_id: 3},
  {name: "Duck Design Baby Baseball", description: "2018 New Cute Duck Design Baby Baseball Hat Cap For Boys Girls Sun Hat Kid Hat Children Cap Snapback Cap Outdoor Sports", price: 25, image: "https://cdn11.bigcommerce.com/s-pkla4xn3/images/stencil/608x608/products/4232/32483/2018-New-Cute-Duck-Design-Baby-Baseball-Hat-Cap-For-Boys-Girls-Sun-Hat-Kid-Hat__20012.1592994375.jpg?c=2", category_id: 3}
])
Order.create!([
  {user_id: 1, status: "in_progress"}
])
Cart.create!([
  {order_id: 1, user_id: 1, product_id: 6, quantity: 1}
])
ActiveStorage::Blob.create!([
  {key: "dhjd1gpag3iu0c1vb3ddx9btfkg5", filename: "2018-New-Cute-Duck-Design-Baby-Baseball-Hat-Cap-For-Boys-Girls-Sun-Hat-Kid-Hat__20012.1592994375.webp", content_type: "image/webp", metadata: {"identified"=>true, "width"=>608, "height"=>608, "analyzed"=>true}, service_name: "local", byte_size: 40928, checksum: "CHkY/WGX+0nrB2+EXgxOOQ=="},
  {key: "z09shln3mlrcsyimqz1s9wk2esgn", filename: "2018-Fashion-New-Male-Shirt-Long-Sleeve-Mens-Clothes-Oblique-Button-Dress-Shirts-Mandarin-Collar-Men__22943.1580302013.webp", content_type: "image/webp", metadata: {"identified"=>true, "width"=>1280, "height"=>1280, "analyzed"=>true}, service_name: "local", byte_size: 111234, checksum: "JUFPhQdWzGPRqyHMXaEgIg=="},
  {key: "x2h4jjvhpk73k8i4u0flak1fsghz", filename: "2018-Fashion-New-Male-Shirt-Long-Sleeve-Mens-Clothes-Oblique-Button-Dress-Shirts-Mandarin-Collar-Men__22943.1580302013.png", content_type: "image/png", metadata: {"identified"=>true, "width"=>50, "height"=>50, "analyzed"=>true}, service_name: "local", byte_size: 3201, checksum: "D4jf6dAua0xH/IkXCjfirA=="},
  {key: "t7wop4xjnu7mq43w8ebac30al0pw", filename: "2018-Fashion-New-Male-Shirt-Long-Sleeve-Mens-Clothes-Oblique-Button-Dress-Shirts-Mandarin-Collar-Men__22943.1580302013.png", content_type: "image/png", metadata: {"identified"=>true, "width"=>200, "height"=>200, "analyzed"=>true}, service_name: "local", byte_size: 25975, checksum: "vhLzDcY5utz8AAFZoWt+Zw=="},
  {key: "v498iwo2e14105gpxzu4g1shd86y", filename: "2017-High-quality-Ma1-Thick-and-thin-Army-Green-Military-motorcycle-Ma-1-aviator-pilot-Air__31237.1544705569.webp", content_type: "image/webp", metadata: {"identified"=>true, "width"=>608, "height"=>608, "analyzed"=>true}, service_name: "local", byte_size: 56142, checksum: "nA8FDdhLNajgYoFQJ+bzdQ=="},
  {key: "wl8p4lpihjeollkk3nhfw7686knw", filename: "Brand-Jacket-V5-0-Military-Tactical-Men-Jacket-Lurker-Shark-Skin-Soft-Shell-Waterproof-Windproof__92088.1544706054.webp", content_type: "image/webp", metadata: {"identified"=>true, "width"=>608, "height"=>608, "analyzed"=>true}, service_name: "local", byte_size: 38522, checksum: "HRGbREwzIBQEophz7CUS4Q=="},
  {key: "pes35gpb230189prlic46l9w65tk", filename: "2016-Fashion-Basic-Jacket-Blazer-Women-Suit-Cardigan-Puff-Sleeve-Ladies-Autumn-Plus-Size-Brand-Coats__85267.1580120368.jpg", content_type: "image/jpeg", metadata: {"identified"=>true, "width"=>606, "height"=>608, "analyzed"=>true}, service_name: "local", byte_size: 41353, checksum: "MyTiXcpVNeUlQMbFqsyOdA=="},
  {key: "2s3gzvzs5eymaa1xc24vpdrdja41", filename: "2-Piece-Women-Sweat-Suits-Set-2017-Autumn-Winter-Cotton-Knitted-Hoodies-Pants-Ladies-Slim-Fitness__26616.1576641610.webp", content_type: "image/webp", metadata: {"identified"=>true, "width"=>608, "height"=>608, "analyzed"=>true}, service_name: "local", byte_size: 21930, checksum: "hXYahTqgsTPl6xAdS0cQpQ=="},
  {key: "2q0ctpdosnvwlsewcdfcsj261fy5", filename: "2018-Winter-Faux-Leather-Jacket-Women-Casual-Basic-Coats-Plus-Size-7XL-Ladies-Basic-Jackets-Waterproof__95180.1579577762.webp", content_type: "image/webp", metadata: {"identified"=>true, "width"=>608, "height"=>608, "analyzed"=>true}, service_name: "local", byte_size: 48326, checksum: "0BItnA1pQ5CE+7Wo29OfCw=="},
  {key: "4zby7p2mm5jjcm9bvj8z5sq4jge9", filename: "Fashion-New-Child-Snow-Boots-Shoes-Boys-Girls-Leather-Boots-Children-Kids-Baby-Toddlers-Shoes__83623.1545308347.webp", content_type: "image/webp", metadata: {"identified"=>true, "width"=>608, "height"=>608, "analyzed"=>true}, service_name: "local", byte_size: 50332, checksum: "6Nc3zFE5UZTZDMKF07kYKA=="},
  {key: "94izpf0bybomtopq2nsmri7e46m8", filename: "2018-New-baby-rompers-Newborn-Infant-Baby-Boy-Girl-Summer-clothes-Cute-Cartoon-Printed-Romper-Jumpsuit__49415.1587701989.webp", content_type: "image/webp", metadata: {"identified"=>true, "width"=>608, "height"=>608, "analyzed"=>true}, service_name: "local", byte_size: 39022, checksum: "aqJMbC+RdT6Zek1cr0+nPg=="},
  {key: "nvs1e1l0u6jis3i8a7v4tbrxf5nz", filename: "2018-New-baby-rompers-Newborn-Infant-Baby-Boy-Girl-Summer-clothes-Cute-Cartoon-Printed-Romper-Jumpsuit__49415.1587701989.png", content_type: "image/png", metadata: {"identified"=>true, "width"=>200, "height"=>200, "analyzed"=>true}, service_name: "local", byte_size: 37117, checksum: "m4eloyzv4TVgxccuhTx9tw=="},
  {key: "gysjaukx6jynjstx1h0bv24v4std", filename: "2016-Fashion-Basic-Jacket-Blazer-Women-Suit-Cardigan-Puff-Sleeve-Ladies-Autumn-Plus-Size-Brand-Coats__85267.1580120368.jpg", content_type: "image/jpeg", metadata: {"identified"=>true, "width"=>199, "height"=>200, "analyzed"=>true}, service_name: "local", byte_size: 6145, checksum: "yPv1yK018gaQsMo9YvJpBw=="},
  {key: "rjfpsrvkjwov430y6hjjjjxiu26d", filename: "2018-New-Cute-Duck-Design-Baby-Baseball-Hat-Cap-For-Boys-Girls-Sun-Hat-Kid-Hat__20012.1592994375.png", content_type: "image/png", metadata: {"identified"=>true, "width"=>200, "height"=>200, "analyzed"=>true}, service_name: "local", byte_size: 37566, checksum: "1+emwfa0hbR4o8adU1GMaw=="},
  {key: "f8nj5szi1mb75k675uv2b798c3n7", filename: "2-Piece-Women-Sweat-Suits-Set-2017-Autumn-Winter-Cotton-Knitted-Hoodies-Pants-Ladies-Slim-Fitness__26616.1576641610.png", content_type: "image/png", metadata: {"identified"=>true, "width"=>200, "height"=>200, "analyzed"=>true}, service_name: "local", byte_size: 22067, checksum: "YHWfU773PPZGpokeIvZZ3Q=="},
  {key: "0p2pkfm7y0mrxv46ct97l9box7cg", filename: "2018-Winter-Faux-Leather-Jacket-Women-Casual-Basic-Coats-Plus-Size-7XL-Ladies-Basic-Jackets-Waterproof__95180.1579577762.png", content_type: "image/png", metadata: {"identified"=>true, "width"=>200, "height"=>200, "analyzed"=>true}, service_name: "local", byte_size: 41280, checksum: "IapRnAQjkiea1fn7kUHo6A=="},
  {key: "2c6x80sgyowsaf6czj041wlx5m4v", filename: "Brand-Jacket-V5-0-Military-Tactical-Men-Jacket-Lurker-Shark-Skin-Soft-Shell-Waterproof-Windproof__92088.1544706054.png", content_type: "image/png", metadata: {"identified"=>true, "width"=>200, "height"=>200, "analyzed"=>true}, service_name: "local", byte_size: 35652, checksum: "IP/SNXCqUKYcLqGQbjrHzA=="},
  {key: "1vvdrfbsinhsobb5i5gtco2p916j", filename: "Fashion-New-Child-Snow-Boots-Shoes-Boys-Girls-Leather-Boots-Children-Kids-Baby-Toddlers-Shoes__83623.1545308347.png", content_type: "image/png", metadata: {"identified"=>true, "width"=>200, "height"=>200, "analyzed"=>true}, service_name: "local", byte_size: 40289, checksum: "xqiRfzQz136oZdhbfDuEnA=="},
  {key: "rw5iaxflt9juhn7zg6fio70sx5n8", filename: "2017-High-quality-Ma1-Thick-and-thin-Army-Green-Military-motorcycle-Ma-1-aviator-pilot-Air__31237.1544705569.png", content_type: "image/png", metadata: {"identified"=>true, "width"=>200, "height"=>200, "analyzed"=>true}, service_name: "local", byte_size: 60955, checksum: "0HV6Vj9qmJCAapjPg/0Mog=="},
  {key: "7yjkdtv9esrq9w2ga91sxf7fib6k", filename: "2018-Winter-Faux-Leather-Jacket-Women-Casual-Basic-Coats-Plus-Size-7XL-Ladies-Basic-Jackets-Waterproof__95180.1579577762.png", content_type: "image/png", metadata: {"identified"=>true, "width"=>400, "height"=>400, "analyzed"=>true}, service_name: "local", byte_size: 150494, checksum: "nwsoFjtkSJd8K5A3jEo5iw=="},
  {key: "fcaorjdgpd05q58rl6kh6kqsgpo4", filename: "2-Piece-Women-Sweat-Suits-Set-2017-Autumn-Winter-Cotton-Knitted-Hoodies-Pants-Ladies-Slim-Fitness__26616.1576641610.png", content_type: "image/png", metadata: {"identified"=>true, "width"=>140, "height"=>140, "analyzed"=>true}, service_name: "local", byte_size: 12167, checksum: "H0oSS37gWhRFKdZ3xK2/xQ=="},
  {key: "gag9h47jf0a2htj1ggto546ugeyd", filename: "Fashion-New-Child-Snow-Boots-Shoes-Boys-Girls-Leather-Boots-Children-Kids-Baby-Toddlers-Shoes__83623.1545308347.png", content_type: "image/png", metadata: {"identified"=>true, "width"=>140, "height"=>140, "analyzed"=>true}, service_name: "local", byte_size: 21071, checksum: "DsGITSClLYuYqMcSmDszmw=="},
  {key: "m49zclujbyb5d7qizhs9dd00pivb", filename: "2018-New-baby-rompers-Newborn-Infant-Baby-Boy-Girl-Summer-clothes-Cute-Cartoon-Printed-Romper-Jumpsuit__49415.1587701989.png", content_type: "image/png", metadata: {"identified"=>true, "width"=>140, "height"=>140, "analyzed"=>true}, service_name: "local", byte_size: 19462, checksum: "Vzzj+6ut1iiyINW4JLAIBQ=="},
  {key: "x17b44r7c1lnunyafwlz5kgaaez1", filename: "2018-Fashion-New-Male-Shirt-Long-Sleeve-Mens-Clothes-Oblique-Button-Dress-Shirts-Mandarin-Collar-Men__22943.1580302013.png", content_type: "image/png", metadata: {"identified"=>true, "width"=>140, "height"=>140, "analyzed"=>true}, service_name: "local", byte_size: 14390, checksum: "qaRdxsuhU9JyKwX6YBxAiQ=="},
  {key: "ngfit02eg6ozjbgigqe6rbbc7pqs", filename: "2016-Fashion-Basic-Jacket-Blazer-Women-Suit-Cardigan-Puff-Sleeve-Ladies-Autumn-Plus-Size-Brand-Coats__85267.1580120368.jpg", content_type: "image/jpeg", metadata: {"identified"=>true, "width"=>140, "height"=>140, "analyzed"=>true}, service_name: "local", byte_size: 3701, checksum: "1lQqwwFQP3R+R61R17mE8w=="},
  {key: "g71kzjghlgn8wknrf92qe01mxkce", filename: "2018-Winter-Faux-Leather-Jacket-Women-Casual-Basic-Coats-Plus-Size-7XL-Ladies-Basic-Jackets-Waterproof__95180.1579577762.png", content_type: "image/png", metadata: {"identified"=>true, "width"=>140, "height"=>140, "analyzed"=>true}, service_name: "local", byte_size: 21864, checksum: "wqJlLAxkh5lKexgGrBWSSg=="},
  {key: "o7i47gm7uked8xdu3m7cl74wp4t7", filename: "2017-High-quality-Ma1-Thick-and-thin-Army-Green-Military-motorcycle-Ma-1-aviator-pilot-Air__31237.1544705569.png", content_type: "image/png", metadata: {"identified"=>true, "width"=>400, "height"=>400, "analyzed"=>true}, service_name: "local", byte_size: 207747, checksum: "7PeyAWAeNMlCAAluqF80/w=="},
  {key: "9h2hn2kceb4a8w8aovw1e8kp94i0", filename: "2018-Fashion-New-Male-Shirt-Long-Sleeve-Mens-Clothes-Oblique-Button-Dress-Shirts-Mandarin-Collar-Men__22943.1580302013.png", content_type: "image/png", metadata: {"identified"=>true, "width"=>400, "height"=>400, "analyzed"=>true}, service_name: "local", byte_size: 91290, checksum: "5tFZvA9UmsuBVrk3gd2Qng=="},
  {key: "m66sibx1fpnczx7uczkw228uqgtr", filename: "2-Piece-Women-Sweat-Suits-Set-2017-Autumn-Winter-Cotton-Knitted-Hoodies-Pants-Ladies-Slim-Fitness__26616.1576641610.png", content_type: "image/png", metadata: {"identified"=>true, "width"=>400, "height"=>400, "analyzed"=>true}, service_name: "local", byte_size: 73186, checksum: "wLsZJln0hzAMcHo2VEfrxA=="},
  {key: "pq0xu59g3ohr1kure3by9s1xzjct", filename: "Fashion-New-Child-Snow-Boots-Shoes-Boys-Girls-Leather-Boots-Children-Kids-Baby-Toddlers-Shoes__83623.1545308347.png", content_type: "image/png", metadata: {"identified"=>true, "width"=>400, "height"=>400, "analyzed"=>true}, service_name: "local", byte_size: 143186, checksum: "niDwxhfjphxzBU5D8NKq/A=="}
])
ActiveStorage::VariantRecord.create!([
  {blob_id: 4, variation_digest: "fVSI3ErivJVnAXMTIgvlmxrdlMk="},
  {blob_id: 4, variation_digest: "/bogtD2tLMJtiYDm+Lh5rHEsheM="},
  {blob_id: 9, variation_digest: "6x8KFtM/8O22vFlQ4EVqBuGjN8Q="},
  {blob_id: 13, variation_digest: "/bogtD2tLMJtiYDm+Lh5rHEsheM="},
  {blob_id: 14, variation_digest: "/bogtD2tLMJtiYDm+Lh5rHEsheM="},
  {blob_id: 10, variation_digest: "/bogtD2tLMJtiYDm+Lh5rHEsheM="},
  {blob_id: 11, variation_digest: "/bogtD2tLMJtiYDm+Lh5rHEsheM="},
  {blob_id: 7, variation_digest: "/bogtD2tLMJtiYDm+Lh5rHEsheM="},
  {blob_id: 8, variation_digest: "/bogtD2tLMJtiYDm+Lh5rHEsheM="},
  {blob_id: 12, variation_digest: "/bogtD2tLMJtiYDm+Lh5rHEsheM="},
  {blob_id: 11, variation_digest: "DPLEjjKtMBtQhSEkLq14yIJ2Uxc="},
  {blob_id: 12, variation_digest: "y/KrD8t//IQRvTWrcMpSBwDInZc="},
  {blob_id: 10, variation_digest: "y/KrD8t//IQRvTWrcMpSBwDInZc="},
  {blob_id: 9, variation_digest: "tLAcf53LDE3cok+ff/z+LdC2xvs="},
  {blob_id: 13, variation_digest: "y/KrD8t//IQRvTWrcMpSBwDInZc="},
  {blob_id: 4, variation_digest: "y/KrD8t//IQRvTWrcMpSBwDInZc="},
  {blob_id: 11, variation_digest: "y/KrD8t//IQRvTWrcMpSBwDInZc="},
  {blob_id: 7, variation_digest: "DPLEjjKtMBtQhSEkLq14yIJ2Uxc="},
  {blob_id: 4, variation_digest: "DPLEjjKtMBtQhSEkLq14yIJ2Uxc="},
  {blob_id: 10, variation_digest: "DPLEjjKtMBtQhSEkLq14yIJ2Uxc="},
  {blob_id: 12, variation_digest: "DPLEjjKtMBtQhSEkLq14yIJ2Uxc="}
])
ActiveStorage::Attachment.create!([
  {name: "image", record_type: "Product", record_id: 1, blob_id: 4},
  {name: "image", record_type: "ActiveStorage::VariantRecord", record_id: 2, blob_id: 5},
  {name: "image", record_type: "ActiveStorage::VariantRecord", record_id: 3, blob_id: 6},
  {name: "image", record_type: "Product", record_id: 3, blob_id: 7},
  {name: "image", record_type: "Product", record_id: 2, blob_id: 8},
  {name: "image", record_type: "Product", record_id: 4, blob_id: 9},
  {name: "image", record_type: "Product", record_id: 5, blob_id: 10},
  {name: "image", record_type: "Product", record_id: 6, blob_id: 11},
  {name: "image", record_type: "Product", record_id: 7, blob_id: 12},
  {name: "image", record_type: "Product", record_id: 8, blob_id: 13},
  {name: "image", record_type: "Product", record_id: 9, blob_id: 14},
  {name: "image", record_type: "ActiveStorage::VariantRecord", record_id: 4, blob_id: 15},
  {name: "image", record_type: "ActiveStorage::VariantRecord", record_id: 5, blob_id: 16},
  {name: "image", record_type: "ActiveStorage::VariantRecord", record_id: 6, blob_id: 17},
  {name: "image", record_type: "ActiveStorage::VariantRecord", record_id: 7, blob_id: 18},
  {name: "image", record_type: "ActiveStorage::VariantRecord", record_id: 8, blob_id: 19},
  {name: "image", record_type: "ActiveStorage::VariantRecord", record_id: 10, blob_id: 20},
  {name: "image", record_type: "ActiveStorage::VariantRecord", record_id: 11, blob_id: 21},
  {name: "image", record_type: "ActiveStorage::VariantRecord", record_id: 9, blob_id: 22},
  {name: "image", record_type: "ActiveStorage::VariantRecord", record_id: 12, blob_id: 23},
  {name: "image", record_type: "ActiveStorage::VariantRecord", record_id: 13, blob_id: 24},
  {name: "image", record_type: "ActiveStorage::VariantRecord", record_id: 14, blob_id: 25},
  {name: "image", record_type: "ActiveStorage::VariantRecord", record_id: 15, blob_id: 26},
  {name: "image", record_type: "ActiveStorage::VariantRecord", record_id: 16, blob_id: 27},
  {name: "image", record_type: "ActiveStorage::VariantRecord", record_id: 17, blob_id: 28},
  {name: "image", record_type: "ActiveStorage::VariantRecord", record_id: 18, blob_id: 29},
  {name: "image", record_type: "ActiveStorage::VariantRecord", record_id: 19, blob_id: 30},
  {name: "image", record_type: "ActiveStorage::VariantRecord", record_id: 20, blob_id: 31},
  {name: "image", record_type: "ActiveStorage::VariantRecord", record_id: 21, blob_id: 32},
  {name: "image", record_type: "ActiveStorage::VariantRecord", record_id: 22, blob_id: 33}
])
