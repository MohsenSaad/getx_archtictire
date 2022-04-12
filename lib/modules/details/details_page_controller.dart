import 'package:get/get.dart';
import 'package:getx_archticture/services/app_services/localization_service.dart';
import 'package:confetti/confetti.dart';

class DetailsPageController extends GetxController {
  final ConfettiController controllerCenter= ConfettiController(duration: const Duration(seconds: 10));


  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    controllerCenter.play();
    update();
    super.onReady();
  }

  @override
  void onClose() {
    controllerCenter.dispose();
    super.onClose();
  }
}