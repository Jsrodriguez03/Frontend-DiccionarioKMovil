import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';
import 'package:frontend_diccionario/ui/pages/Profile/modal_window.dart';

class ItemProfile extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData mainIcon;

  const ItemProfile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.mainIcon,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      textColor: Colors.white,
      iconColor: AppTheme.third,
      leading: Icon(mainIcon, size: 30),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: IconButton(
        onPressed: () {
          _createModal(context, title);
        },
        icon: const Icon(Icons.edit),
      ),
    );
  }
}

void _createModal(BuildContext context, title) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: AppTheme.primary,
    builder: (BuildContext bc) {
      return Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: SingleChildScrollView(child: ModalWindow(title: title)),
      );
    },
  );
}
