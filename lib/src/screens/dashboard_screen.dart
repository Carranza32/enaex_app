import 'package:enaex_app/src/widgets/my_segmented_control.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';


class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
		final List<double> data = [5, 10, 7, 15, 12, 9]; // Datos de ejemplo

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
							child: const Row(
								children: [
									CircleAvatar(
										radius: 30.0,
										backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/7/7f/Emma_Watson_2013.jpg'),
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
						),
					
						const SizedBox(height: 20),

						Container(
							padding: const EdgeInsets.all(20),
							height: 200,
							child: BarChart(
								BarChartData(
									borderData: FlBorderData(show: false),
									barGroups: data
										.asMap()
										.map((i, value) => MapEntry(
											i,
											BarChartGroupData(
												x: i,
												barRods: [
													BarChartRodData(
														toY: value,
														borderRadius: const BorderRadius.all(Radius.circular(0)),
														color: const Color(0xff01b8aa),
													),
												],
											),
										))
										.values
										.toList(),
									alignment: BarChartAlignment.spaceAround,
									titlesData: FlTitlesData(
										show: true,
										bottomTitles: AxisTitles(
											sideTitles: SideTitles(
												showTitles: true,
												getTitlesWidget: (double value, _) {
													switch (value.toInt()) {
														case 0:
															return const Text('L');
														case 1:
															return const Text('M');
														case 2:
															return const Text('M');
														case 3:
															return const Text('J');
														case 4:
															return const Text('V');
														case 5:
															return const Text('S');
														default:
															return const Text('');
													}
												},
											),
										),
										leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
									),
								),
							),
						),
					
						const SizedBox(height: 20),

						Container(
							alignment: Alignment.center,
							margin: EdgeInsets.all(20),
							height: 75,
							child: MySegmentedControl(isStretch: true, children: <int, Widget>{
								0: Text('Aislación'),
								1: Text('Andamios'),
								2: Text('Caldería'),
								3: Text('Confiabilidad'),
							}),
						),
						Container(
							alignment: Alignment.center,
							margin: EdgeInsets.all(20),
							height: 75,
							child: MySegmentedControl(isStretch: false, children: <int, Widget>{
								4: Text('Control'),
								5: Text('Eléctrica'),
								6: Text('Instrumentación'),
							}),
						),
						Container(
							alignment: Alignment.center,
							margin: EdgeInsets.all(20),
							height: 75,
							child: MySegmentedControl(isStretch: false, children: <int, Widget>{
								7: Text('Mecánica'),
								8: Text('Servicios'),
							}),
						),

						const SizedBox(height: 20),

						Container(
							padding: const EdgeInsets.all(10),
							height: 250,
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
											Container(												
												padding: const EdgeInsets.all(20),
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
											Container(												
												padding: const EdgeInsets.all(20),
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
											)
										],
									),
									const SizedBox(height: 10),
									Container(												
										padding: const EdgeInsets.all(20),
										decoration: BoxDecoration(
											borderRadius: BorderRadius.circular(10),
											color: Colors.white,
										),
										child: const Column(
											children: [
												Text("Cumplimiento % OT", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
												SizedBox(height: 5),
												Text("445", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 20)),
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