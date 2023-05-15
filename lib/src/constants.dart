import 'package:flutter/material.dart';

InputDecoration formFieldStyle() => const InputDecoration(
	// prefixIcon: Icon(Icons.calendar_today, color: Color(0xff111b31)),
	iconColor: Color(0xff111b31),
	labelStyle: TextStyle(color: Color(0xff111b31)),
	filled: true,
	border: OutlineInputBorder(
		borderRadius: BorderRadius.all(Radius.circular(10.0)),
		borderSide: BorderSide.none,
	),
);