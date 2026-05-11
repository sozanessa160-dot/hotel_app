import 'package:flutter/material.dart';
import 'package:hotel_app/features/bookmark/presentation/page/bookmarl_page.dart';
import 'package:hotel_app/features/home/presentation/page/home_page.dart';
import 'package:hotel_app/features/home/presentation/widgets/custom_bottom_nav.dart';
import 'package:hotel_app/features/profile/presentation/page/profile_page.dart';
import 'package:hotel_app/features/schedule/presentation/page/schedule_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  // قائمة الصفحات التي ستظهر في المنتصف
  final List<Widget> _pages = [
    MyHomePage(), // index 0
    SchedulePage(), // index 1
    BookmarlPage(), // index 2
    ProfilePage(), // index 3
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // هنا السر: الـ body يتغير بتغير الـ index
      body: _pages[_currentIndex],
      bottomNavigationBar: CustomBottomNav(
        selectedIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
