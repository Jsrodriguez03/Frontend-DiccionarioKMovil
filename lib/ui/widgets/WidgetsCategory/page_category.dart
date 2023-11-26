import 'package:flutter/material.dart';
import 'package:frontend_diccionario/domain/entities/word.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';
import 'package:frontend_diccionario/ui/providers/nav_provider.dart';
import 'package:frontend_diccionario/ui/widgets/WidgetsCategory/buscador_category.dart';
import 'package:frontend_diccionario/ui/widgets/WidgetsCategory/list_card_category.dart';
import 'package:provider/provider.dart';

class PageCategory extends StatefulWidget {
  const PageCategory({
    super.key,
    required this.words,
  });

  final List<Word> words;

  @override
  State<PageCategory> createState() => _PageCategoryState();
}

class _PageCategoryState extends State<PageCategory> {
  late TextEditingController controller;
  late String searchText;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
    searchText = "";

    controller.addListener(() {
      if (controller.text.isEmpty) {
        setState(() {
          searchText = "";
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final navProvider = context.watch<NavProvider>();
    return Container(
      color: AppTheme.primary,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Buscador(
            titleCategory: navProvider.categories[navProvider.page]["title"],
            onTextChanged: (text) {
              setState(() {
                searchText = text;
              });
            },
            controller: controller,
          ),
          ListCard(
              words: widget.words,
              searchText: searchText),
        ],
      ),
    );
  }
}
