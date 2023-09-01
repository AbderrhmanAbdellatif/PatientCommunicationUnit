import 'package:flutter/material.dart';

import '../../../core/constant/Appcolor.dart';
import '../../../data/datasource/static/static.dart';

// CustomDotControllerOnBoarding is a stateless widget that returns a row
// of animated dots based on the length of the onBoardingList.
class CustomDotControllerOnBoarding extends StatelessWidget {
  const CustomDotControllerOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Generate the list of AnimatedContainers once
    final List<Widget> dots = List.generate(
      onBoardingList.length,
          (index) => _buildDot(), // Function to create each dot
    );

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: dots,
    );
  }

  // Function to build a single animated dot
  Widget _buildDot() {
    return AnimatedContainer(
      margin: const EdgeInsets.only(right: 5),
      duration: const Duration(milliseconds: 900),
      width: 6,
      height: 6,
      decoration: BoxDecoration(
        color: AppColor.primaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
