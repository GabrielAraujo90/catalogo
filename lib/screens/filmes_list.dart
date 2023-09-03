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
      titulo: "Homem de Ferro 2",
      resumo: "Filme do Homem de Ferro",
      duracao: 140,
      capa:
          "https://observatoriodocinema.uol.com.br/wp-content/plugins/seox-image-magick/imagick_convert.php?width=904&height=508&format=webp&quality=91&imagick=/wp-content/uploads/2019/09/3211733-superhero-iron-man-in-the-avengers_1366x768-1068x600.jpg",
    ),
    Filme(
      id: 2,
      titulo: "Super Man",
      resumo: "Resumo do Super Man",
      duracao: 140,
      capa:
          "https://miro.medium.com/v2/resize:fit:1400/1*gOLsKIf2ciZsaXvsDrSqnQ.jpeg",
    ),
    Filme(
      id: 3,
      titulo: "Batman",
      resumo: "Filme do Batman",
      duracao: 120,
      capa:
          "https://files.tecnoblog.net/wp-content/uploads/2021/04/Qual-a-ordem-cronologica-dos-filmes-do-Batman-Deny-Freeman-Flickr.jpg",
    ),
    Filme(
      id: 4,
      titulo: "Mulher Maravilha",
      resumo: "Filme da Mulher Maravilha",
      duracao: 160,
      capa: "https://pbs.twimg.com/media/DHr_COiXcAAqPmE.jpg",
    ),
    // Adicionar mais filmes aqui!!!
  ];

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.red,
          centerTitle: true,
          title: const Text('Uniflix'),
          foregroundColor: Colors.black,
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
                      style: const TextStyle(fontSize: 2),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      ' ${movie.titulo}',
                      style: const TextStyle(fontSize: 16),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(' ${movie.resumo}'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(' ${movie.duracao}min'),
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
