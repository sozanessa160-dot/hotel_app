// ... imports

import 'package:flutter/material.dart';
import 'package:hotel_app/features/details/presentation/widgets/custom_app_bar.dart';
import 'package:hotel_app/features/schedule/presentation/widgets/booking_list.dart';
import 'package:hotel_app/features/schedule/presentation/widgets/calendar_widget.dart';
import 'package:hotel_app/features/schedule/presentation/widgets/schedule_header.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        title: "Schedule",
        trailing: Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(Icons.settings, color: Colors.black, size: 20),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              CalendarWidget(),
              SizedBox(height: 25),
              ScheduleHeader(),
              SizedBox(height: 15),
              BookingList(),
            ],
          ),
        ),
      ),
    );
  }
}
