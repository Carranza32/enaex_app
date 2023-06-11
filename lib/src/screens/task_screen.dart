import 'package:enaex_app/src/widgets/task/task_list_widget.dart';
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

