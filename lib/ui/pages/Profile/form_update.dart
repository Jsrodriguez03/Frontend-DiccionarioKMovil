import 'package:flutter/material.dart';
import 'package:frontend_diccionario/services/api_service.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';
import 'package:frontend_diccionario/ui/widgets/TextFormField/CustomTextfield.dart';

class FormUpdate extends StatelessWidget {
  final String title;

  const FormUpdate({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();

    return Container(
      color: AppTheme.primary,
      height: MediaQuery.of(context).size.height * 0.15,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomTextFormField(
            labelText: title,
            controller: textController,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () async {
                  debugPrint(textController.value.text);
                  //APIService.updateUser("Aqui va el token");
                },
                child: const Text(
                  "Actualizar",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(width: 10),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text(
                  "Cancelar",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
