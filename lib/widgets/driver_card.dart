import 'package:flutter/material.dart';

class DriverCard extends StatefulWidget {
  final String name;
  final double rating;
  final int orders;
  final String image;
  final bool isGreen;

  const DriverCard({
    super.key,
    required this.name,
    required this.rating,
    required this.orders,
    required this.image,
    required this.isGreen,
  });

  @override
  State<DriverCard> createState() => _DriverCardState();
}

class _DriverCardState extends State<DriverCard>
    with SingleTickerProviderStateMixin {
  double scale = 1.0;

  bool isFavorite = false; // ⭐ FAVORIT

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => setState(() => scale = 0.96),
      onTapUp: (_) => setState(() => scale = 1),
      onTapCancel: () => setState(() => scale = 1),

      child: AnimatedScale(
        scale: scale,
        duration: const Duration(milliseconds: 150),

        child: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: widget.isGreen ? const Color(0xffD9EACD) : Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),

          child: Row(
            children: [
              /// FOTO DRIVER
              ClipRRect(
                borderRadius: BorderRadius.circular(14),
                child: Image.asset(
                  widget.image,
                  width: 55,
                  height: 55,
                  fit: BoxFit.cover,
                ),
              ),

              const SizedBox(width: 10),

              /// NAMA + RATING
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.name,
                      style: const TextStyle(
                        fontSize: 14.5,
                        fontWeight: FontWeight.w700,
                      ),
                    ),

                    const SizedBox(height: 3),

                    Row(
                      children: [
                        const Icon(Icons.star,
                            size: 14, color: Colors.orange),
                        const SizedBox(width: 3),

                        Text(
                          widget.rating.toStringAsFixed(1),
                          style: TextStyle(
                            fontSize: 12.5,
                            color: Colors.grey.shade800,
                          ),
                        ),

                        const SizedBox(width: 6),

                        Text(
                          "• ${widget.orders} orders",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey.shade700,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),

              /// ❤️ TOMBOL FAVORIT
              IconButton(
                onPressed: () {
                  setState(() => isFavorite = !isFavorite);
                },
                icon: Icon(
                  isFavorite ? Icons.favorite : Icons.favorite_border,
                  color: isFavorite ? Colors.red : Colors.grey,
                  size: 22,
                ),
              ),

              /// TOMBOL PESAN
              SizedBox(
                height: 32,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff7CA968),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 6),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 0,
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Pesan",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
