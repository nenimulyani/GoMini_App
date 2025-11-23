import 'package:flutter/material.dart';

class PromoSlider extends StatefulWidget {
  const PromoSlider({super.key});

  @override
  State<PromoSlider> createState() => _PromoSliderState();
}

class _PromoSliderState extends State<PromoSlider> {
  final PageController _controller = PageController(viewportFraction: 0.82);
  int currentPage = 0;

  List<Map<String, String>> promo = [
    {"title": "Vocher MiniCar 20%", "img": "assets/image/promo1.jpg"},
    {"title": "Gratis Ongkir 3x", "img": "assets/image/promo2.jpg"},
    {"title": "Diskon MiniFood 30%", "img": "assets/image/promo3.jpg"},
    {"title": "Voucher MiniRide 20% ", "img": "assets/image/promo4.jpg"},
    {"title": "Gratis Ongkir 3x", "img": "assets/image/promo5.jpg"},
    {"title": "Diskon Pengiriman 30%", "img": "assets/image/promo6.jpg"},
    {"title": "Voucher MiniRide 50% ", "img": "assets/image/promo7.jpg"},
  ];

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 200), autoplay);
  }

  void autoplay() async {
    while (mounted) {
      await Future.delayed(const Duration(seconds: 3));
      if (!mounted) return;

      currentPage++;
      if (currentPage >= promo.length) currentPage = 0;

      _controller.animateToPage(
        currentPage,
        duration: const Duration(milliseconds: 700),
        curve: Curves.easeInOutCubic,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // SLIDER
        SizedBox(
          height: 180,
          child: PageView.builder(
            controller: _controller,
            itemCount: promo.length,
            onPageChanged: (v) => setState(() => currentPage = v),
            itemBuilder: (context, i) {
              double scale = currentPage == i ? 1 : 0.92;

              return TweenAnimationBuilder(
                tween: Tween<double>(begin: scale, end: scale),
                duration: const Duration(milliseconds: 350),
                builder: (context, value, child) {
                  return Transform.scale(
                    scale: value,
                    child: promoCard(promo[i]["title"]!, promo[i]["img"]!),
                  );
                },
              );
            },
          ),
        ),

        const SizedBox(height: 10),

        // DOT INDICATOR
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            promo.length,
            (i) => AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              margin: const EdgeInsets.symmetric(horizontal: 4),
              width: currentPage == i ? 22 : 8,
              height: 8,
              decoration: BoxDecoration(
                color: currentPage == i
                    ? const Color(0xff7CA968)
                    : const Color(0xffA9BFA1),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        )
      ],
    );
  }
}

// CARD PROMO
Widget promoCard(String title, String img) {
  return Container(
    margin: const EdgeInsets.only(right: 12),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(22),
      image: DecorationImage(
        image: AssetImage(img),
        fit: BoxFit.cover,
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.15),
          blurRadius: 10,
          offset: const Offset(0, 4),
        )
      ],
    ),
    child: Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        gradient: LinearGradient(
          colors: [
            Colors.black.withOpacity(0.55),
            Colors.transparent,
          ],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        ),
      ),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    ),
  );
}
