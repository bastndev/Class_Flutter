import 'package:bloc_class/src/data/phrases_repository.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String phrase = "...";
  late PhrasesRepository _phrasesRepository;

  @override
  void initState() {
    super.initState();
    _phrasesRepository = PhrasesRepository();
  }

  void _getRandomPhrases() async {
    String newPhrase = await _phrasesRepository.aleatoryPhrase();
    setState(() => phrase = newPhrase);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bloc DEMO"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              phrase,
              style: Theme.of(context).textTheme.headlineSmall,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: _getRandomPhrases,
              child: const Text("Change phrase 2"),
            ),
          ],
        ),
      ),
    );
  }
}
