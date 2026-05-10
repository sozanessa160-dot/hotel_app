import 'package:flutter/material.dart';
import 'package:hotel_app/core/app_colors.dart';
import 'package:hotel_app/features/details/presentation/widgets/custom_app_bar.dart';
import 'package:hotel_app/features/details/presentation/widgets/facility_row.dart';
import 'package:hotel_app/features/details/presentation/widgets/hotel_description_section.dart';
import 'package:hotel_app/features/details/presentation/widgets/hotel_main_image.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      // تأكد أن اسم الكلاس هنا يطابق ما هو موجود في ملف الـ AppBar المنفصل
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
          // قمنا بحذف كلمة const من هنا
          children: [
            HotelMainImage(), // حذفنا const
            SizedBox(height: 20),
            FacilityRow(), // حذفنا const
            SizedBox(height: 20),
            HotelDescriptionSection(), // حذفنا const
            SizedBox(height: 30),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        ),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primary,
            minimumSize: Size(double.infinity, 55),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            elevation: 0,
          ),
          child: Text(
            "Booking Now",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
