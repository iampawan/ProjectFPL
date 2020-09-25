import 'package:flutter/material.dart';
import 'package:fplproject/coolors.dart';
import 'package:velocity_x/velocity_x.dart';

final imgUrl =
    "https://images.unsplash.com/photo-1517836357463-d25dfeac3438?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2550&q=80";

class WorkOutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: blueish,
        title: "Home".text.make(),
        centerTitle: true,
        leading: Icon(Icons.person),
        actions: [
          Icon(
            Icons.search,
          ).p16()
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          "Favorite Workouts".text.black.bold.xl2.make(),
          10.heightBox,
          VxSwiper.builder(
            itemCount: 4,
            itemBuilder: (context, index) => ZStack(
              [
                VxBox()
                    .withDecoration(BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(imgUrl),
                      ),
                      borderRadius: BorderRadius.circular(14),
                    ))
                    .make(),
                Positioned(
                  child: "Intense Abs".text.white.semiBold.make(),
                  bottom: 16,
                  left: 16,
                )
              ],
            ).p8(),
          ),
          20.heightBox,
          "Workout Categories".text.xl2.bold.make(),
          Expanded(
            child: GridView.count(
                physics: BouncingScrollPhysics(),
                crossAxisCount: 3,
                children: List.generate(6, (index) => "Item 1")
                    .map(
                      (e) => ZStack(
                        [
                          VxBox()
                              .withDecoration(BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(imgUrl),
                                ),
                                borderRadius: BorderRadius.circular(14),
                              ))
                              .make(),
                          Align(
                            child: "Intense Abs".text.white.semiBold.make(),
                          )
                        ],
                        fit: StackFit.loose,
                        overflow: Overflow.clip,
                      ).p4(),
                    )
                    .toList()),
          )
        ],
      ).p16(),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: blueish,
          fixedColor: whiteColor,
          unselectedItemColor: Vx.gray400,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.work,
              ),
              label: "Work",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
              ),
              label: "Favorite",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.people,
              ),
              label: "Contacts",
            )
          ]),
    );
  }
}
