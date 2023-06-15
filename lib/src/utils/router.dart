import 'package:enaex_app/src/screens/settings_screen.dart';
import 'package:get/get.dart';

import '../screens/index.dart';

class Routes {
	static final route = [
		GetPage(
			name: '/login',
			page: () => LoginScreen(),
		),
    GetPage(
      name: '/home',
      page: () => TabScreen(),
    ),
		GetPage(
			name: '/taskDetail',
			page: () => TaskDetailScreen(),
		),
		GetPage(
			name: '/settings',
			page: () => SettingsScreen(),
		),
	];
}