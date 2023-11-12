import 'package:flutter/material.dart';

class Livro {
  final String nome;
  final String capa;
  final String autor;
  final int quantidadePaginas;
  final int anoPublicacao;
  final String status;

  Livro({
    required this.nome,
    required this.capa,
    required this.autor,
    required this.quantidadePaginas,
    required this.anoPublicacao,
    required this.status,
  });
}

class LivroComponente extends StatelessWidget {
  final Livro livro;

  LivroComponente({required this.livro});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text(livro.nome),
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Image.network(
                    livro.capa,
                    scale: 0.1,
                    height: 400,
                    width: 400,
                  ),
                  Text('Autor: ${livro.autor}'),
                  Text('Quantidade de Páginas: ${livro.quantidadePaginas}'),
                  Text('Ano de Publicação: ${livro.anoPublicacao}'),
                ],
              ),
              actions: <Widget>[
                TextButton(
                  child: Text('Fechar'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
      },
      child: Card(
        child: Column(
          children: <Widget>[
            Image.network(
              livro.capa,
              height: 200,
              width: 150,
              fit: BoxFit.cover,
              scale: 0.1,
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                livro.nome,
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// void main() {
//   runApp(MaterialApp(
//     home: Scaffold(
//       appBar: AppBar(
//         title: Text('Livros'),
//       ),
//       body: Center(
//         child: LivroComponente(
//           livro: Livro(
//             nome: 'Nome do Livro',
//             capa:
//                 'https://example.com/caminho/para/a/imagem.jpg', // Substitua pelo URL da imagem real
//             autor: 'Nome do Autor',
//             quantidadePaginas: 200,
//             anoPublicacao: 2022,
//           ),
//         ),
//       ),
//     ),
//   ));
// }
