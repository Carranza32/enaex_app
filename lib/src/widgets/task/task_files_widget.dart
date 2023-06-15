import 'package:enaex_app/src/constants.dart';
import 'package:flutter/material.dart';

class TaskFilesWidegt extends StatelessWidget {
	const TaskFilesWidegt({super.key});

	@override
	Widget build(BuildContext context) {
		return ListView.builder(
			shrinkWrap: true,
			itemCount: 3,
			itemBuilder: (context, index) {
				return Container(
					padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
					margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
					decoration: containerCardDecoration(),
					child: Row(
						mainAxisAlignment: MainAxisAlignment.spaceBetween,
						children: [
							const Row(
								children: [
									Icon(Icons.picture_as_pdf_outlined, color: Color(0xffe20613), size: 50),
									SizedBox(width: 15),
									Column(
										crossAxisAlignment: CrossAxisAlignment.start,
										children: [
											Text("FORMULARIO - PTS", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
											SizedBox(height: 5),
											Text("Tamaño: 12MB", style: TextStyle(fontSize: 12, color: Colors.grey)),
										],
									),
								],
							),

							FilledButton(
								style: ButtonStyle(
									backgroundColor: MaterialStateProperty.all(const Color(0xffe20613)),
									padding: MaterialStateProperty.all(const EdgeInsets.symmetric(horizontal: 25, vertical: 8)),
								),
								child: const Icon(Icons.download, color: Colors.white),
								onPressed: () {},
							)
						],
					),
				);
			},
		);
	}
}