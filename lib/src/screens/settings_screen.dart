import 'package:enaex_app/src/widgets/profile_data_widget.dart';
import 'package:enaex_app/src/widgets/security_tab_widget.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class SettingsScreen extends StatelessWidget {
	const SettingsScreen({super.key});

	@override
	Widget build(BuildContext context) {
		return SafeArea(
			child: Scaffold(
				appBar: AppBar(
					title: const Text('Tu perfil'),
				),
				body: Padding(
					padding: const EdgeInsets.all(20),
					child: DefaultTabController(
						length: 2,
						child: Column(
							children: [
								Container(
									constraints: const BoxConstraints.expand(height: 50),
									margin: const EdgeInsets.only(bottom: 20),
									child: const TabBar(
										indicatorColor: Colors.red,
										labelColor: Colors.black,
										tabs: [
											Tab(text: "Información personal"),
											Tab(text: "Seguridad"),
										],
									),
								),
								Expanded(
									child: TabBarView(
										children: [
											Container(
												padding: const EdgeInsets.all(20),
												decoration: containerCardDecoration(),
												child: ProfileDataTabWidget(),
											),

											SingleChildScrollView(
												child: SecurityTabWidget(),
											)
										],
									),
								),
							],
						),
					),
				),
			),
		);
	}
}