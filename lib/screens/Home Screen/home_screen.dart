import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tutorial_app/constant/asset_constant.dart';
import 'package:tutorial_app/constant/color_constant.dart';
import 'package:tutorial_app/screens/purchased_courses_page.dart';

import 'Widgets/app_bar.dart';
import 'Widgets/card_widget.dart';
import 'Widgets/left_button.dart';
import 'Widgets/right_button.dart';
import 'Widgets/slider_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  final CarouselController carouselController = CarouselController();

  late TabController controller;
  @override
  void initState() {
    controller = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: appBar(),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned(
              right: -190,
              bottom: -30,
              child: SizedBox(
                width: 500,
                height: 500,
                child: Image.asset(
                  AssetConstant.boy,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Positioned(
              left: -70,
              top: -2,
              child: SizedBox(
                width: 230,
                height: 230,
                child: Image.asset(
                  AssetConstant.girl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 76,
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  width: double.infinity,
                  child: const CardWidget(),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 13.0),
                  child: Stack(
                    children: [
                      CarouselSliderWidget(
                          carouselController: carouselController),
                      RightButton(carouselController: carouselController),
                      LeftButton(carouselController: carouselController)
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20.0, left: 20),
                  child: Text(
                    "courses",
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
                  ),
                ),
                Container(
                  height: 420,
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    children: [
                      Flexible(
                        child: TabBar(
                          controller: controller,
                          tabs: const [
                            Tab(
                              child: Text(
                                "Purchased",
                                style: TextStyle(
                                    color: ColorConstant.primaryColor),
                              ),
                            ),
                            Tab(
                              child: Text(
                                "All",
                                style: TextStyle(
                                    color: ColorConstant.primaryColor),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Flexible(
                        child: TabBarView(
                          controller: controller,
                          children: [
                            Column(
                              children: [
                                CourseWidget(),
                                CourseWidget(),
                              ],
                            ),
                            Column(
                              children: [],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CourseWidget extends StatelessWidget {
  const CourseWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(const PurchasedCoursesPage());
      },
      child: BlurryContainer(
        height: 100,
        width: 500,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  margin: EdgeInsets.all(10),
                  width: 50,
                  height: 50,
                  child: Image.asset(
                    AssetConstant.course3,
                    fit: BoxFit.cover,
                  )),
              Column(
                children: const [
                  Text(
                    "Flutter Development",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 19),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    "4/14 chapter completed",
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Get.to(PurchasedCoursesPage());
                      },
                      icon: const Icon(Icons.arrow_forward)),
                ],
              )
            ],
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          ),
        ),
      ),
    );
  }
}
