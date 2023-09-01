import 'package:commdoctortarek/controller/onborarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/constant/Appcolor.dart';
import '../../../data/datasource/static/static.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingController> {
  const CustomSliderOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 20,
    );

    return PageView.builder(
      onPageChanged: (index) {
        controller.onPageChanged(index);  // Proper function call
      },
      itemCount: onBoardingList.length,
      itemBuilder: (context, i) {
        return Column(
          children: [
            Text(
              onBoardingList[i].title!,
              style: textStyle,
            ),
            const SizedBox(height: 80),
            Image.asset(
              onBoardingList[i].Image!,
              width: 500,
              height: 230,
              fit: BoxFit.fill,
            ),
            const SizedBox(height: 80),
            Container(
              width: MediaQuery.of(context).size.width,
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
