// Import the required packages
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// Local imports for custom controller, colors, and data source
import '../../../controller/onborarding_controller.dart';
import '../../../core/constant/Appcolor.dart';
import '../../../data/datasource/static/static.dart';

// CustomDotControllerOnBoarding is a StatelessWidget which will render
// animated dots for the onboarding screen.
class CustomDotControllerOnBoarding extends StatelessWidget {
  // Constructor accepting an optional Key object
  const CustomDotControllerOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Use GetBuilder to rebuild this widget when the controller updates.
    return GetBuilder<OnBoardingControllerImp>(
      // Builder function that returns a row of dots.
      builder: (controller) => Row(
        // Center the row of dots horizontally
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Generate a list of AnimatedContainer widgets
          // The size of the list equals the number of onboarding pages
          ...List.generate(
            onBoardingList.length,
                (index) => AnimatedContainer(
              // Add a right margin for separation between dots
              margin: const EdgeInsets.only(right: 5),
              // Animate the container over 900 milliseconds
              duration: const Duration(milliseconds: 900),
              // Set the width of the dot based on whether it's the current page
              width: controller.currentPage == index ? 20 : 5,
              // The height is constant
              height: 6,
              // The dot's appearance is controlled by BoxDecoration
              decoration: BoxDecoration(
                // Use the primary color for the dot
                color: AppColor.primaryColor,
                // Rounded corners with a radius of 10
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
