import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Lista de tareas"),
        ),
        body: DefaultTabController(
          length: 3,
          child: Column(
            children: [
              Container(
                constraints: const BoxConstraints.expand(height: 50),
                child: const TabBar(
                  indicatorColor: Colors.red,
                  labelColor: Colors.black,
                  tabs: [
                    Tab(text: "Pendientes"),
                    Tab(text: "Aprobadas"),
                    Tab(text: "Rechazadas"),
                  ],
                ),
              ),
              const Expanded(
                child: TabBarView(
                  children: [
                    TaskListWidget(status: 'pending'),
                    TaskListWidget(status: 'approved'),
                    TaskListWidget(status: 'rejected'),
                  ],
                ),
              ),
            ],
          )
        )
      ),
    );
  }
}

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
						Get.toNamed('/taskDetail');
					},
					child: Container(
						padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 15),
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