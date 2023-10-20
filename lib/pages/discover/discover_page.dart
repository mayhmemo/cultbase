import 'package:cultbase/pages/components/search_bar.dart';
import 'package:cultbase/pages/discover/tags/tags.dart';
import 'package:flutter/material.dart';

import '../components/side_bar.dart';
import '../components/book/book_card.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({super.key});

  @override
  State<DiscoverPage> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  final List<String> words = [
    "Lendo",
    "Quero Ler",
    "Lidos",
    "Abandonei",
  ];

  List<Livro> livros = [
    Livro(
      nome: 'Duna',
      capa: '/assets/imagens/duna.jpg',
      autor: 'Markus Zusak',
      quantidadePaginas: 680,
      anoPublicacao: 1965,
    ),
    Livro(
      nome: 'Game of Thrones',
      capa: '/assets/imagens/game_of_thrones.jpg',
      autor: 'George R.R. Martin',
      quantidadePaginas: 600,
      anoPublicacao: 1996,
    ),
    Livro(
      nome: 'Maze Runner',
      capa: '/assets/imagens/maze_runner.jpg',
      autor: 'James Dashner',
      quantidadePaginas: 428,
      anoPublicacao: 2010,
    ),
    Livro(
      nome: 'O Nome do Vento',
      capa: '/assets/imagens/o_nome_do_vento.jpg',
      autor: 'Patrick Rothfuss',
      quantidadePaginas: 656,
      anoPublicacao: 2009,
    ),
    Livro(
      nome: 'Neuromancer',
      capa: '/assets/imagens/neuromancer.jpg',
      autor: 'Willian Gibson',
      quantidadePaginas: 320,
      anoPublicacao: 1984,
    ),
    Livro(
      nome: 'Percy Jackson',
      capa: '/assets/imagens/percy_jackson.jpg',
      autor: 'Rick Riordan',
      quantidadePaginas: 400,
      anoPublicacao: 2005,
    ),
    Livro(
      nome: 'Harry Potter',
      capa: '/assets/imagens/neuromancer.jpg',
      autor: 'J.K Rowling',
      quantidadePaginas: 592,
      anoPublicacao: 2007,
    ),
    // Adicione mais livros conforme necessário
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: const FlexibleSpaceBar(
          title: SearchBarApp(),
          titlePadding: EdgeInsetsDirectional.fromSTEB(4, 10, 4, 0),
          centerTitle: true,
        ),
      ),
      drawer: const SideBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: ChoiceChipList(words: words),
              alignment: Alignment.center,
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.all(13),
                child: Column(
                  children: [
                    Wrap(
                      children: livros
                          .map((livro) => LivroComponente(livro: livro))
                          .toList(),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}