import 'package:enaex_app/src/controllers/Auth/AuthController.dart';
import 'package:flutter/material.dart';
import 'package:enaex_app/src/constants.dart';
import 'package:get/get.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

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
								child: ListView(
									padding: const EdgeInsets.symmetric(horizontal: 20),
									children: [
										const Text('¡Bienvenido a Enaex Global!',
										textAlign: TextAlign.center,
										style: TextStyle(
											fontSize: 15,
											fontWeight: FontWeight.bold,
										),
									),

									Padding(
										padding: const EdgeInsets.symmetric(vertical: 30),
										child: Column(
											crossAxisAlignment: CrossAxisAlignment.start,
											children: [
												const Text("Correo electrónico"),
												const SizedBox(height: 10),
												TextFormField(
													controller: loginController.emailController,
													decoration: formFieldGreyStyle(),
												),
												const SizedBox(height: 20),

												const Text("Contraseña"),
												const SizedBox(height: 10),
												Obx(() => TextFormField(
														controller: loginController.passwordController,
														obscureText: loginController.isPasswordVisible.value,
														decoration: formFieldGreyStyle().copyWith(
															suffixIcon: IconButton(
																onPressed: () => loginController.isPasswordVisible.value = !loginController.isPasswordVisible.value,
																icon: Icon(loginController.isPasswordVisible.value ? Icons.visibility : Icons.visibility_off),
															)
														)
													),
												),
												const SizedBox(height: 10),
											],
										),
									),

									const SizedBox(height: 10),
									Padding(
										padding: EdgeInsets.symmetric(horizontal: size.width * 0.12),
										child: ElevatedButton(
											style: loginPrimaryButtonStyle(),
											child: const Text('Iniciar sesión', style: TextStyle(color: Colors.white, fontSize: 16)),
											onPressed: () {
												loginController.login();
											},
										),
									),
									const SizedBox(height: 20),
									Padding(
										padding: EdgeInsets.symmetric(horizontal: size.width * 0.12),
										child: OutlinedButton(
											style: loginOutlineButtonStyle(),
											child: const Text('Solicitar Acceso', style: TextStyle(fontSize: 16)),
											onPressed: () {
												Get.defaultDialog(
													contentPadding: const EdgeInsets.all(20),
													titlePadding: const EdgeInsets.only(top: 20),
													title: "Solicitud de acceso",
													content: Column(
														mainAxisSize: MainAxisSize.min,
														children: [
															const Text("Ingrese su correo electrónico"),
															const SizedBox(height: 10),
															TextField(
																controller: loginController.emailController,
																decoration: formFieldGreyStyle(),
															),
														],
													),
													confirm: ElevatedButton(
														style: primaryButtonStyle(),
														onPressed: () {
															Get.back();
															Get.defaultDialog(
																contentPadding: const EdgeInsets.all(20),
																titlePadding: const EdgeInsets.only(top: 20),
																title: "Solicitud enviada",
																content: Column(
																	children: [
																		const Text("Dentro de los próximos minutos llegará una clave de acceso al correo electrónico:"),
																		const SizedBox(height: 10),
																		Text(loginController.emailController.text),
																	],
																),
																cancel: OutlinedButton(
																	style: loginOutlineGrayButtonStyle(),
																	onPressed: () => Get.back(),
																	child: const Text("Volver"),
																),
																confirm: ElevatedButton(
																	style: primaryButtonStyle(),
																	onPressed: () {
																		Get.back();
																		Get.back();
																	},
																	child: const Text("Continuar"),
																),
															);
														},
														child: const Text("Enviar"),
													),
													cancel: OutlinedButton(
														style: loginOutlineGrayButtonStyle(),
														onPressed: () => Get.back(),
														child: const Text("Volver"),
													),
												);
											},
										),
									),


									const SizedBox(height: 20),
									Row(
										mainAxisAlignment: MainAxisAlignment.center,
										children: [
											const Text('¿Olvidó su contraseña?', style: TextStyle(color: Colors.red)),
											TextButton(
												onPressed: () {},
												child: const Text(' Recuperar aquí', style: TextStyle(decoration: TextDecoration.underline, color: Colors.red)),
											),
										],
									)
									],
								),
							)
						],
					),
				),
			),
		);
  }
}