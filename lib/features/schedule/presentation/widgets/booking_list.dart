import 'package:flutter/material.dart';
import 'package:hotel_app/features/schedule/presentation/widgets/booking_card.dart';

class BookingList extends StatelessWidget {
  const BookingList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> bookings = [
      {
        "name": "The Aston Vill Hotel",
        "date": "19 March 2024",
        "price": "200.7",
        "image": "lib/assets/images/sch1.png",
      },
      {
        "name": "Golden Palace Hotel",
        "date": "25 March 2024",
        "price": "175.9",
        "image": "lib/assets/images/sch2.png",
      },
    ];

    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: bookings.length,
      itemBuilder: (context, index) {
        final item = bookings[index];
        return BookingCard(
          hotelName: item['name'] ?? '',
          date: item['date'] ?? '',
          price: item['price'] ?? '',
          imageUrl: item['image'] ?? '',
        );
      },
    );
  }
}
