import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_archticture/Models/userModel.dart';
import 'package:getx_archticture/services/app_services/ilocalization_service.dart';
import 'package:getx_archticture/services/app_services/localization_service.dart';
import 'package:getx_archticture/modules/details/details_page.dart';

 class  HomePageController extends GetxController {
  final localization = Get.find<ILocalizationService>();
  List<UserModel> users=[];
  TextEditingController userNameController;
  TextEditingController emailController;
  String email;
  String userName;

  void changeLocal(){
    String value=  localization.getCurrentLocal();
    if(value=="ar_AR")
      localization.changeLocale("English");
    else
      localization.changeLocale("Arabic");
  }

  void navigate(){
    Get.to(() => DetailsPage());
  }


 addNewRow(){
    if(emailController.text.isNotEmpty && userNameController.text.isNotEmpty) {
      users.add(new UserModel(
          email: emailController.text, name: userNameController.text));
      update();
      emailController.clear();
      userNameController.clear();
      update();
    }else{
      Get.snackbar(
          'emptyfield'.tr,
          '',
          snackPosition: SnackPosition.BOTTOM
      );
    }
 }



  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    userNameController=new TextEditingController();
    emailController=new TextEditingController();
    initUserDate();
  }


  initUserDate(){
    users.add(new UserModel(email: "mohsen@test.net",name: "Mohsen Saad"));
    users.add(new UserModel(email: "mohsen@test.net",name: "Mohsen Saad"));
    users.add(new UserModel(email: "mohsen@test.net",name: "Mohsen Saad"));
    users.add(new UserModel(email: "mohsen@test.net",name: "Mohsen Saad"));
    update();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {

    super.onClose();
  }

}