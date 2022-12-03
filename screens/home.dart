// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  _showSnackBar() {
    Get.snackbar(
      "Hey There",
      "Snackbar is easy",
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  _showDialog() {
    Get.defaultDialog(
      title: "Simple Dialog",
      content: Text("Too Easy"),
    );
  }

  _showBottomSheet() {
    Get.bottomSheet(
      Container(
        child: Wrap(
          children: <Widget>[
            ListTile(
                leading: Icon(Icons.music_note),
                title: Text('Music'),
                onTap: () => {}),
            ListTile(
              leading: Icon(Icons.videocam),
              title: Text('Video'),
              onTap: () => {},
            ),
            SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Get Package | Navigation Using GetX"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
              child: Text("Name Route: /second"),
              onPressed: () {
                Get.toNamed("/second");
              },
            ),
            ElevatedButton(
                onPressed: () {
                  Get.to(PageOne(),
                      arguments: "Argument Pass from Preview Screen ",
                      duration: Duration(seconds: 1),
                      transition: Transition.leftToRight);
                },
                child: Text("Go to Page One with leftToRight")),
            ElevatedButton(
                onPressed: () {
                  Get.to(PageOne(),
                      duration: Duration(seconds: 1),
                      transition: Transition.zoom);
                },
                child: Text("Go to Page Two with Zoom")),
            ElevatedButton(
                onPressed: () {
                  Get.to(PageOne(),
                      duration: Duration(seconds: 1),
                      transition: Transition.cupertino);
                },
                child: Text("Go to Page Two with circularReveal")),
            ElevatedButton(
                onPressed: () {
                  Get.to(PageOne(),
                      duration: Duration(seconds: 1),
                      transition: Transition.downToUp);
                },
                child: Text("Go to Page Two with downToUp")),
            ElevatedButton(
                onPressed: () {
                  Get.to(PageOne(),
                      duration: Duration(seconds: 1),
                      transition: Transition.noTransition);
                },
                child: Text("Go to Page Two with noTransition")),
            ElevatedButton(
                onPressed: () {
                  Get.to(PageOne(),
                      duration: Duration(seconds: 1),
                      transition: Transition.upToDown);
                },
                child: Text("Go to Page Two with upToDown")),
            ElevatedButton(
                onPressed: () {
                  Get.to(PageOne(),
                      duration: Duration(seconds: 1),
                      transition: Transition.rightToLeftWithFade);
                },
                child: Text("Go to Page Two with rightToLeftWithFade")),
            ElevatedButton(
                onPressed: () {
                  Get.to(PageOne(),
                      duration: Duration(seconds: 1),
                      transition: Transition.fadeIn);
                },
                child: Text("Go to Page Two with fadeIn")),
            ElevatedButton(
                onPressed: () {
                  Get.to(PageOne(),
                      duration: Duration(seconds: 1),
                      transition: Transition.native);
                },
                child: Text("Go to Page Two with native")),
          ],
        ),
      ),
    );
  }
}

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Page One")),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.back();
                  //go to previous page
                },
                child: Text("Go Back")),
          ],
        ),
      ),
    );
  }
}
