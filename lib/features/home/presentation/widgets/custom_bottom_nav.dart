import 'package:flutter/material.dart';
import 'package:hotel_app/features/home/presentation/widgets/nav_item.dart';

class CustomBottomNav extends StatefulWidget {
  final int selectedIndex;
  final Function(int) onTap;

  const CustomBottomNav({
    super.key,
    required this.selectedIndex,
    required this.onTap,
  });

  @override
  State<CustomBottomNav> createState() => _CustomBottomNavState();
}

class _CustomBottomNavState extends State<CustomBottomNav> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(top: BorderSide(color: Colors.grey.shade200)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          NavItem(
            icon: Icons.home_filled,
            label: "Home",
            index: 0,
            selectedIndex: widget.selectedIndex,
            onTap: widget.onTap,
          ),

          NavItem(
            icon: Icons.calendar_month,
            label: "Schedule",
            index: 1,
            selectedIndex: widget.selectedIndex,
            onTap: widget.onTap,
          ),

          NavItem(
            icon: Icons.bookmark_outline,
            label: "Bookmark",
            index: 2,
            selectedIndex: widget.selectedIndex,
            onTap: widget.onTap,
          ),

          NavItem(
            icon: Icons.person_outline,
            label: "Profile",
            index: 3,
            selectedIndex: widget.selectedIndex,
            onTap: widget.onTap,
          ),
        ],
      ),
    );
  }
}
