import 'package:get/get.dart';

import '../screens/index.dart';

class Routes {
	static final route = [
		GetPage(
			name: '/login',
			page: () => const LoginScreen(),
		),
	];
}