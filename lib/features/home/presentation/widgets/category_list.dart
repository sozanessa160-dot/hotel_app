import 'package:flutter/material.dart';
import 'package:hotel_app/core/app_colors.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({super.key});
  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int selectedIndex = 0;
  final List<Map<String, dynamic>> categories = [
    {'title': 'Hotel', 'icon': Icons.hotel},
    {'title': 'Homestay', 'icon': Icons.home_work_outlined},
    {'title': 'Apart', 'icon': Icons.apartment},
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 37,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: categories.length,
        separatorBuilder: (context, index) => const SizedBox(width: 12),
        itemBuilder: (context, index) {
          bool isSelected = selectedIndex == index;
          return GestureDetector(
            onTap: () => setState(() => selectedIndex = index),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: isSelected ? AppColors.primary : Colors.grey.shade100,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: EdgeInsetsGeometry.all(0),
                child: Row(
                  children: [
                    Icon(
                      categories[index]['icon'],
                      color: isSelected ? AppColors.white : AppColors.textGrey,
                      size: 20,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      categories[index]['title'],
                      style: TextStyle(
                        color: isSelected
                            ? AppColors.white
                            : AppColors.textGrey,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
