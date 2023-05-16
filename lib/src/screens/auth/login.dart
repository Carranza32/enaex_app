import 'package:flutter/material.dart';
import 'package:enaex_app/src/constants.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
	 	return SafeArea(
			child: Scaffold(
				body: Stack(
					children: [
						SingleChildScrollView(
							child: Column(
								children: [
									const Text("¡Bienvenido a Enaex Global!"),
									
									Form(
										child: Column(
											children: [
												TextFormField(
													decoration: formFieldStyle().copyWith(
                            labelText: "Usuario",
                          )
												),
												TextFormField(
													decoration: const InputDecoration(
														labelText: "Contraseña",
													),
												),
                        FilledButton(
                          onPressed: () {},
                          child: const Text("Guardar"),
                          style: primaryButtonStyle(),
                        ),
                        FilledButton(
                          onPressed: () {},
                          child: const Text("Guardar"),
                          style: primaryButtonStyle(),
                        ),
											],
										),
									)
								],
							),
						)
					],
				),
			),
		);
  }
}