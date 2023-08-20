import 'package:commdoctortarek/data/datasource/static/static.dart' as staticData;
import 'package:dartz/dartz.dart'; // Note: this package is imported but not used in your provided code.
import 'package:flutter/material.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView.builder(
          itemCount: staticData.onBoardingList.length,
          itemBuilder: (context, i) {
            final item = staticData.onBoardingList[i];
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,  // Align items to the center
              children: [
                if (item.title != null)
                  Text(
                    item.title!,
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                SizedBox(height: 80.0),  // Adding a SizedBox
                if (item.Image != null) Image.asset(item.Image!),
                SizedBox(height: 80.0),  // Adding a SizedBox
                Spacer(),  // Pushes everything below to the center
                if (item.Body != null)
                  Text(
                    item.Body!,
                    textAlign: TextAlign.center, // This will center-align the text
                    style: TextStyle(
                      fontSize: 18.0,  // Adjust font size as needed
                      height: 1.5,     // This adjusts the line spacing. Adjust the value as needed.
                      color: Colors.black,
                    ),
                  ),

                Spacer(),  // Takes up remaining space
              ],
            );
          },
        ),
      ),
    );
  }
}
