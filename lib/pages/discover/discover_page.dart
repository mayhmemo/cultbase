import 'package:cultbase/pages/components/search_bar.dart';
import 'package:cultbase/pages/discover/tags/tags.dart';
import 'package:flutter/material.dart';

import '../components/book/book_card.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({super.key});

  @override
  State<DiscoverPage> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
 
  List<Livro> livros = [
    Livro(
      nome: 'Duna',
      capa: '/assets/imagens/duna.jpg',
      autor: 'Markus Zusak',
      quantidadePaginas: 680,
      anoPublicacao: 1965,
      status: 'Quero Ler',
    ),
    Livro(
      nome: 'Game of Thrones',
      capa: '/assets/imagens/game_of_thrones.jpg',
      autor: 'George R.R. Martin',
      quantidadePaginas: 600,
      anoPublicacao: 1996,
      status: 'Quero Ler',
    ),
    Livro(
      nome: 'Maze Runner',
      capa: '/assets/imagens/maze_runner.jpg',
      autor: 'James Dashner',
      quantidadePaginas: 428,
      anoPublicacao: 2010,
      status: 'Quero Ler',
    ),
    Livro(
      nome: 'O Nome do Vento',
      capa: '/assets/imagens/o_nome_do_vento.jpg',
      autor: 'Patrick Rothfuss',
      quantidadePaginas: 656,
      anoPublicacao: 2009,
      status: 'Quero Ler',
    ),
    Livro(
      nome: 'Neuromancer',
      capa: '/assets/imagens/neuromancer.jpg',
      autor: 'Willian Gibson',
      quantidadePaginas: 320,
      anoPublicacao: 1984,
      status: 'Quero Ler',
    ),
    Livro(
      nome: 'Percy Jackson',
      capa: '/assets/imagens/percy_jackson.jpg',
      autor: 'Rick Riordan',
      quantidadePaginas: 400,
      anoPublicacao: 2005,
      status: 'Quero Ler',
    ),
    Livro(
      nome: 'Harry Potter',
      capa: '/assets/imagens/neuromancer.jpg',
      autor: 'J.K Rowling',
      quantidadePaginas: 592,
      anoPublicacao: 2007,
      status: 'Quero Ler',
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(13),
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
