import 'package:cultbase/pages/components/book/book_card.dart';
import 'package:cultbase/pages/components/side_bar.dart';
import 'package:cultbase/pages/discover/tags/tags.dart';
import 'package:flutter/material.dart';

class ChipStatus {
  final String status;
  late bool active;

  ChipStatus({
    required this.status,
    required this.active,
  });
}

class CollectionPage extends StatefulWidget {
  const CollectionPage({super.key});

  @override
  State<CollectionPage> createState() => _CollectionPageState();
}

class _CollectionPageState extends State<CollectionPage> {
  String selectedStatus = ""; // Status padrão

  List<ChipStatus> words = [
    ChipStatus(status: "Lendo", active: false),
    ChipStatus(status: "Quero Ler", active: false),
    ChipStatus(status: "Lido", active: false),
    ChipStatus(status: "Abandonei", active: false),
  ];

  List<Livro> Original_livros = [
    Livro(
      nome: '1984',
      capa: '/assets/imagens/1984.jpg',
      autor: 'George Orwell',
      quantidadePaginas: 316,
      anoPublicacao: 1949,
      status: "Lendo",
    ),
    Livro(
      nome: 'Batalha Apocalipse',
      capa: '/assets/imagens/bt_apocalipse.jpg',
      autor: 'Eduardo Spohr',
      quantidadePaginas: 628,
      anoPublicacao: 2007,
      status: "Quero Ler",
    ),
    Livro(
      nome: 'Gestao do Tempo',
      capa: '/assets/imagens/gestao_tempo.jpg',
      autor: 'Harvard',
      quantidadePaginas: 96,
      anoPublicacao: 2022,
      status: "Quero Ler",
    ),
    Livro(
      nome: 'Jogos Vorazes',
      capa: '/assets/imagens/jogos_vorazes.jpg',
      autor: 'Suzane Collins',
      quantidadePaginas: 342,
      anoPublicacao: 2008,
      status: "Lido",
    ),
    Livro(
      nome: 'Mochileiro',
      capa: '/assets/imagens/mochileiro.jpg',
      autor: 'Douglas Adams',
      quantidadePaginas: 784,
      anoPublicacao: 2020,
      status: "Lido",
    ),
    Livro(
      nome: 'Musashi',
      capa: '/assets/imagens/musashi.jpg',
      autor: 'Miyamoto Musashi',
      quantidadePaginas: 158,
      anoPublicacao: 2017,
      status: "Lido",
    ),
    Livro(
      nome: 'Pensa e enriqueça',
      capa: '/assets/imagens/pensa_enriqueca.jpg',
      autor: 'Napoleon Hill',
      quantidadePaginas: 368,
      anoPublicacao: 2020,
      status: "Abandonei",
    ),
    // Adicione mais livros conforme necessário
  ];

  List<Livro> livros = [
    Livro(
      nome: '1984',
      capa: '/assets/imagens/1984.jpg',
      autor: 'George Orwell',
      quantidadePaginas: 316,
      anoPublicacao: 1949,
      status: "Lendo",
    ),
    Livro(
      nome: 'Batalha Apocalipse',
      capa: '/assets/imagens/bt_apocalipse.jpg',
      autor: 'Eduardo Spohr',
      quantidadePaginas: 628,
      anoPublicacao: 2007,
      status: "Quero Ler",
    ),
    Livro(
      nome: 'Gestao do Tempo',
      capa: '/assets/imagens/gestao_tempo.jpg',
      autor: 'Harvard',
      quantidadePaginas: 96,
      anoPublicacao: 2022,
      status: "Quero Ler",
    ),
    Livro(
      nome: 'Jogos Vorazes',
      capa: '/assets/imagens/jogos_vorazes.jpg',
      autor: 'Suzane Collins',
      quantidadePaginas: 342,
      anoPublicacao: 2008,
      status: "Lido",
    ),
    Livro(
      nome: 'Mochileiro',
      capa: '/assets/imagens/mochileiro.jpg',
      autor: 'Douglas Adams',
      quantidadePaginas: 784,
      anoPublicacao: 2020,
      status: "Lido",
    ),
    Livro(
      nome: 'Musashi',
      capa: '/assets/imagens/musashi.jpg',
      autor: 'Miyamoto Musashi',
      quantidadePaginas: 158,
      anoPublicacao: 2017,
      status: "Lido",
    ),
    Livro(
      nome: 'Pensa e enriqueça',
      capa: '/assets/imagens/pensa_enriqueca.jpg',
      autor: 'Napoleon Hill',
      quantidadePaginas: 368,
      anoPublicacao: 2020,
      status: "Abandonei",
    ),
    // Adicione mais livros conforme necessário
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Collection'),
      ),
      drawer: const SideBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: ChoiceChipList(words: words, minhaFuncao: filterBooks),
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

  void filterBooks(List<ChipStatus> chips) {
    List chipsParsed = [];
    for (ChipStatus chip in chips) {
      if (chip.active == true) {
        chipsParsed.add(chip.status);
      }
    }


    // Atualize a lista de livros exibida com base no status selecionado
    if (chipsParsed.length > 0) {
      // List<Livro> filteredBooks = livros.where((livro) => livro.status == chipArray).toList();
      List<Livro> filteredBooks =
          Original_livros.where((livro) => chipsParsed.contains(livro.status))
              .toList();
      setState(() {
        livros = filteredBooks;
      });
    } else {
      List<Livro> filteredBooks = Original_livros;
      setState(() {
        livros = filteredBooks;
      });
    }
    // Atualize o estado da tela com a nova lista filtrada
  }
}
