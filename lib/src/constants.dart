import 'package:flutter/material.dart';

InputDecoration formFieldStyle() => const InputDecoration(
	// prefixIcon: Icon(Icons.calendar_today, color: Color(0xff111b31)),
	iconColor: Color(0xff111b31),
	labelStyle: TextStyle(color: Color(0xff111b31)),
	filled: true,
  fillColor: Color(0xffebedf2),
	border: OutlineInputBorder(
		borderRadius: BorderRadius.all(Radius.circular(50.0)),
		borderSide: BorderSide.none,
	),
);

ButtonStyle primaryButtonStyle() => ButtonStyle(
  backgroundColor: MaterialStateProperty.all<Color>(const Color(0xff3e444e)),
  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(const EdgeInsets.symmetric(horizontal: 30)),
  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(50.0),
    ),
  ),
);