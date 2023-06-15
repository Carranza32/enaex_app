import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants.dart';

class TabsController extends GetxController {
  final PageController pageController = PageController();
  int currentIndex = 0;

  void setCurrentIndex(int index) {
    currentIndex = index;

    if (index == 3) {
			Get.defaultDialog(
				title: "",
				content: Column(
					children: [
						const Text("¿Desea cerrar sesión?"),
						const SizedBox(height: 20),
						Row(
							mainAxisAlignment: MainAxisAlignment.spaceEvenly,
							children: [								
								OutlinedButton(
									style: loginOutlineGrayButtonStyle().copyWith(
										padding: MaterialStateProperty.all(const EdgeInsets.symmetric(horizontal: 20)),
									),
									child: const Text("Cancelar"),
									onPressed: () => Get.back(),
								),
								ElevatedButton(
									style: primaryButtonStyle().copyWith(
										padding: MaterialStateProperty.all(const EdgeInsets.symmetric(horizontal: 20)),
									),
									child: const Text("Continuar"),
									onPressed: () {
										Get.offAllNamed('/login');
									},
								),
							],
						)
					],
				),
			);
			return;
    }

    pageController.animateToPage(index, duration: const Duration(milliseconds: 250), curve: Curves.easeOut);
    update();
  }
}