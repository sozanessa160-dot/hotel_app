import 'package:flutter/material.dart';
import 'package:hotel_app/core/app_colors.dart';
import 'package:hotel_app/features/home/presentation/widgets/category_list.dart';
import 'package:hotel_app/features/home/presentation/widgets/custom_bottom_nav.dart';
import 'package:hotel_app/features/home/presentation/widgets/home_app.dart';
import 'package:hotel_app/features/home/presentation/widgets/hotel_card.dart';
import 'package:hotel_app/features/home/presentation/widgets/popular_hotel.dart';
import 'package:hotel_app/features/home/presentation/widgets/section_header.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        backgroundColor: AppColors.background,
        appBar: HomeAppBar(),
        bottomNavigationBar: CustomBottomNav(),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              CategoryList(),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: SectionHeader(title: "Near Location", onPressed: () {}),
              ),
              const SizedBox(height: 6),
              SizedBox(
                height: 280,
                child: ListView.builder(
                  padding: const EdgeInsets.only(left: 16),
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) => HotelCard(),
                ),
              ),
              const SizedBox(height: 4),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: SectionHeader(title: "Popular Hotel", onPressed: () {}),
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 3,
                  itemBuilder: (context, index) => PopularHotelTile(),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
