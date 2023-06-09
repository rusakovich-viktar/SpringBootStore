CREATE SCHEMA IF NOT EXISTS "online-store";

INSERT INTO "online-store".categories (name)
VALUES ('Mobile phones'),
       ('Laptops'),
       ('Tablets'),
       ('Headphones'),
       ('Smart house'),
       ('Projectors');

INSERT INTO "online-store".users (id, username, email, password, name, surname, gender, birthday, registration_date,
                                  cart_id, activation_code, active, role)
VALUES (DEFAULT, 'admin', 'admin@admin.ru', '$2a$10$mQQ8TVER9kFTB5X5To.wp.Ueqsihc295W65dP4M74CYXrhKKjnuCO',
        null, null, null, null, '2023-07-10', null, null, true, 'ROLE_ADMIN'),
       (DEFAULT, 'test', 'test@test.ru', '$2a$10$Fytn5OW81ADk151DI01oAeo519r1X4n317p7OAm5YgGbDsQp90nyy',
        null, null, null, null, '2023-07-10', null, null, true, 'ROLE_USER');

INSERT INTO "online-store".products (name, description, price, category_id)
VALUES ('Смартфон Apple iPhone 11 128GB White', 'Экран:  6.1 " 828x1792 пикселей, IPS;
Процессор:  Apple A13 Bionic 2.65 ГГц;
Память:  ОЗУ 4 ГБ , 128 ГБ;
Формат SIM-карты:  Nano + eSIM;
Количество мегапикселей камеры:  12 Мп;
Емкость аккумулятора:  3110 мА·ч', 2099, 1),
       ('Смартфон Apple iPhone 14 Prо 128GB Gold', 'Экран:  6.1 " 1179х2556 пикселей, OLED
Процессор:  Apple A16 Bionic 3.46 ГГц
Память:  ОЗУ 6 ГБ , 128 ГБ
Формат SIM-карты:  Nano + eSIM
Количество мегапикселей камеры:  48 Мп
Емкость аккумулятора:  3200 мА·ч', 4599, 1),
       ('Смартфон Xiaomi Redmi 10 2022 4GB-128GB', 'Экран:  6.5 " 1080x2400 пикселей, IPS;
Процессор:  MediaTek Helio G88 2 ГГц;
Память:  ОЗУ 4 ГБ , 128 ГБ;
Формат SIM-карты:  Nano;
Количество мегапикселей камеры:  50 Мп;
Емкость аккумулятора:  5000 мА·ч', 629, 1),
       ('Смартфон Huawei nova 10 SE Mint Green', 'Экран:  6.67 " 1080x2400 пикселей, OLED;
Процессор:  Qualcomm Snapdragon 680 2.4 ГГц;
Память:  ОЗУ 8 ГБ , 128 ГБ;
Формат SIM-карты:  Nano;
Количество мегапикселей камеры:  108 Мп;
Емкость аккумулятора:  4500 мА·ч', 999, 1),
       ('Смартфон Samsung Galaxy A54 5G 8GB-256GB (фиолетовый)', 'Экран:  6.4 " 1080x2340 пикселей, AMOLED (Super AMOLED);
Процессор: Exynos 1380 2.4 ГГц;
Память: ОЗУ 8 ГБ , 256 ГБ;
Формат SIM-карты:  Nano;
Количество мегапикселей камеры: 50 Мп;
Емкость аккумулятора: 5000 мА·ч', 1729, 1);

INSERT INTO "online-store".products (name, description, price, category_id)
VALUES ('Игровой ноутбук Acer Nitro 5 AN517-55-56G5', 'Экран:  17.3 " 1920x1080 px, IPS 144 Гц;
Процессор: Intel Core-i5 12500H 12 -ядерный, 2.5 ГГц - 4.5 ГГц, Alder Lake;
Видеокарта: Дискретная NVIDIA GeForce RTX 3050 4 ГБ;
Память: ОЗУ 16 ГБ DDR4 , SSD 512 ГБ;
Версия операционной системы: Windows 11', 3599, 2),

       ('Ноутбук Apple Macbook Pro 13 M2 2022', 'Экран:  13.3 " 2560х1600 px, IPS 60 Гц, 500 кд/м2;
Процессор: Apple M2 M2 8 -ядерный, 3.2 ГГц - 3.2 ГГц, Apple Silicon;
Видеокарта: Встроенная Apple M2 GPU (10 ядер);
Память: ОЗУ 8 ГБ, SSD 512 ГБ;
Вес и габариты: 1.4 кг, 304.1 мм х 212.4 мм х 15.6 мм', 5493, 2),

       ('Ноутбук Asus Vivobook Go 15 E510KA-EJ315', 'Экран:  15.6 " 1920x1080 px, TN+Film 60 Гц, 220 кд/м2;
Процессор:  ntel Celeron N4500 2 -ядерный, 1.1 ГГц - 2.8 ГГц;
Видеокарта: Встроенная Intel HD Graphics;
Память: ОЗУ 8 ГБ DDR4 , SSD 256 ГБ;
Вес: 1.63 кг', 1099, 2),

       ('Игровой ноутбук MSI Cyborg 15 A12VE-260XBY', 'Экран:  15.6 " 1920x1080 px, IPS 144 Гц;
Процессор: Intel Core-i7 12650H 10 -ядерный, 2.3 ГГц - 4.7 ГГц;
Видеокарта: Дискретная NVIDIA GeForce RTX 4050 6 ГБ;
Память: ОЗУ 16 ГБ DDR5 , SSD 512 ГБ;
Вес: 1.98 кг', 4899, 2),

       ('Ноутбук 2-в-1 HP ENVY x360 Convert 15m-es1013dx', 'Экран:  15.6 " 1920x1080 px, IPS 60 Гц, 250 кд/м2;
Процессор: Intel Core-i5 1155G7 4 -ядерный, 2.5 ГГц - 4.5 ГГц, Tiger Lake;
Видеокарта: Встроенная Intel Iris Xe Graphics;
Память: ОЗУ 8 ГБ DDR4 , SSD 256 ГБ;
ОС: Windows 11;
Вес: 1.77 кг', 3999, 2);

INSERT INTO "online-store".products (name, description, price, category_id)
VALUES ('Планшет Apple iPad (2022) 64GB синий Wi-Fi A2696', 'Экран:  10.9 " IPS 2360x1640 пикс.;
Процессор: Apple A14 Bionic;
Версия операционной системы: iOS 16;
Память: ОЗУ 4 ГБ , 64 ГБ;
Количество ядер: 6; Год выхода модели
2022 год', 1899, 3),

       ('Планшет HONOR Pad 8 (HEY-W09) 6GB-128GB (лазурно-синий)', 'Экран:  12 " IPS 2000х1200 пикс.;
Процессор: Qualcomm Snapdragon 680;
Версия операционной системы: Android 12;
Память: ОЗУ 6 ГБ , 128 ГБ;
Количество ядер:  8;
Емкость аккумулятора:  7250 мАч', 999, 3),

       ('Планшет Samsung Galaxy Tab A8 LTE 64GB (SM-X205NZAESKZ) темно-серый', 'Экран:  10.5 " TFT 1920x1200 пикс.
Процессор: Unisoc Tiger T618;
Версия операционной системы:  Android 11;
Память: ОЗУ 4 ГБ , 64 ГБ;
Количество ядер:  8;
4G LTE: Да', 899, 3),


       ('Планшет Xiaomi Redmi Pad 4GB-128GB Moonlight Silver EU', 'Экран:  10.61 " IPS 2000х1200 пикс.
Процессор:  MediaTek Helio G99
Версия операционной системы:  Android 12 (MIUI 13.1)
Память:  ОЗУ 4 ГБ , 128 ГБ
Количество ядер:  8
Емкость аккумулятора:  8000 мАч', 799, 3);


INSERT INTO "online-store".products (name, description, price, category_id)
VALUES ('Беспроводные наушники HUAWEI Freebuds 5i T0014 черный гранит',
        'Система активного шумоподавления;
Версия Bluetooth – 5.2;
Защита от воды - IP54;
Время автономной работы - 7.5 ч один заряд наушников, с кейсом 28 ч;
Ёмкость аккумулятора (мАч) - 55;
Ёмкость зарядного чехла (мАч) - 410', 249, 4),

       ('Наушники Apple AirPods 3 (MPNY3AM)',
        'Apple AirPods 3 (MPNY3AM/A), беспроводные наушники с микрофоном, вставные, портативные, Bluetooth, быстрая зарядка, время работы 6 ч, с кейсом 30 ч.',
        689, 4),
       ('Наушники Oppo Enco Buds 2 (ЕТЕ41) черный',
        'Диапазон частот:  20 Гц - 20000 Гц;
Вид устройства:  Наушники с микрофоном;
Тип подключения:  Беспроводное (True wireless);
Тип разъемов:  USB Type-C (для зарядки);
Конструкция наушников:  Внутриканальные;
Время автономной работы:  7 ч',
        689, 4),
       ('Наушники XIAOMI Redmi Buds 4 Pro M2132E1 (BHR5896GL) черный',
        'Оснащены двумя динамическими излучателями с диафрагмой 10 и 6 мм. Три микрофона с технологией шумоподавления. Время работы 9 часов и до 36 часов с использованием зарядного кейса',
        249, 4);


INSERT INTO "online-store".products (name, description, price, category_id)
VALUES ('Умная колонка Яндекс.Станция Лайт (YNDX-00025G) мята',
        'Компактная и яркая умная колонка Яндекс Станция Лайт с голосовым помощником Алиса представлена в ярком цвете, с мощностью звучания 5 Вт, беспроводной связью Wi-Fi (2.4 – 5 ГГц) и Bluetooth 5.0 и возможностью встраивания в экосистему Умного Дома',
        169, 5),
       ('Новая Яндекс.Станция Мини с часами, модель YNDX-00020K (черный)',
        'Яндекс.Станция Мини - обновленная версия умной колонки с голосовым ассистентом Алиса, оснащена светодиодным дисплеем. На нем можно смотреть время, погоду и устанавливать таймер. Данная модель получила более громкий звук мощностью 10 Вт.',
        309, 5),
       ('Умная розетка Яндекс YNDX-0007 (белый)', 'Розетка, которая включается и выключается по вашему желанию, даже когда вас нет дома. Управление через приложение или с помощью голосового помощника Алисы. Макс. сила тока: 16 А
Макс. нагрузка: 3680 Вт', 45, 5),
       ('Умная лампочка светодиодная Xiaomi Mi Smart LED Bulb Essential (White and Color) GPX4021GL',
        'Умная лампа с мягким с 16 млн цветов для теплого, холодного света. Управляется через приложение, а также с помощью голосовых команд. Совместима с большинством экосистем "Умный дом". 256 уровней яркости, настраиваемое время включения / отключения.',
        49, 5),
       ('Датчик температуры и влажности Xiaomi Mi Temperature and Humidity Monitor 2',
        'Датчик измеряет температуру и влажность воздуха у вас дома. Все показания видны на маленьком экранчике. У датчика есть Bluetooth. С помощью него датчик синхронизируется с Mi Home на смартфоне, где рисуются красивые графики погоды в доме',
        49, 5),
       ('Датчик протечки SLS Zigbee SLS-SLI-01ZBWH',
        'Датчик моментально предупредит сигналом через мобильное приложение даже в случае попадания пары капель на корпус. В датчике используется протокол ZigBee. Он разработан как аналог Wi-Fi и Bluetooth специально для систем Умного дома',
        56, 5);

INSERT INTO "online-store".products (name, description, price, category_id)
VALUES ('Проектор Rombica Ray Eclipse (MPR-L730) черный',
        'Технология проецирования:  LCD;
Источник света:  Светодиоды;
Ресурс источника света:  30000 часов;
Физическое разрешение:  1280х720;
Соотношение сторон:  16:9',
        429, 6),

       ('Проектор Samsung The Freestyle LSP3B (SP-LSP3BLAXRU)',
        'Технология проецирования:  DLP;
Источник света:  Лазер;
Ресурс источника света:  20000 часов;
Физическое разрешение:  1920x1080',
        2990, 6),
       ('Проектор Wanbo T4',
        'Технология проецирования:  LCD;
Источник света:  Светодиоды;
Ресурс источника света:  20000 часов;
Физическое разрешение:  1920x1080;
Соотношение сторон:  16:9',
        699, 6),
       ('Проектор BYINTEK K16 Pro',
        'Технология проецирования:  LCD;
Источник света:  Лазер;
Ресурс источника света:  30000 часов;
Физическое разрешение:  1920x1080;
Соотношение сторон:  16:9',
        649, 6)
;

