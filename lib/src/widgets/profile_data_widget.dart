import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constants.dart';

class ProfileDataTabWidget extends StatelessWidget {
	const ProfileDataTabWidget({super.key});

	@override
	Widget build(BuildContext context) {
		return SingleChildScrollView(
			child: Column(
				crossAxisAlignment: CrossAxisAlignment.start,
				children: [
					Row(
						children: [
							const CircleAvatar(
								radius: 30.0,
								backgroundImage: AssetImage("assets/Emma_Watson_2013.jpg"),
								backgroundColor: Colors.transparent,
							),
							const SizedBox(width: 15),
							Container(
								alignment: Alignment.centerRight,
								child: ElevatedButton(
									onPressed: () => _showMessage("Información actualizada"),
									style: primaryButtonStyle(verticalPadding: 10, horizontalPadding: 18),
									child: const Text("Cargar imagen"),
								),
							)
						],
					),

					const SizedBox(height: 20),

					const Text("Nombre y Apellido"),
					const SizedBox(height: 10),
					TextFormField(
						decoration: formFieldOutlineStyle(),
					),
					const SizedBox(height: 20),

					const Text("Ocupación"),
					const SizedBox(height: 10),
					TextFormField(
						decoration: formFieldOutlineStyle(),
					),
					const SizedBox(height: 20),

					const Text("Correo electrónico"),
					const SizedBox(height: 10),
					TextFormField(
						decoration: formFieldOutlineStyle(),
					),
					const SizedBox(height: 20),

					const Text("Dirección"),
					const SizedBox(height: 10),
					TextFormField(
						decoration: formFieldOutlineStyle(),
					),

					const SizedBox(height: 20),
					const Text("Dirección 2"),
					const SizedBox(height: 10),
					TextFormField(
						decoration: formFieldOutlineStyle(),
					),

					const SizedBox(height: 20),
					const Text("Ciudad"),
					const SizedBox(height: 10),
					TextFormField(
						decoration: formFieldOutlineStyle(),
					),
					const SizedBox(height: 20),

					Container(
						alignment: Alignment.centerRight,
						child: ElevatedButton(
							onPressed: () => _showMessage("Información actualizada"),
							style: primaryButtonStyle(verticalPadding: 10),
							child: const Text("Guardar"),
						),
					)
				],
			),
		);
	}

	_showMessage(String message){
		Get.defaultDialog(
			title: message,
			content: const Center(child: Icon(Icons.check_circle_outline_outlined, color: Color(0xffa6ce28), size: 40,) ),
			confirm: ElevatedButton(
				style: primaryButtonStyle(verticalPadding: 10),
				onPressed: () => Get.back(),
				child: const Text("Aceptar"),
			),
		);
	}
}