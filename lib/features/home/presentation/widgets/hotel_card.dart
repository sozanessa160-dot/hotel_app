import 'package:flutter/material.dart';
import 'package:hotel_app/core/app_colors.dart';
import 'package:hotel_app/features/details/presentation/page/details_home.dart';

class HotelCard extends StatefulWidget {
  const HotelCard({super.key});

  @override
  State<HotelCard> createState() => _HotelCardState();
}

class _HotelCardState extends State<HotelCard> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => setState(() => isPressed = true),
      onTapUp: (_) => setState(() => isPressed = false),
      onTapCancel: () => setState(() => isPressed = false),

      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DetailPage()),
        );
      },

      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        width: 260,
        margin: const EdgeInsets.only(right: 16),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(12), //
          border: Border.all(
            color: isPressed ? Colors.black : Colors.transparent,
            width: 1,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.09),
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  child: Image.network(
                    'https://images.unsplash.com/photo-1520250497591-112f2f40a3f4',
                    height: 160,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                const Positioned(
                  top: 12,
                  right: 12,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 16,
                    child: Icon(Icons.favorite, color: Colors.red, size: 16),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "The Aston Vill Hotel",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(191, 0, 0, 0),
                          fontSize: 14,
                        ),
                      ),

                      Row(
                        children: const [
                          Icon(Icons.star, color: AppColors.orange, size: 20),
                          Text(" 5.0"),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 4),
                  const Text(
                    "Alice Springs NT0870, Australia",
                    style: TextStyle(color: AppColors.textGrey, fontSize: 12),
                  ),
                  const SizedBox(height: 14),
                  Row(
                    children: [
                      const Text(
                        "\$200.7 ",
                        style: TextStyle(
                          color: AppColors.primary,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const Text(
                        "/night",
                        style: TextStyle(
                          color: AppColors.textGrey,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
