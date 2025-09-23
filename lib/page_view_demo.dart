import 'package:flutter/material.dart';
import 'package:flutter_sec_2/models/onBoarding.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageViewDemo extends StatefulWidget {
  const PageViewDemo({super.key});

  @override
  State<PageViewDemo> createState() => _PageViewDemoState();
}

class _PageViewDemoState extends State<PageViewDemo> {
  PageController pageController = PageController();
  List<OnBoardingModels> onBoardingList = [
    OnBoardingModels(image: 'assets/images/download.jpg', title: 'First Page', description: 'This is my first page of on boarding screen'),
    OnBoardingModels(image: 'assets/images/download.jpg', title: 'Second Page', description: 'This is my second page of on boarding screen'),
    OnBoardingModels(image: 'assets/images/download.jpg', title: 'Third Page', description: 'This is my third page of on boarding screen'),
    OnBoardingModels(image: 'assets/images/download.jpg', title: 'Third Page', description: 'This is my third page of on boarding screen'),
    OnBoardingModels(image: 'assets/images/download.jpg', title: 'Third Page', description: 'This is my third page of on boarding screen'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: pageController,
          itemCount: onBoardingList.length,
          itemBuilder: (context , i){
        return Column(
          children: [
            Expanded(
              child: Column(children: [
                Image.asset(onBoardingList[i].image.toString(), height: 500,),
                Text(onBoardingList[i].title.toString(),style: TextStyle(fontSize: 30),),
                Text(onBoardingList[i].description.toString(),style: TextStyle(fontSize: 25
                ),),
                ElevatedButton(onPressed: (){}, child: Text("Next")),
              ],),
            ),
            SmoothPageIndicator(
                controller: pageController,  // PageController
                count:  onBoardingList.length,
                effect:  SwapEffect(),  // your preferred effect
                onDotClicked: (index){
                }
            )
          ],
        );
      }),
    );
  }
}
