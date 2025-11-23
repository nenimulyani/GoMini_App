import 'package:flutter/material.dart';

import '../widgets/header.dart';
import '../widgets/search_bar.dart';
import '../widgets/category_menu.dart';
import '../widgets/driver_card.dart';
import '../widgets/bottom_nav.dart';
import '../widgets/promo_slider.dart';
import '../widgets/app_drawer.dart';
import '../widgets/food_card.dart';
import '../widgets/promo_hari_ini.dart';
import '../widgets/promo_banner.dart';
import '../widgets/promo_small_card.dart';


// DATA DRIVER MINI RIDE

List<Map<String, dynamic>> miniRideDrivers = [
  {"name": "Aulia Rahma", "rating": 4.9, "orders": 320, "image": "assets/image/driver1.jpg"},
  {"name": "Nadila Putri", "rating": 4.8, "orders": 295, "image": "assets/image/driver1.jpg"},
  {"name": "Meyssa Nabila", "rating": 5.0, "orders": 410, "image": "assets/image/driver1.jpg"},
  {"name": "Azelia Zahra", "rating": 4.7, "orders": 250, "image": "assets/image/driver3.jpg"},
  {"name": "Safira Khairun", "rating": 4.9, "orders": 380, "image": "assets/image/driver3.jpg"},
  {"name": "Nayla Aurelia", "rating": 4.6, "orders": 210, "image": "assets/image/driver3.jpg"},
  {"name": "Intan Melani", "rating": 4.8, "orders": 330, "image": "assets/image/driver1.jpg"},
  {"name": "Fadhila Anjani", "rating": 4.9, "orders": 360, "image": "assets/image/driver1.jpg"},
  {"name": "Shakira Putri", "rating": 4.8, "orders": 290, "image": "assets/image/driver1.jpg"},
  {"name": "Keisya Amelia", "rating": 4.7, "orders": 240, "image": "assets/image/driver3.jpg"},
];


// DATA DRIVER MINI CAR

List<Map<String, dynamic>> miniCarDrivers = [
  {"name": "Nabila Azzahra", "rating": 4.9, "orders": 350, "image": "assets/image/driver2.jpg"},
  {"name": "Cindy Almeera", "rating": 4.7, "orders": 280, "image": "assets/image/driver2.jpg"},
  {"name": "Rizka Amelia", "rating": 4.8, "orders": 310, "image": "assets/image/driver2.jpg"},
  {"name": "Vania Putri", "rating": 4.6, "orders": 220, "image": "assets/image/driver2.jpg"},
  {"name": "Cikita Maharani", "rating": 5.0, "orders": 450, "image": "assets/image/driver2.jpg"},
  {"name": "Delia Amanda", "rating": 4.8, "orders": 330, "image": "assets/image/driver2.jpg"},
  {"name": "Indira Cahya", "rating": 4.9, "orders": 390, "image": "assets/image/driver2.jpg"},
  {"name": "Alesha Safitri", "rating": 4.6, "orders": 225, "image": "assets/image/driver2.jpg"},
  {"name": "Zhavira Salsabila", "rating": 4.8, "orders": 305, "image": "assets/image/driver2.jpg"},
  {"name": "Talitha Nur", "rating": 4.7, "orders": 260, "image": "assets/image/driver2.jpg"},
];


// DATA DRIVER MINI SEND

List<Map<String, dynamic>> miniSendDrivers = [
  {"name": "Nadia Farah", "rating": 4.8, "orders": 420, "image": "assets/image/driver4.jpg"},
  {"name": "Kezia Naura", "rating": 4.9, "orders": 380, "image": "assets/image/driver4.jpg"},
  {"name": "Mira Laras", "rating": 5.0, "orders": 520, "image": "assets/image/driver4.jpg"},
  {"name": "Aurora Sari", "rating": 4.7, "orders": 260, "image": "assets/image/driver4.jpg"},
  {"name": "Zara Anindya", "rating": 4.8, "orders": 340, "image": "assets/image/driver4.jpg"},
  {"name": "Syifa Medina", "rating": 4.9, "orders": 400, "image": "assets/image/driver4.jpg"},
  {"name": "Rania Putri", "rating": 4.6, "orders": 210, "image": "assets/image/driver4.jpg"},
  {"name": "Eva Maharani", "rating": 4.8, "orders": 325, "image": "assets/image/driver4.jpg"},
  {"name": "Bella Chelsea", "rating": 4.7, "orders": 275, "image": "assets/image/driver4.jpg"},
  {"name": "Carissa Ayu", "rating": 4.9, "orders": 360, "image": "assets/image/driver4.jpg"},
];

// DATA MINI FOOD

List<Map<String, dynamic>> foodList = [
  {"name": "Classic Beef Burger", "image": "assets/image/food_burger.png", "price": "25.000", "rating": 4.8},
  {"name": "Chicken Crispy Bento", "image": "assets/image/food_bento.png", "price": "32.000", "rating": 4.9},
  {"name": "Donut Chocolate", "image": "assets/image/food_donut.png", "price": "12.000", "rating": 4.7},
  {"name": "Spicy Ramen Bowl", "image": "assets/image/food_ramen.jpg", "price": "28.000", "rating": 4.8},
  {"name": "Fresh Fruit Salad", "image": "assets/image/food_salad.jpg", "price": "18.000", "rating": 4.6},
  {"name": "French Fries Large", "image": "assets/image/food_fries.jpg", "price": "15.000", "rating": 4.7},
  {"name": "Chicken Teriyaki Rice", "image": "assets/image/food_teriyaki.jpg", "price": "30.000", "rating": 4.9},
  {"name": "Matcha Latte Cup", "image": "assets/image/food_macha.jpg", "price": "20.000", "rating": 4.8},
  {"name": "Tiramisu Slice", "image": "assets/image/food_tiramisu.jpg", "price": "22.000", "rating": 4.7},
  {"name": "Sushi Roll Set", "image": "assets/image/food_sushi.jpg", "price": "35.000", "rating": 4.9},
];

// DATA MINI BEAUTY

List<Map<String, dynamic>> beautyList = [
  {"name": "Makeup Natural", "price": "50.000", "image": "assets/image/beauty1.jpg", "rating": 4.9},
  {"name": "Hair Styling", "price": "40.000", "image": "assets/image/beauty2.jpg", "rating": 4.8},
  {"name": "Nail Art", "price": "35.000", "image": "assets/image/beauty3.jpg", "rating": 4.7},
  {"name": "Facial Glow", "price": "55.000", "image": "assets/image/beauty4.jpg", "rating": 4.9},
  {"name": "Body Scrub", "price": "60.000", "image": "assets/image/beauty5.jpg", "rating": 4.8},
];


// DATA MINI CLEAN

List<Map<String, dynamic>> cleanList = [
  {"name": "Bersih Kamar", "price": "30.000", "image": "assets/image/clean.jpg", "rating": 4.7},
  {"name": "Cuci Rumah", "price": "70.000", "image": "assets/image/clean.jpg", "rating": 4.9},
  {"name": "Cuci Kamar Mandi", "price": "40.000", "image": "assets/image/clean.jpg", "rating": 4.8},
  {"name": "Cuci Dapur", "price": "45.000", "image": "assets/image/clean.jpg", "rating": 4.6},
  {"name": "Cuci Lemari", "price": "25.000", "image": "assets/image/clean.jpg", "rating": 4.5},
];


// DATA MINI SHOP

List<Map<String, dynamic>> shopList = [
  {"name": "Face Wash", "price": "25.000", "image": "assets/image/shop1.jpg", "rating": 4.6},
  {"name": "Masker Wajah", "price": "10.000", "image": "assets/image/shop2.jpg", "rating": 4.7},
  {"name": "Minyak Wangi", "price": "35.000", "image": "assets/image/shop3.jpg", "rating": 4.8},
  {"name": "Handbody", "price": "20.000", "image": "assets/image/shop4.jpg", "rating": 4.5},
  {"name": "Tisu Basah", "price": "8.000", "image": "assets/image/shop5.jpg", "rating": 4.4},
];


// DATA MINI PET

List<Map<String, dynamic>> petList = [
  {"name": "Grooming Kucing", "price": "65.000", "image": "assets/image/pet1.jpg", "rating": 4.9},
  {"name": "Grooming Anjing", "price": "70.000", "image": "assets/image/pet2.jpg", "rating": 4.8},
  {"name": "Antar Jemput Hewan", "price": "30.000", "image": "assets/image/pet3.jpg", "rating": 4.7},
  {"name": "Pet Sitter (1 Jam)", "price": "15.000", "image": "assets/image/pet4.jpg", "rating": 4.6},
  {"name": "Mandi Kucing Premium", "price": "50.000", "image": "assets/image/pet5.jpg", "rating": 4.9},
];


// HOME PAGE

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedCategory = -1;
  String searchText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawer(),
      backgroundColor: const Color(0xffE8F0D3),
      bottomNavigationBar: const BottomNav(),

      body: SafeArea(
        child: Column(
          children: [
            // Jika kategori dipilih → tampil tombol balik
            if (selectedCategory != -1) 
              Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back, size: 26),
                    onPressed: () {
                      setState(() {
                        selectedCategory = -1; // BALIK KE HALAMAN PROMO
                      });
                    },
                  ),
                  const Text(
                    "Kembali",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              )
            else ...[
              const Header(),
              const SizedBox(height: 10),
              CustomSearchBar(
                onChanged: (value) {
                  print(value);
                },
              ),
              const SizedBox(height: 15),
            ],

            CategoryMenu(
              selectedIndex: selectedCategory,
              onSelected: (value) {
                setState(() => selectedCategory = value);
              },
            ),

            const SizedBox(height: 15),

            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Column(
                  children: [

                   
                    // HALAMAN UTAMA PROMO
                    
                    if (selectedCategory == -1) ...[
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 4, bottom: 8),
                          child: Text(
                            "Promo yang wajib dicek",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Colors.green.shade800,
                            ),
                          ),
                        ),
                      ),

                      const PromoSlider(),
                      const SizedBox(height: 20),

                      const PromoHariIni(),
                      const SizedBox(height: 20),

                      // Banner Landscape
                      PromoBanner(
                        image: "assets/image/iklan2.jpg",
                        title: "Skincare Basic Promo",
                        subtitle: "Diskon spesial, cuma hari ini!",
                      ),
                      PromoBanner(
                        image: "assets/image/iklan5.jpg",
                        title: "Home Cleaning Service",
                        subtitle: "Bersih rumah lebih hemat!",
                      ),
                      const SizedBox(height: 10),

                      // Baris Teks + Button
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Jangan ketinggalan promo ini!",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.green.shade800,
                                  ),
                                ),
                                const SizedBox(height: 6),
                                Text(
                                  "Belanja Hemat, Dapet Cashback lagi!",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.green.shade700,
                                  ),
                                ),
                              ],
                            ),
                            TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                backgroundColor: const Color(0xff7CA968),
                                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              child: const Text(
                                "Lihat Semua",
                                style: TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.w600),
                              ),
                            ),
                          ],
                        ),
                      ),

                      // List Horizontal Kartu Kecil
                      SizedBox(
                        height: 220,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: const [
                            PromoSmallCard(
                              image: "assets/image/iklan1.jpg",
                              title: "Classic Burger Promo",
                            ),
                            PromoSmallCard(
                              image: "assets/image/iklan3.jpg",
                              title: "Perawatan Kulit Organik - 20% OFF",
                            ),
                            PromoSmallCard(
                              image: "assets/image/iklan4.jpg",
                              title: "Grooming Kucing",
                            ),
                            PromoSmallCard(
                              image: "assets/image/iklan6.jpg",
                              title: "Nail Salon Manicure and Pedicure",
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],

                   
                    // MINI RIDE SAMPAI MINI PET

                    // MINI RIDE
                    if (selectedCategory == 0)
                      ...miniRideDrivers
                          .where((item) =>
                              item["name"].toString().toLowerCase().contains(searchText))
                          .map(
                            (item) => Column(
                              children: [
                                DriverCard(
                                  name: item["name"],
                                  rating: item["rating"],
                                  orders: item["orders"],
                                  image: item["image"],
                                  isGreen: miniRideDrivers.indexOf(item) % 2 == 0,
                                ),
                                const SizedBox(height: 15),
                              ],
                            ),
                          ),

                    // MINI CAR
                    if (selectedCategory == 1)
                      ...miniCarDrivers
                          .where((item) =>
                              item["name"].toString().toLowerCase().contains(searchText))
                          .map(
                            (item) => Column(
                              children: [
                                DriverCard(
                                  name: item["name"],
                                  rating: item["rating"],
                                  orders: item["orders"],
                                  image: item["image"],
                                  isGreen: miniCarDrivers.indexOf(item) % 2 == 0,
                                ),
                                const SizedBox(height: 15),
                              ],
                            ),
                          ),

                    // MINI SEND
                    if (selectedCategory == 2)
                      ...miniSendDrivers
                          .where((item) =>
                              item["name"].toString().toLowerCase().contains(searchText))
                          .map(
                            (item) => Column(
                              children: [
                                DriverCard(
                                  name: item["name"],
                                  rating: item["rating"],
                                  orders: item["orders"],
                                  image: item["image"],
                                  isGreen: miniSendDrivers.indexOf(item) % 2 == 0,
                                ),
                                const SizedBox(height: 15),
                              ],
                            ),
                          ),

                    // MINI FOOD
                    if (selectedCategory == 3)
                      ...foodList
                          .where((item) =>
                              item["name"].toString().toLowerCase().contains(searchText))
                          .map(
                            (item) => Column(
                              children: [
                                FoodCard(
                                  name: item["name"],
                                  price: item["price"],
                                  image: item["image"],
                                  rating: item["rating"],
                                  isGreen: foodList.indexOf(item) % 2 == 0,
                                ),
                                const SizedBox(height: 15),
                              ],
                            ),
                          ),

                    // MINI BEAUTY
                    if (selectedCategory == 4)
                      ...beautyList
                          .where((item) =>
                              item["name"].toLowerCase().contains(searchText.toLowerCase()))
                          .map(
                            (item) => Column(
                              children: [
                                FoodCard(
                                  name: item["name"],
                                  price: item["price"],
                                  image: item["image"],
                                  rating: item["rating"],
                                  isGreen: beautyList.indexOf(item) % 2 == 0,
                                ),
                                const SizedBox(height: 15),
                              ],
                            ),
                          )
                          .toList(),

                    // MINI CLEAN
                    if (selectedCategory == 5)
                      ...cleanList
                          .where((item) =>
                              item["name"].toLowerCase().contains(searchText.toLowerCase()))
                          .map(
                            (item) => Column(
                              children: [
                                FoodCard(
                                  name: item["name"],
                                  price: item["price"],
                                  image: item["image"],
                                  rating: item["rating"],
                                  isGreen: cleanList.indexOf(item) % 2 == 0,
                                ),
                                const SizedBox(height: 15),
                              ],
                            ),
                          )
                          .toList(),

                    // MINI SHOP
                    if (selectedCategory == 6)
                      ...shopList
                          .where((item) =>
                              item["name"].toLowerCase().contains(searchText.toLowerCase()))
                          .map(
                            (item) => Column(
                              children: [
                                FoodCard(
                                  name: item["name"],
                                  price: item["price"],
                                  image: item["image"],
                                  rating: item["rating"],
                                  isGreen: shopList.indexOf(item) % 2 == 0,
                                ),
                                const SizedBox(height: 15),
                              ],
                            ),
                          )
                          .toList(),

                    // MINI PET
                    if (selectedCategory == 7)
                      ...petList
                          .where((item) =>
                              item["name"].toLowerCase().contains(searchText.toLowerCase()))
                          .map(
                            (item) => Column(
                              children: [
                                FoodCard(
                                  name: item["name"],
                                  price: item["price"],
                                  image: item["image"],
                                  rating: item["rating"],
                                  isGreen: petList.indexOf(item) % 2 == 0,
                                ),
                                const SizedBox(height: 15),
                              ],
                            ),
                          )
                          .toList(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// MENU SAMPING (DRAWER)

class MySideMenu extends StatelessWidget {
  const MySideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xff7CA968),
      child: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const SizedBox(height: 25),

          const CircleAvatar(
            radius: 35,
            backgroundImage: AssetImage("assets/image/profile.jpg"),
          ),

          const SizedBox(height: 15),

          const Text(
            "Hi, Neni Mulyani",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 30),

          menuItem(Icons.home, "Home"),
          menuItem(Icons.local_offer, "Best Deal"),
          menuItem(Icons.history, "Order History"),
          menuItem(Icons.notifications, "Notifikasi"),
          menuItem(Icons.delivery_dining, "Lacak Pesanan"),
          menuItem(Icons.help_outline, "Pusat Bantuan"),

          const SizedBox(height: 40),
          menuItem(Icons.logout, "Logout"),
        ],
      ),
    );
  }

  Widget menuItem(IconData icon, String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        children: [
          Icon(icon, color: Colors.white, size: 26),
          const SizedBox(width: 15),
          Text(
            title,
            style: const TextStyle(color: Colors.white, fontSize: 17),
          ),
        ],
      ),
    );
  }
}
