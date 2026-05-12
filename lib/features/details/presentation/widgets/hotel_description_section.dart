import 'package:flutter/material.dart';
import 'package:hotel_app/core/app_colors.dart';
import 'preview_image_item.dart'; //

class HotelDescriptionSection extends StatelessWidget {
  const HotelDescriptionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "The Aston Vill Hotel",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: AppColors.textBlack,
              ),
            ),
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: "\$200.7",
                    style: TextStyle(
                      color: AppColors.primary,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: " /night",
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            Icon(Icons.location_on, color: AppColors.primary, size: 16),
            Text(
              " Alice Springs NT 0870, Australia",
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
        const SizedBox(height: 20),
        const Text(
          "Description",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        Text.rich(
          TextSpan(
            children: [
              const TextSpan(
                text:
                    "Aston Hotel, Alice Springs NT 0870, Australia is a modern hotel, elegant 5 star hotel overlooking the sea, perfect for a romantic, charming ",
                style: TextStyle(color: Colors.grey, height: 1.5, fontSize: 14),
              ),
              TextSpan(
                text: "Read More...",
                style: TextStyle(
                  color: AppColors.primary,
                  fontWeight: FontWeight.bold,
                  height: 1.5,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        const Text(
          "Preview",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            PreviewImageItem(imageUrl: "lib/assets/images/detil1.png"),
            PreviewImageItem(imageUrl: "lib/assets/images/detil2.png"),
            PreviewImageItem(imageUrl: "lib/assets/images/detil3.png"),
          ],
        ),
      ],
    );
  }
}
