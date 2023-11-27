import 'package:flutter/material.dart';
import 'package:frontend_diccionario/domain/entities/word.dart';
import 'package:frontend_diccionario/ui/providers/words_provider.dart';
import 'package:frontend_diccionario/ui/widgets/WidgetsCategory/page_category.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:provider/provider.dart';

class AnimalsCategory extends StatefulWidget {
  const AnimalsCategory({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _AnimalsCategoryState createState() => _AnimalsCategoryState();
}

class _AnimalsCategoryState extends State<AnimalsCategory> {
  bool isLoading = true; // Estado para rastrear si se están cargando los datos
  List<Word> animals = [];

  @override
  void initState() {
    super.initState();

    // Simula un tiempo de carga
    Future.delayed(const Duration(milliseconds: 500), () {
      final wordsProvider = context.read<WordsProvider>();
      for (var word in wordsProvider.words) {
        if (word.category == "animals") {
          animals.add(word);
        }
      }

      // Marca como cargados después de 1 segundo (reemplaza con tu lógica real)
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      opacity: 0.0,
      color: Colors.black,
      progressIndicator: const CircularProgressIndicator(),
      child: PageCategory(
        words: animals,
      ),
    );
  }
}
