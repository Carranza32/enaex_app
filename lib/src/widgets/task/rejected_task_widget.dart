import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RejectTaskWidget extends StatelessWidget {
	const RejectTaskWidget({super.key});

	@override
	Widget build(BuildContext context) {
		final size = MediaQuery.of(context).size;

		return SafeArea(
			child: Scaffold(
				appBar: AppBar(
				),
				body: Center(
					child: Padding(
						padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
						child: Column(
							mainAxisAlignment: MainAxisAlignment.center,
							children: [
								const Icon(Icons.warning_amber_rounded, size: 150, color: Color(0xffe20613)),
								const SizedBox(height: 25),

								const Text(
									'¡Tarea rechazada con éxito!',
									style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
								),

								const SizedBox(height: 15),

								const Text("Puedes revisar los detalles nuevamente en la lista de tareas rechazadas. "),

								const SizedBox(height: 25),

								TextButton(
									child: const Text("Volver a inicio", style: TextStyle(color: Colors.black, decoration: TextDecoration.underline, fontWeight: FontWeight.w400)),
									onPressed: () {
										Get.back();
										Get.back();
									},
								),
							],
						),
					),
				),
			),
		);
	}
}