import 'package:flutter/material.dart';

class HotelMainImage extends StatelessWidget {
  const HotelMainImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            'https://images.unsplash.com/photo-1566073771259-6a8506099945',
            height: 216,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 15,
          right: 15,
          child: Container(
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: const Icon(Icons.favorite, color: Colors.red, size: 20),
          ),
        ),
      ],
    );
  }
}
