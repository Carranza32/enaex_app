import 'package:enaex_app/src/controllers/TabController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationWidget extends StatelessWidget {
  const NavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {

    return GetBuilder<TabsController>(
      builder: (controller) => NavigationBar(
        selectedIndex: controller.currentIndex,
        onDestinationSelected: (i) => controller.setCurrentIndex(i),
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_rounded),
            label: 'Dashboard',
          ),
          NavigationDestination(
            icon: Icon(Icons.task_rounded),
            label: 'Tareas',
          ),
          NavigationDestination(
            icon: Icon(Icons.notifications_rounded),
            label: 'Notificaciones',
          ),
          NavigationDestination(
            icon: Icon(Icons.power_settings_new_rounded),
            label: 'Cerrar',
          ),
        ],
      ),
    );
  }
}