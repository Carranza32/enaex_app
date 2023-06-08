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

ButtonStyle primaryButtonStyle() => ButtonStyle(
  backgroundColor: MaterialStateProperty.all<Color>(const Color(0xff3e444e)),
  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(const EdgeInsets.symmetric(horizontal: 50, vertical: 20)),
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
	padding: MaterialStateProperty.all<EdgeInsetsGeometry>(const EdgeInsets.symmetric(horizontal: 50, vertical: 20)),
	side: MaterialStateProperty.all<BorderSide>(const BorderSide(color: Color(0xff111b31) )),
	shape: MaterialStateProperty.all<RoundedRectangleBorder>(
		RoundedRectangleBorder(
			borderRadius: BorderRadius.circular(50.0),			
		),
	),
);