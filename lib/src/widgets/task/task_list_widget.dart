import 'package:enaex_app/src/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TaskListWidget extends StatelessWidget {
  const TaskListWidget({super.key, required this.status});
  final String status;

  @override
  Widget build(BuildContext context) {
    IconData icon;
    Color color = Colors.grey;

    if (status == 'pending') {
      icon = Icons.access_time;
      color = Colors.grey;
    } else if (status == 'approved') {
      icon = Icons.check_circle_outline;
      color = Colors.green;
    } else if (status == 'rejected') {
      icon = Icons.warning_amber;
      color = Colors.red;
    } else {
      icon = Icons.work;
    }

    return ListView.builder(
      itemCount: 50,
      itemBuilder: (context, index) {
        return GestureDetector(
					onTap: () {
						Get.toNamed('/taskDetail', arguments: [status]);
					},
					child: Container(
						padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 15),
						margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
						decoration: containerCardDecoration(),
						child: Row(
							mainAxisAlignment: MainAxisAlignment.spaceBetween,
							children: [
								Row(
									children: [
										Icon(icon, color: color, size: 38),
										const SizedBox(width: 15),
										Column(
											crossAxisAlignment: CrossAxisAlignment.start,
											children: [
												Text("Tarea $index", style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
												Text("N°: PD - 348", style: TextStyle(fontSize: 12, color: Colors.grey[700])),
												Text("Agregado a las 12:11 - 18/01/2023", style: TextStyle(fontSize: 12, color: Colors.grey[700]))
											],
										)
									],
								),
								Icon(Icons.arrow_forward_ios, color: Colors.teal[300], size: 30)
							],
						),
					),
				);
      }
    );
  }
}