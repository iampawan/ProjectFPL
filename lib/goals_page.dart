import 'package:flutter/material.dart';
import 'coolors.dart';
import 'widgets/goal_card.dart';
import 'package:velocity_x/velocity_x.dart';

class GoalsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: whiteColor,
        bottomSheet: FlatButton(
          onPressed: () {},
          child: "Continue".text.make(),
          color: blueish,
          shape: Vx.withRounded(5),
          colorBrightness: Brightness.dark,
        ).wh(context.screenWidth, 50).p16(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            "What are your goals".text.xl3.black.bold.makeCentered(),
            "Let us know what your goals are so that we can help you in achieving them"
                .text
                .semiBold
                .gray600
                .center
                .makeCentered()
                .py8(),
            GoalCard(
              title: "HIILT",
              subtitle: "Lose Weight",
              icon: Icon(
                Icons.calendar_today,
                size: 50,
              ),
              isFilled: false,
            ).py16(),
            GoalCard(
              title: "BODYWEIGHT",
              subtitle: "Be Toned",
              icon: Icon(
                Icons.directions_walk,
                size: 50,
                color: Colors.white,
              ),
              isFilled: true,
            ).py16(),
            GoalCard(
              title: "WEIGHT",
              subtitle: "Gain Muscle",
              icon: Icon(
                Icons.grain,
                size: 50,
              ),
              isFilled: false,
            ).py16(),
          ],
        ).p16().scrollVertical(),
      ),
    );
  }
}
