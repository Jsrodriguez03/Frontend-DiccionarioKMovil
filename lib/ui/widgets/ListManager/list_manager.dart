import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/widgets/Buttoms/popup_menu_buttom.dart';

class ListManage extends StatelessWidget {
  const ListManage({
    Key? key,
    required this.data,
    required this.title,
    required this.tipo,
  }) : super(key: key);

  final List<List<String>> data;
  final String title;
  final int tipo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 10, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Color(0xFFE6C068),
              fontSize: 40,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: data.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: data[index][2].isNotEmpty
                          ? NetworkImage(data[index][2])
                          : const AssetImage("assets/user.jpg")
                              as ImageProvider,
                    ),
                    title: Text(
                      data[index][0],
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    subtitle: Text(
                      data[index][1],
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                    trailing: CustomPopupMenuButtom(tipo: tipo),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
