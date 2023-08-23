import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:traveling_app/home_page.dart';

class IntroductionScreen1 extends StatelessWidget {
  const IntroductionScreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: IntroductionScreen(
        globalBackgroundColor: Colors.white,
        pages: [
          PageViewModel(
              titleWidget: Column(
                children: const [
                  SizedBox(height: 50,),
                  Text(
                    "Start Your Vacation Quickly And Book Your Travel",
                    style: TextStyle(color: Colors.black, fontSize: 25,fontWeight: FontWeight.bold),),
                ],
              ),
              bodyWidget: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                    const SizedBox(height: 5,),
                    Stack(
                      children: const [
                        Image(
                          image: AssetImage("images/11.jpeg"),
                          fit: BoxFit.fill,
                          width: 450,
                          height: 500,
                        ),
                      ],
                    ),
                  ],
                ),
              )),
          PageViewModel(
              titleWidget: Column(
                children: const [
                  SizedBox(height: 50,),
                  Text(
                    "Fast Way To Book From Your Home",
                    style: TextStyle(color: Colors.black, fontSize: 25,fontWeight: FontWeight.bold),),
                ],
              ),
              bodyWidget: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                    const SizedBox(height: 0,),
                    Stack(
                      children: const [
                        Image(
                          image: AssetImage("images/12.jpeg"),
                          fit: BoxFit.fill,

                        ),
                      ],
                    ),
                  ],
                ),
              )),
        ],
        done: const Text("Get Start",
            style: TextStyle(
              fontSize: 20,
            )),
        onDone: () {
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => HomePage()));
        },
        skip: const Text("Skip",
            style: TextStyle(
              fontSize: 20,
            )),
        onSkip: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => HomePage()));
        },
        next: const Icon(
          Icons.arrow_forward,
          size: 35,
        ),
        showSkipButton: true,
        showNextButton: true,
      ),
    );
  }
}
