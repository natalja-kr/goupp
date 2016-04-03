# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

countries = [
    'Австралия', 'Австрия', 'Азербайджан', 'Албания', 'Алжир', 'Американский Самоа', 'Ангилья',
    'Англия', 'Ангола', 'Андорра', 'Антарктика', 'Антигуа и Барбуда', 'Антильские острова', 'Арабские Эмираты',
    'Аргентина', 'Армения', 'Аруба', 'Афганистан', 'Багамские острова', 'Бангладеш', 'Барбадос', 'Бахрейн',
    'Беларусь', 'Белиз', 'Бельгия', 'Бенин', 'Бермуды', 'Болгария', 'Боливия', 'Босния и Герцеговина', 'Ботсвана',
    'Бразилия', 'Британские территории Индийского океана', 'Бруней', 'Буркина Фасо', 'Бурунди', 'Бутан', 'Вануату',
    'Ватикан', 'Великобритания', 'Венгрия', 'Венесуэла', 'Виргинские острова (Британские)', 'Виргинские острова (США)',
    'Восточный Тимор', 'Вьетнам', 'Габон', 'Гаити', 'Гайана', 'Гамбия', 'Гана', 'Гваделупа', 'Гватемала', 'Гвинея',
    'Гвинея-Бисау', 'Германия', 'Гибралтар', 'Гондурас', 'Гонконг (Китай)', 'Гренада', 'Гренландия', 'Греция',
    'Грузия', 'Гуам', 'Дания', 'Демократическая республика Конго', 'Джибути', 'Доминика', 'Доминиканская республика',
    'Египет', 'ЕС', 'Замбия', 'Западная Сахара', 'Зимбабве', 'Израиль', 'Индия', 'Индонезия', 'Иордания', 'Ирак',
    'Иран', 'Ирландия', 'Исландия', 'Испания', 'Италия', 'Йемен', 'Казахстан', 'Каймановы острова', 'Камбоджа',
    'Камерун', 'Канада', 'Катар', 'Кения', 'Кипр', 'Кирибати', 'Китайская Народная Республика', 'Кокосовые острова',
    'Колумбия', 'Коморские острова', 'Конго', 'Корейская Народная Демократическая республика', 'Корея', 'Коста Рика',
    'Кот-дИвуар', 'Куба', 'Кувейт', 'Кыргызстан', 'Лаос', 'Латвия', 'Лесото', 'Либерия', 'Ливан', 'Ливия', 'Литва',
    'Лихтенштейн', 'Люксембург', 'Маврикий', 'Мавритания', 'Мадагаскар', 'Майотта', 'Макао (Китай)', 'Македония',
    'Малави', 'Малайзия', 'Мали', 'Мальдивские острова', 'Мальта', 'Марианские острова', 'Марокко', 'Мартиника',
    'Маршалловы острова', 'Мексика', 'Микронезия', 'Мозамбик', 'Молдова', 'Монако', 'Монголия', 'Монтсеррат',
    'Мьянма', 'на море', 'Намибия', 'Науру', 'Непал', 'Нигер', 'Нигерия', 'Нидерланды', 'Никарагуа', 'Ниуэ',
    'Новая Зеландия', 'Новая Каледония', 'Норвегия', 'Нормандские острова', 'Оман', 'ООН', 'остров Буве', 'остров Мэн',
    'остров Норфолк', 'остров Питкэрн', 'остров Рождества', 'остров Святой Елены', 'острова Валлис и Футуна',
    'острова Герда и МакДональда', 'острова Зеленого Мыса', 'острова Кука', 'острова Самоа',
    'острова Свалбард и Ян Майен', 'острова Туркс и Кайкос', 'Отдаленные Острова США', 'Пакистан',
    'Палау', 'Палестина', 'Панама', 'Папуа - Новая Гвинея', 'Парагвай', 'Перу', 'Польша', 'Португалия', 'Пуэрто-Рико',
    'Реюньон', 'Россия', 'Руанда', 'Румыния', 'Сальвадор', 'Сан-Марино', 'Сан-Томе и Принсипи', 'Саудовская Аравия',
    'Свазиленд', 'Северная Ирландия', 'Сейшельские острова', 'Сенегал', 'Сен-Пьер и Микелон', 'Сент-Винсент и Гренадины',
    'Сент-Китс и Невис', 'Сент-Люсия', 'Сингапур', 'Сирия', 'Словакия', 'Словения', 'Соединенные Штаты Америки',
    'Соломоновы острова', 'Сомали', 'Судан', 'Суринам', 'Сьерра-Леоне', 'Таджикистан', 'Тайвань (Республика Китай)',
    'Тайланд', 'Танзания', 'Того', 'Токелау', 'Тонга', 'Тринидад и Тобаго', 'Тувалу', 'Тунис', 'Туркменистан', 'Турция',
    'Уганда', 'Узбекистан', 'Украина', 'Уругвай', 'Уэльс', 'Фарерские острова', 'Фиджи', 'Филиппины', 'Финляндия',
    'Фолклендские (Мальвинские) острова', 'Франция', 'Французская Гвиана', 'Французская Полинезия',
    'Французские Южные Территории', 'Хорватия', 'Центральная Африканская Республика', 'Чад', 'Чехия', 'Чили',
    'Швейцария', 'Швеция', 'Шотландия', 'Шри Ланка', 'Эквадор', 'Экваториальная Гвинея', 'Эритрея', 'Эстония',
    'Эфиопия', 'ЮАР', 'Югославия', 'Южная Георгия и Южные Сандвичевы острова', 'Ямайка', 'Япония'
]

countries.each do |c|
    country = Country.create(name: c)
end