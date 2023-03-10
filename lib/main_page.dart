/*
import 'package:app1/colors.dart';
import 'package:app1/second_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key, required this.color}) : super(key: key);
  final Color color;

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ProjectColors.blackColor,
        leading: Icon(Icons.location_on_outlined),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 16),
              child: Text("Hi, Welcome!",
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                        fontWeight: FontWeight.w600,
                        color: ProjectColors.whiteColor,
                      )),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                "Find your favorite dish",
                style: Theme.of(context).textTheme.bodyText1?.copyWith(
                      color: ProjectColors.greyColor,
                    ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text("Categories",
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                        color: ProjectColors.whiteColor,
                      )),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                child: SafeArea(
                  child: ListView(
                    children: [
                      Card(
v                          child: Container(
                        width: double.infinity,
                        height: 60,
                        child: ListView.builder(

                          itemCount: MenuManager.controller.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => Padding(
                            padding: index == MenuManager.controller.length - 1
                                ? const EdgeInsets.only(right: 0)
                                : const EdgeInsets.only(right: 10),
                            child: customToggleTheColorContainer(index: index),
                          ),
                        ),
                      )

                         /*
                        Container(
                          color: ProjectColors.greyColor,
                          height: 70,
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => SecondPage(),
                              ));
                            },
                          ),
                        ),
                        */
                          )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  InkWell customToggleTheColorContainer({required int index}) {
    return InkWell(
      onTap: () {
        toggleTheBgc(index);
      },
      child: Container(
        height: 50,
        width: 100,
        color:
            MenuManager.controller[index] == true ? Colors.blue : Colors.white,
      ),
    );
  }

  void toggleTheBgc(int index) {
    return setState(() {
      if (MenuManager.controller[index] == true) {
        MenuManager.controller[index] = true;
        for (int i = 0; i < MenuManager.controller.length; i++) {
          if (index != i) {
            MenuManager.controller[i] = false;
          }
        }
      } else {
        MenuManager.controller[index] = true;
        for (int i = 0; i < MenuManager.controller.length; i++) {
          if (index != i) {
            MenuManager.controller[i] = false;
          }
        }
      }
    });
  }
}

class MenuManager {
  static List<bool> controller = [true, false, false, false, false, false];
}
*/
import 'package:app1/colors.dart';
import 'package:app1/main_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main_page.dart';

List<String> urlList = [
  "assets/images/burger king.png",
  "assets/images/kfc.png",
  "assets/images/Subway.png",
  "assets/images/mc donalds.png",
];
List<String> mealUrl = [
  "assets/images/hamburger.png",
  "assets/images/fried chicken.png",
  "assets/images/sandwich.png",
  "assets/images/pizza.png",
];
List<String> name = [
  "Burger",
  "Fried Chicken",
  "Sandwich",
  "Pizza",
];

class MainPage extends StatefulWidget {
  const MainPage({Key? key, required this.color}) : super(key: key);
  final Color color;

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ProjectColors.blackColor,
        leading: Icon(Icons.location_on_outlined),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 16),
              child: Text("Hi, Welcome!",
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                        fontWeight: FontWeight.w600,
                        color: ProjectColors.whiteColor,
                      )),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                "Find your favorite dish",
                style: Theme.of(context).textTheme.bodyText1?.copyWith(
                      color: ProjectColors.greyColor,
                    ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search for your address",
                  prefixIcon: Icon(Icons.location_searching),
                  filled: true,
                  fillColor: ProjectColors.blackColor,
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text("Categories",
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                        color: ProjectColors.whiteColor,
                      )),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                child: SafeArea(
                  child: ListView(
                    children: [
                      Card(
                        child: Container(
                          width: 20,
                          height: 100,
                          child: ListView.builder(
                            itemCount: 4,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) => Padding(
                              padding: EdgeInsets.only(
                                right: 10,
                                left: 10,
                              ),
                              child: Stack(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                          mealUrl[index],
                                        ),
                                        fit: BoxFit.scaleDown,
                                      ),
                                    ),
                                    width: 80,
                                    height: 50,
                                  ),
                                  Positioned(
                                    bottom: 5,
                                    left: 5,
                                    right: 5,
                                    child: Container(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 4),
                                      color: Colors.black,
                                      child: Text(
                                        name[index],
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

/*
            Expanded(
              child: Container(
                width: double.infinity,
                child: SafeArea(
                  child: ListView(
                    children: [
                      Card(
                        child: Container(
                          width: 10,
                          height: 60,
                          child: ListView.builder(
                            itemCount: MenuManager.controller.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) => Padding(
                              padding:
                                  index == MenuManager.controller.length - 1
                                      ? const EdgeInsets.only(right: 0)
                                      : const EdgeInsets.only(right: 10),
                              child:
                                  customToggleTheColorContainer(index: index),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
*/
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text("Restaurants Nearby",
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                        color: ProjectColors.whiteColor,
                      )),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: urlList.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(urlList[index]),
                        fit: BoxFit.scaleDown,
                      ),
                      color: ProjectColors.whiteColor,
                    ),
                    height: 100,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  InkWell customToggleTheColorContainer({required int index}) {
    return InkWell(
      onTap: () {
        toggleTheBgc(index);
      },
      child: Container(
        height: 50,
        width: 100,
        color:
            MenuManager.controller[index] == true ? Colors.blue : Colors.white,
      ),
    );
  }

  void toggleTheBgc(int index) {
    return setState(() {
      if (MenuManager.controller[index] == true) {
        MenuManager.controller[index] = true;
        for (int i = 0; i < MenuManager.controller.length; i++) {
          if (index != i) {
            MenuManager.controller[i] = false;
          }
        }
      } else {
        MenuManager.controller[index] = true;
        for (int i = 0; i < MenuManager.controller.length; i++) {
          if (index != i) {
            MenuManager.controller[i] = false;
          }
        }
      }
    });
  }
}

class MenuManager {
  static List<bool> controller = [true, false, false, false, false, false];
}
