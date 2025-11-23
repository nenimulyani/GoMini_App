import 'package:flutter/material.dart';

class CategoryMenu extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onSelected;

  const CategoryMenu({
    super.key,
    required this.selectedIndex,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    double iconSize = width * 0.055;
    double textSize = width * 0.027;
    double paddingCard = width * 0.015;
    double circlePadding = width * 0.012;
    double cornerRadius = width * 0.025;

    List<String> names = [
      "MiniRide",
      "MiniCar",
      "MiniSend",
      "MiniFood",
      "MiniBeauty",
      "MiniClean",
      "MiniShop",
      "MiniPet"
    ];

    List<IconData> icons = [
      Icons.pedal_bike,
      Icons.directions_car,
      Icons.local_shipping,
      Icons.fastfood,
      Icons.brush,
      Icons.cleaning_services,
      Icons.shopping_bag,
      Icons.pets,
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16), // JARAK KIRI-KANAN
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: names.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: 1.05, // card lebih rapi
        ),
        itemBuilder: (context, i) {
          bool active = selectedIndex == i;

          return GestureDetector(
            onTap: () => onSelected(i),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              padding: EdgeInsets.all(paddingCard),
              decoration: BoxDecoration(
                color: active ? const Color(0xff7CA968) : Colors.white,
                borderRadius: BorderRadius.circular(cornerRadius),
                border: Border.all(
                  color: active ? Colors.transparent : Colors.grey.shade300,
                  width: 1,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.06),
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(circlePadding),
                    decoration: BoxDecoration(
                      color: active ? Colors.white : const Color(0xffE8F0D3),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      icons[i],
                      size: iconSize,
                      color: active
                          ? const Color(0xff7CA968)
                          : Colors.green.shade700,
                    ),
                  ),

                  SizedBox(height: width * 0.012),

                  Text(
                    names[i],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: textSize,
                      fontWeight: FontWeight.w600,
                      color: active ? Colors.white : Colors.green.shade700,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
