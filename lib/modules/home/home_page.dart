import 'dart:math';
import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_archticture/modules/home/home_page_controller.dart';
import 'package:getx_archticture/router/routes_constants.dart';

class MyHomePage extends StatelessWidget {
  final homeController = Get.put(HomePageController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomePageController>(builder: (loginController) {
      return Scaffold(
        appBar: AppBar(
          title: Text("home page".tr),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 250,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: loginController.users?.length,
                    itemBuilder: (context, index) {
                      return Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(loginController.users[index].name,
                                style: TextStyle(
                                    fontSize: 15, color: Colors.black),),
                              Text(loginController.users[index].email,
                                style: TextStyle(
                                    fontSize: 15, color: Colors.black),)
                            ],
                          ),
                        ),
                      );
                    }),
              ),


              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(

                        border: Border.all(
                          color: Colors.red,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(25))
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                          decoration: new InputDecoration.collapsed(
                              hintText: "UserEmail".tr

                          ),
                          controller: homeController.emailController,
                          onChanged: (value) {
                            homeController.emailController.text = value;
                          }
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(

                        border: Border.all(
                          color: Colors.red,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(25))
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                          decoration: new InputDecoration.collapsed(
                              hintText:"UserName".tr
                          ),
                          controller: homeController.userNameController,
                          onChanged: (value) {
                            homeController.userNameController.text = value;
                          }
                      ),
                    ),
                  ),
                ),
              ),


              OutlinedButton(
                  onPressed: homeController.addNewRow,
                  child: Text('NewRow'.tr)),

              OutlinedButton(
                  onPressed: homeController.navigate,
                  child: Text('navigate'.tr)),

              OutlinedButton(
                  onPressed: homeController.changeLocal,
                  child: Text('langauge'.tr)),
            ],
          ),
        ),
      );
    });
  }
}
