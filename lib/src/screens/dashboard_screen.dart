import 'package:d_chart/d_chart.dart';
import 'package:enaex_app/src/widgets/my_segmented_control.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:gauge_indicator/gauge_indicator.dart';
import 'package:get/get.dart';


class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
		final List<double> data = [5, 10, 7, 15, 12, 9]; // Datos de ejemplo
    final double value = 65.0; // Datos de ejemplo

    return SafeArea(
			child: Scaffold(
				appBar: AppBar(
					title: const Text('Dashboard'),
				),
				body: ListView(
					children: [
						Container(
							margin: EdgeInsets.all(20),
							padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
							decoration: BoxDecoration(
								borderRadius: BorderRadius.circular(10),
								color: const Color(0xff3e444e),
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
									const Row(
										children: [
											CircleAvatar(
												radius: 30.0,
												backgroundImage: AssetImage("assets/Emma_Watson_2013.jpg"),
												backgroundColor: Colors.transparent,
											),
											SizedBox(width: 15),
											Column(
												crossAxisAlignment: CrossAxisAlignment.start,
												children: [
													Text("Nombre Apellido", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
													SizedBox(height: 5),
													Text("Cargo/Posicion", style: TextStyle(color: Colors.white)),
												],
											),
										],
									),

									IconButton(
										icon: Icon(Icons.settings, color: Colors.white, size: 20),
										onPressed: () => Get.toNamed('/settings'),
									)
								],
							)
						),
					
						const SizedBox(height: 0),

						Container(
							alignment: Alignment.center,
							child: Text("Resumen PTS Digital", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
						),

						const Divider(),

						Container(
							padding: const EdgeInsets.all(20),
							height: 250,
							child: DChartBar(
								data: const [
										{
												'id': 'Bar',
												'data': [
														{'domain': 'Lu 17', 'measure': 6},
														{'domain': 'Vi 14', 'measure': 1},
														{'domain': 'Ju 13', 'measure': 11},
														{'domain': 'Mi 12', 'measure': 0},
														{'domain': 'Mar 13', 'measure': 13},
														{'domain': 'Vi 07', 'measure': 2},
														{'domain': 'Mi 05', 'measure': 3},
												],
										},
								],
								domainLabelPaddingToAxisLine: 16,
								axisLineTick: 1,
								axisLinePointTick: 1,
								axisLinePointWidth: 1,
								axisLineColor: const Color(0xff01b8aa),
								measureLabelPaddingToAxisLine: 16,
								barColor: (barData, index, id) => const Color(0xff01b8aa),
								barValue: (barData, index) => barData['measure'].toString(),
								barValuePosition: BarValuePosition.inside,
								barValueColor: Colors.white,
								showMeasureLine: true,
								showDomainLine: true,
								showBarValue: true,
								animate: true,
								verticalDirection: false,
							),
						),
					
						const SizedBox(height: 20),

						Container(
							alignment: Alignment.center,
							margin: EdgeInsets.all(20),
							height: 75,
							child: SingleChildScrollView(
								scrollDirection: Axis.horizontal,
								child: MySegmentedControl(isStretch: false, children: <int, Widget>{
								0: Text('Aislación'),
								1: Text('Andamios'),
								2: Text('Caldería'),
								3: Text('Confiabilidad'),
								4: Text('Control'),
								5: Text('Eléctrica'),
								6: Text('Instrumentación'),
								7: Text('Mecánica'),
								8: Text('Servicios'),
							}),
							),
						),
						// Container(
						// 	alignment: Alignment.center,
						// 	margin: EdgeInsets.all(20),
						// 	height: 75,
						// 	child: MySegmentedControl(isStretch: false, children: <int, Widget>{
						// 		4: Text('Control'),
						// 		5: Text('Eléctrica'),
						// 		6: Text('Instrumentación'),
						// 	}),
						// ),
						// Container(
						// 	alignment: Alignment.center,
						// 	margin: EdgeInsets.all(20),
						// 	height: 75,
						// 	child: MySegmentedControl(isStretch: false, children: <int, Widget>{
						// 		7: Text('Mecánica'),
						// 		8: Text('Servicios'),
						// 	}),
						// ),

						const SizedBox(height: 20),

						Container(
							padding: const EdgeInsets.all(10),
							height: 350,
							decoration: const BoxDecoration(
								borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
								color: Color(0xff3e444e),
							),
							child: Column(
								children: [
									Row(
										crossAxisAlignment: CrossAxisAlignment.center,
										mainAxisAlignment: MainAxisAlignment.spaceAround,
										children: [
											Expanded(
												child: Container(												
												padding: const EdgeInsets.all(20),
												margin: const EdgeInsets.symmetric(horizontal: 5),
												decoration: BoxDecoration(
													borderRadius: BorderRadius.circular(10),
													color: Colors.white,
												),
												child: const Column(
													children: [
														Text("PTS Solucionados", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
														SizedBox(height: 5),
														Text("445", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 20)),
													],
												),
											),
											),
											Expanded(
												child: Container(												
												padding: const EdgeInsets.all(20),
												margin: const EdgeInsets.symmetric(horizontal: 5),
												decoration: BoxDecoration(
													borderRadius: BorderRadius.circular(10),
													color: Colors.white,
												),
												child: const Column(
													children: [
														Text("PTS Cerrados", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
														SizedBox(height: 5),
														Text("109", style: TextStyle(color: Color(0xff3e444e), fontWeight: FontWeight.bold, fontSize: 20)),
													],
												),
											),
											)
										],
									),
									const SizedBox(height: 10),
									Container(												
										padding: const EdgeInsets.all(20),
										margin: const EdgeInsets.symmetric(horizontal: 45),
										decoration: BoxDecoration(
											borderRadius: BorderRadius.circular(10),
											color: Colors.white,
										),
										child: Column(
											children: [
												const Text("Cumplimiento % OT", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
												const SizedBox(height: 5),
                        
												Container(
													height: 150,
													child: DChartGauge(
														donutWidth: 15,
														data: const [
																{'domain': 'Off', 'measure': 24.5},
														],
														fillColor: (pieData, index) {
															switch (pieData['domain']) {
																case 'Off':
																	return const Color(0xff01b8aa);
																case 'Warm':
																	return Colors.orange;
																default:
																	return Colors.red;
															}
														},
														showLabelLine: false,
														animate: true,
														labelPosition: PieLabelPosition.outside,
														labelFontSize: 20,
														pieLabel: (pieData, index) {
															return "${pieData['measure']}%";
														},
														labelPadding: 0,
														labelColor: Colors.black,
												),
												)
											],
										),
									),
								],
							),
						)
					],
				),
			)
		);
  }
}