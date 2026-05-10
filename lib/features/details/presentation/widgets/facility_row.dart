import 'package:flutter/material.dart';
import 'custom_facility_chip.dart'; //

class FacilityRow extends StatelessWidget {
  const FacilityRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomFacilityChip(icon: Icons.wifi, label: "Free Wifi"),
        CustomFacilityChip(icon: Icons.coffee, label: "Free Breakfast"),
        CustomFacilityChip(icon: Icons.star, label: "5.0", isRating: true),
      ],
    );
  }
}
