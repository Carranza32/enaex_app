import 'package:flutter/material.dart';

InputDecoration formFieldGreyStyle() => const InputDecoration(
	// prefixIcon: Icon(Icons.calendar_today, color: Color(0xff111b31)),
	iconColor: Color(0xff111b31),
	labelStyle: TextStyle(color: Color(0xff111b31)),
	filled: true,
  fillColor: Color(0xffebedf2),
	contentPadding: EdgeInsets.only(left: 20),
	border: OutlineInputBorder(
		borderRadius: BorderRadius.all(Radius.circular(50.0)),
		borderSide: BorderSide.none,
	),
);

InputDecoration formFieldOutlineStyle() => const InputDecoration(
	iconColor: Color(0xff111b31),
	labelStyle: TextStyle(color: Color(0xff111b31)),
	filled: false,
	contentPadding: EdgeInsets.only(left: 20),
	border: OutlineInputBorder(
		borderRadius: BorderRadius.all(Radius.circular(50.0)),
		borderSide: BorderSide(color: Color(0xff111b31)),
	),
);

ButtonStyle primaryButtonStyle({double horizontalPadding = 50, double verticalPadding = 10}) => ButtonStyle(
  backgroundColor: MaterialStateProperty.all<Color>(const Color(0xff3e444e)),
  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: verticalPadding)),
  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(50.0),
    ),
  ),
);

ButtonStyle loginPrimaryButtonStyle() => ButtonStyle(
	backgroundColor: MaterialStateProperty.all<Color>(const Color(0xffe20613)),
	minimumSize: MaterialStateProperty.all<Size>(const Size(double.infinity, 50)),
	foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
	padding: MaterialStateProperty.all<EdgeInsetsGeometry>(const EdgeInsets.symmetric(horizontal: 50, vertical: 10)),
	shape: MaterialStateProperty.all<RoundedRectangleBorder>(
		RoundedRectangleBorder(
			borderRadius: BorderRadius.circular(50.0),
		),
	),
);

ButtonStyle loginOutlineButtonStyle() => ButtonStyle(
	minimumSize: MaterialStateProperty.all<Size>(const Size(double.infinity, 50)),
	foregroundColor: MaterialStateProperty.all<Color>(const Color(0xffe20613)),
	padding: MaterialStateProperty.all<EdgeInsetsGeometry>(const EdgeInsets.symmetric(horizontal: 50, vertical: 10)),
	side: MaterialStateProperty.all<BorderSide>(const BorderSide(color: Color(0xffe20613) )),
	shape: MaterialStateProperty.all<RoundedRectangleBorder>(
		RoundedRectangleBorder(
			borderRadius: BorderRadius.circular(50.0),			
		),
	),
);

ButtonStyle loginOutlineGrayButtonStyle() => ButtonStyle(
	foregroundColor: MaterialStateProperty.all<Color>(const Color(0xff111b31)),
	padding: MaterialStateProperty.all<EdgeInsetsGeometry>(const EdgeInsets.symmetric(horizontal: 50, vertical: 10)),
	side: MaterialStateProperty.all<BorderSide>(const BorderSide(color: Color(0xff111b31) )),
	shape: MaterialStateProperty.all<RoundedRectangleBorder>(
		RoundedRectangleBorder(
			borderRadius: BorderRadius.circular(50.0),			
		),
	),
);

BoxDecoration containerCardDecoration({Color color = Colors.white, double radius = 10}) => BoxDecoration(
	borderRadius: BorderRadius.circular(radius),
	color: color,
	boxShadow: const [
		BoxShadow(
			offset: Offset(0, 3),
			spreadRadius: -4,
			blurRadius: 10,
			color: Color.fromRGBO(0, 0, 0, 0.2),
		),
	],
);