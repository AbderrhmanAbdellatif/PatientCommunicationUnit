// Importing the required modules and widgets for the application.
// Custom UI widgets for the onboarding process.
import 'package:commdoctortarek/controller/onborarding_controller.dart';
import 'package:get/get.dart';

import '../widget/onborading/custombutton.dart';
import '../widget/onborading/customslider.dart';
import '../widget/onborading/dotcontroller.dart';

// Importing Flutter's Material Design library for basic styling and structure.
import 'package:flutter/material.dart';

// OnBoarding class is a StatelessWidget, meaning that its UI doesn't change over time.
class OnBoarding extends StatelessWidget {
  // Constructor to initialize the key property if provided.
  // The 'key' helps in identifying widgets efficiently.
  const OnBoarding({Key? key}) : super(key: key);

  // The build method to describe the part of the widget tree this widget controls.
  @override
  Widget build(BuildContext context) {
    // Instantiate and register the OnBoardingControllerImp (the concrete implementation)
    // with GetX dependency injection.
    print("Before putting the controller.");
    Get.put(OnBoardingControllerImp());
    print("After putting the controller.");


    return const Scaffold(
      // Background color set to white for the whole scaffold.
      backgroundColor: Colors.white,
      // Wrapping the body of scaffold in SafeArea to avoid layout within notches and insets.
      body: SafeArea(
        // Column widget is used to arrange its children vertically.
        child: Column(children: [
          // CustomSliderOnBoarding widget takes 3/4th (flex: 3) of the vertical space.
          Expanded(
            flex: 3,
            child: CustomSliderOnBoarding(),
          ),
          // Remaining 1/4th (flex: 1) of the space is taken by a column containing dots and button.
          Expanded(
            flex: 1,
            child: Column(
              children: [
                // CustomDotControllerOnBoarding is the dots usually used for swipe navigation indication.
                CustomDotControllerOnBoarding(),
                // Spacer is used to take up any available vertical space (flex: 2) between dots and button.
                Spacer(flex: 2),
                // CustomButtonOnBoarding is a button widget.
                CustomButtonOnBoarding()
              ],
            ),
          )
        ]),
      ),
    );
  }
}
