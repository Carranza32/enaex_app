import 'package:enaex_app/src/controllers/TaskDetailController.dart';
import 'package:enaex_app/src/widgets/task/task_files_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import '../constants.dart';

class TaskDetailScreen extends StatelessWidget {
	const TaskDetailScreen({super.key});

	@override
	Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 60,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(222, 231, 240, .57),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.transparent),
      ),
    );
		final controller = Get.put(TaskDetailController());

		return SafeArea(
			child: Scaffold(
				appBar: AppBar(
					title: const Text("Detalle de tarea"),
				),
				body: Column(
					children: [
						Container(
							padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
							margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
							decoration: containerCardDecoration(),
							child: Column(
								children: [
									Row(
										mainAxisAlignment: MainAxisAlignment.spaceBetween,
										children: [
											Column(
												children: [
													const Text("Permiso Trabajo Seguro N°: PD - 348", style: TextStyle(fontWeight: FontWeight.bold)),
													const SizedBox(height: 15),
													Text("Agregado a las 12:11 - 18/01/2023", style: TextStyle(color: Colors.grey[700])),
												],
											),

											Icon(Icons.access_time, color: Colors.grey[700])
										],
									),
									const SizedBox(height: 20),
									const Text("Descripción del trabajo: Retiro Aislación, Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium.")
								],
							),
						),

						Container(
							width: double.infinity,
							padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 10),
							margin: const EdgeInsets.symmetric(vertical: 20),
							color: const Color(0xff3e444e),
							child: const Text("Documentos Adjuntos", style: TextStyle(color: Colors.white)),
						),

						Expanded(
							child: Column(
								children: [
									const TaskFilesWidegt(),
									const SizedBox(height: 20),

									Row(
										mainAxisAlignment: MainAxisAlignment.spaceEvenly,
										children: [
											OutlinedButton(
												style: loginOutlineGrayButtonStyle(),
												onPressed: () => _rejectDialog(controller, defaultPinTheme),
												child: const Text("Rechazar"),
											),

											ElevatedButton(
												style: primaryButtonStyle(),
												onPressed: () => _approveDialog(controller, defaultPinTheme),
												child: const Text("Aprobar"),
											),
										],
									)
								],
							)
						),
					],
				),
			),
		);
	}
}

_closeDialog(){
	Get.back();
}

List<Widget> _rejectOptions(){
	return [
		RadioListTile(
			title: const Text("Ut enim ad minima veniam, quis Nostrum."),
			value: 1,
			groupValue: 1,
			onChanged: (value) {},
		),
		RadioListTile(
			title: const Text("Quis autem vel eum iure reprehenderit qui"),
			value: 2,
			groupValue: 1,
			onChanged: (value) {},
		),
		RadioListTile(
			title: const Text("At vero eos et accusamus et iusto odio"),
			value: 3,
			groupValue: 1,
			onChanged: (value) {},
		),
		RadioListTile(
			title: const Text("Et harum quidem rerum facilis est et expedita."),
			value: 4,
			groupValue: 1,
			onChanged: (value) {},
		),
	];
}

_rejectDialog(controller, defaultPinTheme){
	Get.defaultDialog(
		title: "¿Por qué rechazas la tarea?",
		content: Column(
			children: _rejectOptions(),
		),
		cancel: OutlinedButton(
			style: loginOutlineGrayButtonStyle(),
			onPressed: () => Get.back(),
			child: const Text("Cancelar"),
		),
		confirm: ElevatedButton(
			style: primaryButtonStyle(),
			onPressed: () => _askForPin(controller, defaultPinTheme, "Rechazar tarea"),
			child: const Text("Continuar"),
		),
	);
}

_approveDialog(controller, defaultPinTheme){
	Get.defaultDialog(
		// contentPadding: const EdgeInsets.all(20),
		titlePadding: const EdgeInsets.only(top: 20),
		title: "Aprobar tarea",
		content: Column(
			children: [
				const Text("¿Deseas aprobar esta tarea?"),
				const SizedBox(height: 20),

				Row(
					mainAxisAlignment: MainAxisAlignment.spaceEvenly,
					children: [
						OutlinedButton(
							style: loginOutlineGrayButtonStyle(),
							onPressed: () => _closeDialog(),
							child: const Text("Cancelar"),
						),

						ElevatedButton(
							style: primaryButtonStyle(),
							onPressed: () => _askForPin(controller, defaultPinTheme, "Aprobar tarea"),
							child: const Text("Aprobar"),
						),
					],
				)
			],
		),
	);
}

_askForPin(controller, defaultPinTheme, title){
	_closeDialog();
				
	Get.defaultDialog(
		title: "Digite PIN de verificación",
		content: Pinput(
			length: controller.pinLength,
			controller: controller.pinController,
			focusNode: controller.focusNode,
			defaultPinTheme: defaultPinTheme,
			obscureText: true,
			focusedPinTheme: defaultPinTheme.copyWith(
				height: 68,
				width: 64,
				decoration: defaultPinTheme.decoration!.copyWith(
					border: Border.all(color: const Color.fromRGBO(114, 178, 238, 1)),
				),
			),
			errorPinTheme: defaultPinTheme.copyWith(
				decoration: BoxDecoration(
					color: const Color.fromRGBO(255, 234, 238, 1),
					borderRadius: BorderRadius.circular(8),
				),
			),
			onChanged: (String pin) {
				print('Current pin:$pin');
			},
			onSubmitted: (String pin) {
				print('Current pin:$pin');
			},
		),
		cancel: OutlinedButton(
			style: loginOutlineGrayButtonStyle(),
			onPressed: () => Get.back(),
			child: const Text("Cancelar"),
		),
		confirm: ElevatedButton(
			style: primaryButtonStyle(),
			onPressed: () {
				_closeDialog();
				_closeDialog();
			},
			child: const Text("Continuar"),
		),
	);
}