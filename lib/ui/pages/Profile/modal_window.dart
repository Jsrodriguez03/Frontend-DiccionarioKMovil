import 'package:flutter/material.dart';
import 'package:frontend_diccionario/domain/entities/user.dart';
import 'package:frontend_diccionario/models/change_request_model.dart';
import 'package:frontend_diccionario/services/api_service.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';
import 'package:frontend_diccionario/ui/providers/login_provider.dart';
import 'package:frontend_diccionario/ui/widgets/TextFormField/CustomTextfield.dart';
import 'package:provider/provider.dart';

class ModalWindow extends StatelessWidget {
  final String title;

  const ModalWindow({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    final loginProvider = context.watch<LoginProvider>();

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
                  Navigator.of(context).pop();
                  final data = textController.value.text;
                  await _updateUser(loginProvider, data);
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

  Future<void> _updateUser(LoginProvider loginProvider, String data) async {
    User userChanges;

    switch (title) {
      case "Nombre":
        userChanges = User(fullName: data);
        break;
      case "Email":
        userChanges = User(email: data);
        break;
      default:
        userChanges = User(userName: data);
    }
    try {
      final changeModel = ChangeRequestModel(user: userChanges);
      final token = loginProvider.token;
      final userId = loginProvider.user.id;
      var response = await APIService.updateUser(token, changeModel, userId);

      if (response.status == "UPDATED") {
        loginProvider.updateUser(userChanges);
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
