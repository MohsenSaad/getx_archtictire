
import 'package:get/get.dart';
import 'package:getx_archticture/services/app_services/localization_service.dart';
import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:getx_archticture/modules/details/details_page_controller.dart';

class DetailsPage extends StatelessWidget {
  final detailsController=Get.put(DetailsPageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detailspage".tr),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ConfettiWidget(
              confettiController: detailsController.controllerCenter,
              blastDirectionality: BlastDirectionality.explosive,
              particleDrag: 0.05,
              emissionFrequency: 0.05,
              numberOfParticles: 200,
              gravity: 0.05,
              shouldLoop: true,
              colors: const [
                Colors.green,
                Colors.blue,
                Colors.pink,
                Colors.orange,
                Colors.purple
              ], // manually specify the colors to be used
            ),
            Text(
              'details page',
            ),
            Text(
              '',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
    );
  }
}
