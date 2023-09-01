import 'package:flutter/material.dart';
import '../../../core/constant/Appcolor.dart';
import '../../../data/datasource/static/static.dart';

class CustomSliderOnBoarding extends StatelessWidget {
  const CustomSliderOnBoarding({Key? key}) : super(key: key);

  // Removed key constructor because it's not being used

  @override
  Widget build(BuildContext context) {
    // Common text style for performance
    final textStyle = const TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 20,
    );

    // PageView.builder creates a scrollable list of onboarding pages
    return PageView.builder(
      itemCount: onBoardingList.length, // Number of onboarding pages
      itemBuilder: (context, i) {
        return Column(
          children: [
            // Onboarding title
            Text(
              onBoardingList[i].title!,
              style: textStyle,
            ),
            const SizedBox(height: 80), // Spacing

            // Onboarding image
            Image.asset(
              onBoardingList[i].Image!,
              width: 200,
              height: 230,
              fit: BoxFit.fill,
            ),
            const SizedBox(height: 80), // Spacing

            // Onboarding body text
            Container(
              width: MediaQuery.of(context).size.width, // Full width
              alignment: Alignment.center,
              child: Text(
                onBoardingList[i].Body!,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  height: 2,
                  color: AppColor.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
