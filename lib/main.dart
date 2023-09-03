import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Filme {
  final int id;
  final String titulo;
  final String resumo;
  final int duracao;
  final String capa;

  Filme({
    required this.id,
    required this.titulo,
    required this.resumo,
    required this.duracao,
    required this.capa,
  });
}

class MyApp extends StatelessWidget {
  final List<Filme> movies = [
    Filme(
      id: 1,
      titulo: "Senhor dos Anéis",
      resumo: "Sociedade do anel",
      duracao: 170,
      capa:
          "data:image/jpeg;base64,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",
    ),
    Filme(
      id: 2,
      titulo: "Harry potter ",
      resumo: "Pedra filosofal",
      duracao: 120,
      capa:
          "https://upload.wikimedia.org/wikipedia/pt/1/1d/Harry_Potter_Pedra_Filosofal_2001.jpg",
    ),
    Filme(
      id: 3,
      titulo: "Guerra mundial Z",
      resumo: "Zumbi",
      duracao: 140,
      capa:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMRYTn1B8G41oo1V2IaZ7ilq8upLU-L377WQJoM4965QIdeMcSCY1lfk6atDm-xfkcJ0U&usqp=CAU",
    ),
    Filme(
      id: 4,
      titulo: "Poderoso Chefão",
      resumo: "The Goodfather",
      duracao: 160,
      capa:
          "data:image/jpeg;base64,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",
    ),
    // Adicionar mais filmes aqui!!!
  ];

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 119, 15, 15),
        appBar: AppBar(
          backgroundColor: Colors.red,
          centerTitle: true,
          title: const Text('Uniflix'),
          foregroundColor: const Color.fromARGB(255, 145, 12, 12),
        ),
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: movies.length,
          itemBuilder: (context, index) {
            Colors.black;
            final movie = movies[index];

            return Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                    movie.capa,
                    height: 500,
                    width: 680,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'ID: ${movie.id}',
                      style: const TextStyle(fontSize: 1),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      ' ${movie.titulo}',
                      style: const TextStyle(fontSize: 18),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(' ${movie.resumo}'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(' ${movie.duracao} min'),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
