import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
			child: Scaffold(
				appBar: AppBar(
					title: const Text("Notificaciones"),
				),
				body: ListView.builder(
					itemCount: 100,
					itemBuilder: (context, index) {
						return Container(
							padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
							margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
							decoration: const BoxDecoration(
								border: Border(
									left: BorderSide(
										style: BorderStyle.solid,
										color: Color(0xff01b8aa),
										width: 7,
									),
								),
								color: Colors.white,
								boxShadow: [
									BoxShadow(
										offset: Offset(0, 3),
										spreadRadius: -4,
										blurRadius: 10,
										color: Color.fromRGBO(0, 0, 0, 0.2),
									),
								],
							),
							child: Column(
								crossAxisAlignment: CrossAxisAlignment.start,
								children: [
									Row(
										mainAxisAlignment: MainAxisAlignment.spaceBetween,
										children: [
											Text("Agregado a las 12:11 - 18/01/2023", style: TextStyle(color: Colors.grey[700])),
											Icon(Icons.access_time, color: Colors.grey[700], size: 16)
										],
									),
									const SizedBox(height: 10),
									const Text("¡Se ha agregado una nueva tarea en Pendientes!", style: TextStyle(fontWeight: FontWeight.bold)),
									const SizedBox(height: 10),
									Text("Permiso Trabajo Seguro N°: PD - 348. Retiro Aislación", style: TextStyle(color: Colors.grey[700])),
								],
							),
						);
					},
				),
			),
    );
  }
}