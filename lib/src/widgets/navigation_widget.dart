import 'package:enaex_app/src/controllers/TabController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationWidget extends StatelessWidget {
  const NavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {

    return GetBuilder<TabsController>(
      builder: (controller) => BottomNavigationBar(
        currentIndex: controller.currentIndex,
				onTap: (i) => controller.setCurrentIndex(i),
				type: BottomNavigationBarType.fixed,
				backgroundColor: const Color(0xff3e444e),
				selectedItemColor: Colors.white,
				unselectedItemColor: Colors.white.withOpacity(0.5),
				elevation: 0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded, color: Colors.white),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.task_rounded, color: Colors.white),
            label: 'Tareas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_rounded, color: Colors.white),
            label: 'Notificaciones',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.power_settings_new_rounded, color: Colors.white),
            label: 'Cerrar',
          ),
        ],
      ),
    );
  }
}