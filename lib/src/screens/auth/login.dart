import 'package:enaex_app/src/controllers/Auth/AuthController.dart';
import 'package:enaex_app/src/widgets/auth/login_form_widget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
	// final GlobalKey<FormState> formKey = GlobalKey<FormState>();
	final AuthController loginController = AuthController();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
		final Size size = MediaQuery.of(context).size;

	 	return SafeArea(
			child: Scaffold(
				backgroundColor: Colors.white,
				body: Form(
					child: Column(
						children: [
							Image.asset(
								'assets/EnaexLogin.png',
								width: size.width * 1,
							),
							const SizedBox(height: 30),
							
							Expanded(
								child: LoginFormWidget(loginController: loginController),
							)
						],
					),
				),
			),
		);
  }
}