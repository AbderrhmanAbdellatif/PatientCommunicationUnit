// Importing GetX library to use GetxController for state management.
import 'package:get/get.dart';

// Defining an abstract class OnBoardingController that extends GetxController.
// This abstract class sets the blueprint for several methods.
abstract class OnBoardingController extends GetxController {
  void next();
  void onPageChanged(int pageNumber);
  void skipToLast();
  void goToPrevious();
  void completeOnBoarding();
  void resetOnBoarding();
}

// Implementing the OnBoardingController class to provide actual functionality.
class OnBoardingControllerImp extends OnBoardingController {
  // Using RxInt to manage the state of the current page number.
  var currentPage = 0.obs;
  // Total number of onboarding pages.
  final int totalOnBoardingPages = 4;

  // Implementing the 'next' method to update the page.
  @override
  void next() {
    if (currentPage.value < totalOnBoardingPages - 1) {
      currentPage.value++;
    }
  }

  // Implementing the 'onPageChanged' method to handle page changes.
  @override
  void onPageChanged(int pageNumber) {
    currentPage.value = pageNumber;
    update();
  }

  // Skip to the last page of the onboarding.
  @override
  void skipToLast() {
    currentPage.value = totalOnBoardingPages - 1;
  }

  // Go back to the previous onboarding page.
  @override
  void goToPrevious() {
    if (currentPage.value > 0) {
      currentPage.value--;
    }
  }

  // Complete the onboarding process.
  @override
  void completeOnBoarding() {
    // Implement your logic for completing the onboarding here.
    // For example, you might want to navigate to the main application screen.
  }

  // Reset the onboarding to the first page.
  @override
  void resetOnBoarding() {
    currentPage.value = 0;
  }
}
