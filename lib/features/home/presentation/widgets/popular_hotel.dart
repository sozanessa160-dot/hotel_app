import 'package:flutter/material.dart';
import 'package:hotel_app/core/app_colors.dart';

class PopularHotelTile extends StatelessWidget {
  PopularHotelTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
              'https://images.unsplash.com/photo-1542314831-068cd1dbfeeb',
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
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
                Text(
                  "Wilora NT 0870, Australia",
                  style: TextStyle(color: AppColors.textGrey, fontSize: 12),
                ),
                const SizedBox(height: 8),
                Text(
                  "\$165.3 /night",
                  style: TextStyle(
                    color: AppColors.primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
