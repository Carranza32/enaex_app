import 'package:enaex_app/src/utils/router.dart';
import 'package:enaex_app/src/utils/translations.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
	const MyApp({super.key});

	@override
	Widget build(BuildContext context) {
		return GetMaterialApp(
			title: 'Enaex App',
			getPages: Routes.route,
			initialRoute: '/login',
			locale: const Locale('es', 'ES'),
			translations: LanguageTranslations(),
			fallbackLocale: const Locale('es'),
			debugShowCheckedModeBanner: false,
			theme: ThemeData(
        platform: TargetPlatform.iOS,
        useMaterial3: false,
        // colorSchemeSeed: Colors.red,
        primaryColor: const Color(0xff3e444e),
				visualDensity: VisualDensity.adaptivePlatformDensity,
				inputDecorationTheme: const InputDecorationTheme(
					focusColor: Color(0xff3e444e),
				),
				appBarTheme: const AppBarTheme(
					color: Colors.white,
					centerTitle: true,
					titleTextStyle: TextStyle(
						color: Color(0xff3e444e),
						fontWeight: FontWeight.bold,
					),
					foregroundColor: Color(0xff3e444e),
					elevation: 0,
				),
			),
		);
	}
}