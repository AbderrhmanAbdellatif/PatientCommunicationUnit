import 'package:commdoctortarek/core/constant/Appcolor.dart';
import 'package:commdoctortarek/data/datasource/static/static.dart' as staticData;
import 'package:flutter/material.dart';

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

  // Define commonly used constants
  static const _sizedBox50 = SizedBox(height: 50.0);
  static const _edgeInsets16 = EdgeInsets.all(16.0);
  static const _duration900ms = Duration(milliseconds: 900);

  const OnBoarding({Key? key}) : super(key: key);

  // Common button style
  Widget _commonButton(String text, VoidCallback onPressed) {
    return MaterialButton(
      padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 2),
      textColor: Colors.white,
      onPressed: onPressed,
      child: Text(text),
      color: Colors.blueAccent,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView.builder(
          itemCount: staticData.onBoardingList.length,
          itemBuilder: (context, i) {
            final item = staticData.onBoardingList[i];
            return Padding(
              padding: _edgeInsets16,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 2,
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if (item.title != null)
                            Text(item.title!, style: _titleStyle),
                          _sizedBox50,
                          if (item.Image != null) Image.asset(item.Image!),
                          _sizedBox50,
                          if (item.Body != null)
                            Text(
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
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                              staticData.onBoardingList.length,
                                  (index) => AnimatedContainer(
                                margin: const EdgeInsets.only(right: 5),
                                duration: _duration900ms,
                                width: 6,
                                height: 6,
                                decoration: BoxDecoration(
                                  color: AppColor.primaryColor,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              )),
                        ),
                        _sizedBox50,
                        Container(
                          margin: const EdgeInsets.only(bottom: 30),
                          child: _commonButton("Continue", () {
                            // TODO: Add your action here
                          }),
                        ),
                      ],
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
