import 'package:commdoctortarek/core/constant/Appcolor.dart';
import 'package:commdoctortarek/data/datasource/static/static.dart' as staticData;
import 'package:flutter/material.dart';

import '../../data/datasource/static/static.dart';

class OnBoarding extends StatelessWidget {
  // Define text styles as constant
  static const _titleStyle = TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static const _bodyStyle = TextStyle(
    fontSize: 18.0,
    height: 1.5,
    color: AppColor.primaryColor,
  );

  // Define the spacer and SizedBox as constant
  static const _spacer = Spacer();
  static const _sizedBox = SizedBox(height: 50.0);

  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView.builder(
          itemCount: staticData.onBoardingList.length,
          itemBuilder: (context, i) {
            final item = staticData.onBoardingList[i];
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Only use Expanded if necessary, else you can leave this out.
                  Expanded(
                    flex: 2,
                    child: SingleChildScrollView(  // Add this
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if (item.title != null) Text(item.title!, style: _titleStyle),
                          _sizedBox,
                          if (item.Image != null) Image.asset(item.Image!),
                          _sizedBox,
                          if (item.Body != null) Text(
                            item.Body!,
                            textAlign: TextAlign.center,
                            style: _bodyStyle,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: ListView.builder(
                      itemCount: staticData.onBoardingList.length,
                      itemBuilder: (context, index) => AnimatedContainer(
                        duration: Duration(milliseconds: 900),
                        width: 5,
                        height: 6,
                        decoration: BoxDecoration(
                          color: AppColor.primaryColor,
                          borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
