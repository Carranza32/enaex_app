import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constants.dart';

class SecurityTabWidget extends StatelessWidget {
	const SecurityTabWidget({super.key});

	@override
	Widget build(BuildContext context) {
		return Column(
			children: [
				Container(
					padding: const EdgeInsets.all(20),
					decoration: containerCardDecoration(),
					child: Column(
						crossAxisAlignment: CrossAxisAlignment.start,
						children: [
							const Text("Actualizar contraseña", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),

							const SizedBox(height: 20),

							const Text("Nombre y Apellido"),
							const SizedBox(height: 10),
							TextFormField(
								decoration: formFieldGreyStyle(),
							),
							const SizedBox(height: 20),

							const Text("Ocupación"),
							const SizedBox(height: 10),
							TextFormField(
								decoration: formFieldGreyStyle(),
							),
							const SizedBox(height: 20),

							const Text("Correo electrónico"),
							const SizedBox(height: 10),
							TextFormField(
								decoration: formFieldGreyStyle(),
							),
							const SizedBox(height: 20),

							Container(
								alignment: Alignment.centerRight,
								child: ElevatedButton(
									onPressed: () => _showMessage("Contraseña actualizada"),
									style: primaryButtonStyle(verticalPadding: 10),
									child: const Text("Guardar"),
								),
							)
						],
					),
				),

				const SizedBox(height: 20),

				Container(
					padding: const EdgeInsets.all(20),
					decoration: containerCardDecoration(),
					child: Column(
						crossAxisAlignment: CrossAxisAlignment.start,
						children: [
							const Text("Actualizar PIN de verificación", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),

							const SizedBox(height: 20),

							const Text("Ingresas PIN"),
							const SizedBox(height: 10),
							TextFormField(
								decoration: formFieldGreyStyle(),
							),
							const SizedBox(height: 20),

							const Text("Repite PIN"),
							const SizedBox(height: 10),
							TextFormField(
								decoration: formFieldGreyStyle(),
							),
							const SizedBox(height: 20),

							Container(
								alignment: Alignment.centerRight,
								child: ElevatedButton(
									onPressed: () => _showMessage("PIN actualizado"),
									style: primaryButtonStyle(verticalPadding: 10),
									child: const Text("Guardar"),
								),
							)
						],
					),
				),
			],
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