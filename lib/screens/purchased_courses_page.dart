import 'package:flutter/material.dart';
import 'package:tutorial_app/constant/asset_constant.dart';
import 'package:tutorial_app/constant/color_constant.dart';

class PurchasedCoursesPage extends StatelessWidget {
  const PurchasedCoursesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: ColorConstant.white,
            title: const Text(
              "Flutter development",
              style: TextStyle(color: ColorConstant.primaryColor),
            ),
            centerTitle: true,
            bottom: const TabBar(
              tabs: [
                Tab(
                  child: Text(
                    "Chapters",
                    style: TextStyle(color: ColorConstant.primaryColor),
                  ),
                ),
                Tab(
                  child: Text(
                    "Practice",
                    style: TextStyle(color: ColorConstant.primaryColor),
                  ),
                ),
                Tab(
                  child: Text(
                    "Test",
                    style: TextStyle(color: ColorConstant.primaryColor),
                  ),
                ),
              ],
            ),
          ),
          body: const CourseTabView(),
        ),
      ),
    );
  }
}

class CourseTabView extends StatelessWidget {
  const CourseTabView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        const ChapterTab(),
        Column(
          children: [
            Card(
              child: Image.asset(AssetConstant.course5),
            )
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [Center(child: Text("Test"))],
        ),
      ],
    );
  }
}

class ChapterTab extends StatelessWidget {
  const ChapterTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Row(
                  children: [
                    Container(
                        margin: EdgeInsets.all(10),
                        width: 50,
                        height: 50,
                        child: Image.asset(
                          AssetConstant.course5,
                          fit: BoxFit.cover,
                        )),
                    Column(
                      children: const [
                        Text(
                          "Installation",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 19),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          "10:30 minutes",
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.play_arrow))
                  ],
                )
              ],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
          ),
        )
      ],
    );
  }
}
