import 'package:flutter/material.dart';

import '../constants.dart';

class TaskDetailScreen extends StatelessWidget {
	const TaskDetailScreen({super.key});

	@override
	Widget build(BuildContext context) {
		return SafeArea(
			child: Scaffold(
				appBar: AppBar(
					title: const Text("Detalle de tarea"),
				),
				body: Column(
					children: [
						Container(
							padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
							margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
							decoration: BoxDecoration(
								borderRadius: BorderRadius.circular(10),
								color: Colors.white,
								boxShadow: const [
									BoxShadow(
										offset: Offset(0, 3),
										spreadRadius: -4,
										blurRadius: 10,
										color: Color.fromRGBO(0, 0, 0, 0.2),
									),
								],
							),
							child: Column(
								children: [
									Row(
										mainAxisAlignment: MainAxisAlignment.spaceBetween,
										children: [
											Column(
												children: [
													const Text("Permiso Trabajo Seguro N°: PD - 348", style: TextStyle(fontWeight: FontWeight.bold)),
													const SizedBox(height: 15),
													Text("Agregado a las 12:11 - 18/01/2023", style: TextStyle(color: Colors.grey[700])),
												],
											),

											Icon(Icons.access_time, color: Colors.grey[700])
										],
									),
									const SizedBox(height: 20),
									const Text("Descripción del trabajo: Retiro Aislación, Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium.")
								],
							),
						),

						Container(
							width: double.infinity,
							padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 10),
							margin: const EdgeInsets.symmetric(vertical: 20),
							color: const Color(0xff3e444e),
							child: const Text("Documentos Adjuntos", style: TextStyle(color: Colors.white)),
						),

						Expanded(
							child: ListView.builder(
								itemCount: 3,
								itemBuilder: (context, index) {
									return Container(
										padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
										margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
										decoration: BoxDecoration(
											borderRadius: BorderRadius.circular(10),
											color: Colors.white,
											boxShadow: const [
												BoxShadow(
													offset: Offset(0, 3),
													spreadRadius: -4,
													blurRadius: 10,
													color: Color.fromRGBO(0, 0, 0, 0.2),
												),
											],
										),
										child: Row(
											mainAxisAlignment: MainAxisAlignment.spaceBetween,
											children: [
												const Row(
													children: [
														Icon(Icons.picture_as_pdf_outlined, color: Color(0xffe20613), size: 50),
														SizedBox(width: 15),
														Column(
															crossAxisAlignment: CrossAxisAlignment.start,
															children: [
																Text("FORMULARIO - PTS", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
																SizedBox(height: 5),
																Text("Tamaño: 12MB", style: TextStyle(fontSize: 12, color: Colors.grey)),
															],
														),
													],
												),

												FilledButton(
													style: ButtonStyle(
														backgroundColor: MaterialStateProperty.all(const Color(0xffe20613)),
														padding: MaterialStateProperty.all(const EdgeInsets.symmetric(horizontal: 20, vertical: 10)),
													),
													child: const Icon(Icons.download, color: Colors.white, size: 30),
													onPressed: () {},
												)
											],
										),
									);
								},
							),
						),

						Row(
							mainAxisAlignment: MainAxisAlignment.spaceEvenly,
							children: [
								OutlinedButton(
									style: loginOutlineGrayButtonStyle(),
									onPressed: () => {},
									child: const Text("Rechazar"),
								),

								ElevatedButton(
									style: primaryButtonStyle(),
									onPressed: () {},
									child: const Text("Aprobar"),
								),
							],
						)
					],
				),
			),
		);
	}
}