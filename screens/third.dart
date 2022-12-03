import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:myapp/screens/home.dart';
import 'package:email_validator/email_validator.dart';

class Third extends StatefulWidget {
  @override
  State<Third> createState() => _ThirdState();
}

class _ThirdState extends State<Third> {
  var buttonName = "edit".obs;

  @override
  Widget build(BuildContext context) {
    var email = false.obs;
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Third Screen"),
        ),
        body: Obx(() => Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () => Get.offAll(Home()),
                    child: Text("Go To Home"),
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    child: TextField(
                        onChanged: (value) {
                          if (EmailValidator.validate(value)) {
                            email(true);
                          } else {
                            email(false);
                          }
                          if (value.length > 0) {
                            buttonName.value = "save";
                          } else {
                            buttonName.value = "edit";
                          }
                        },
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    width: 2,
                                    color: email.value
                                        ? Colors.green
                                        : Colors.grey)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    width: 2,
                                    color: email.value
                                        ? Colors.green
                                        : Colors.grey)),
                            suffixIcon: Icon(
                              Icons.done,
                              color: email.value ? Colors.green : Colors.grey,
                            ))),
                  ),
                  Text(buttonName.string)
                ],
              ),
            )));
  }
}
