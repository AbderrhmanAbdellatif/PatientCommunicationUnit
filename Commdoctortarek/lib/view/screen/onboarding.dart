import 'package:commdoctortarek/data/datasource/static/static.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: PageView.builder(itemCount: onBoardingList.length
           ,itemBuilder: (context,i)=>Column(children: [
                      Text(onBoardingList[i].title!)

       ], )),
    );
  }
}
