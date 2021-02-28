# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

name='神泉ハイツ';rent=85_000;address='東京都渋谷区神泉町';age=32;remarks='デイリーヤマザキ神泉店まで３０８ｍ/ローソン神泉駅前店まで３４９ｍ/巡回管理/リフォーム：２０１２年７月キッチン・シャワールーム・洗面化粧台・リフォーム済/Ｔポイントも貯めれます♪引越業者割引有り☆'
prop=Prop.create(name: name, rent: rent, address: address, age: age, remarks: remarks)
line_name='ＪＲ山手線';station_name='渋谷駅';minutes_foot=13
Near.create(prop_id: prop.id, line_name: line_name, station_name: station_name, minutes_foot: minutes_foot)
line_name='京王井の頭線';station_name='神泉駅';minutes_foot=3
Near.create(prop_id: prop.id, line_name: line_name, station_name: station_name, minutes_foot: minutes_foot)


name='セゾン代官山';rent=77_000;address='東京都渋谷区恵比寿西２';age=31;remarks='初期費用他　合計１．６２万円（内訳：鍵交換費用１．６２万円）'
prop=Prop.create(name: name, rent: rent, address: address, age: age, remarks: remarks)

