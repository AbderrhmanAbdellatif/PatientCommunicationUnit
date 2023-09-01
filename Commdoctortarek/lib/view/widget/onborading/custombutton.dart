import 'package:commdoctortarek/core/constant/Appcolor.dart';
import 'package:flutter/material.dart';

// Define a StatelessWidget for a custom button on a onboarding screen
class CustomButtonOnBoarding extends StatelessWidget {
  // Constructor for the class, which takes an optional key
  const CustomButtonOnBoarding({Key? key}) : super(key: key);

  // Define the build method which returns the widget
  @override
  Widget build(BuildContext context) {
    // Return a Container widget to house the button
    return Container(
      // Set margin at the bottom to give it space from other widgets
      margin: const EdgeInsets.only(bottom: 30),
      // Set the height of the container to 40 pixels
      height: 40,
      // Use MaterialButton as the child of the container
      child: MaterialButton(
        // Set horizontal padding to 100 and vertical padding to 0
        padding: const EdgeInsets.symmetric(horizontal: 100),
        // Text color for the button's text is white
        textColor: Colors.white,
        // Define an empty function for onPressed, this should be modified to perform an action
        onPressed: () {},
        // Set the background color of the button to primaryColor
        color: AppColor.primaryColor,
        // Define the child widget for MaterialButton as Text with value "Continue"
        child: const Text("Continue"),
      ),
    );
  }
}
