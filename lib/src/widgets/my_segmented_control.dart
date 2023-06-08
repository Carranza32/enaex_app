import 'package:flutter/material.dart';
import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';

class MySegmentedControl extends StatelessWidget {
	const MySegmentedControl({super.key, required this.children, required this.isStretch});
	final Map<int, Widget> children;
	final bool isStretch;

	@override
	Widget build(BuildContext context) {
		return CustomSlidingSegmentedControl(
			children: children,
			duration: const Duration(milliseconds: 300),
			curve: Curves.easeInToLinear,
			onValueChanged: (v) {
			},
			innerPadding: const EdgeInsets.all(7),
			isStretch: isStretch,								
			decoration: BoxDecoration(
				color: Colors.grey.withOpacity(.2),
				borderRadius: BorderRadius.circular(50),
			),
			thumbDecoration: BoxDecoration(
				color: const Color(0xff01b8aa),
				borderRadius: BorderRadius.circular(50),
				boxShadow: [
					BoxShadow(
						color: Colors.black.withOpacity(.1),
						blurRadius: 15,
						spreadRadius: -3,
						offset: const Offset(
							0.0,
							10.0,
						),
					),
				],
			),
		);
	}
}