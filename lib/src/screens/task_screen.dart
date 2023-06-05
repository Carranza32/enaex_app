import 'package:flutter/material.dart';

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
        return ListTile(
          leading: Icon(icon, color: color),
          title: Text("Tarea $index"),
          subtitle: Text("Descripción de la tarea $index"),
          trailing: const Icon(Icons.arrow_forward_ios),
          onTap: () {
            Navigator.pushNamed(context, '/task-detail');
          },
        );
      }
    );
  }
}