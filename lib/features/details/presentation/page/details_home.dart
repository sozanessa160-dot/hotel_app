import 'package:flutter/material.dart';
import 'package:hotel_app/core/app_colors.dart';
import 'package:hotel_app/features/details/presentation/widgets/custom_app_bar.dart';
import 'package:hotel_app/features/details/presentation/widgets/facility_row.dart';
import 'package:hotel_app/features/details/presentation/widgets/hotel_description_section.dart';
import 'package:hotel_app/features/details/presentation/widgets/hotel_main_image.dart';
import 'package:hotel_app/features/details/presentation/widgets/bottom_nav.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        backgroundColor: AppColors.background,
        appBar: CustomAppBar(
          title: "Detail",
          trailing: Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(Icons.more_horiz, color: Colors.black, size: 20),
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              HotelMainImage(),
              SizedBox(height: 20),
              FacilityRow(),
              SizedBox(height: 20),
              HotelDescriptionSection(),
              SizedBox(height: 30),
            ],
          ),
        ),
        bottomNavigationBar: BottomNav(),
      ),
    );
  }
}
