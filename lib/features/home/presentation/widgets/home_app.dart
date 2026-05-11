import 'package:flutter/material.dart';
import 'package:hotel_app/core/app_colors.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Current location',
                  style: TextStyle(color: AppColors.textGrey, fontSize: 10),
                ),
                const SizedBox(height: 6),
                Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      color: AppColors.primary,
                      size: 15,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      'Wallace, Australia',
                      style: TextStyle(
                        color: AppColors.textBlack,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade100),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(
                Icons.notifications_none,
                color: Colors.black,
                size: 23,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80);
}
