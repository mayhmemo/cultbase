import 'package:cultbase/pages/collection_page.dart';
import 'package:flutter/material.dart';

class ChoiceChipList extends StatefulWidget {
  final Function minhaFuncao;
  final List<ChipStatus> words;

  ChoiceChipList({required this.words, required this.minhaFuncao});

  @override
  _ChoiceChipListState createState() => _ChoiceChipListState();
}

class _ChoiceChipListState extends State<ChoiceChipList> {
  List<bool> isSelected = [];

  @override
  void initState() {
    super.initState();
    isSelected = List<bool>.filled(widget.words.length, false);
  }

  

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Wrap(
          children: List.generate(widget.words.length, (index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ChoiceChip(
                label: Text(widget.words[index].status),
                selected: isSelected[index],
                // selectedColor: Colors.red,
                onSelected: (isSelected) {
                  widget.words[index].active = !widget.words[index].active;
                  setState(() {
                    this.isSelected[index] = widget.words[index].active;
                  });

                  widget.minhaFuncao(widget.words);
                  
                },
              ),
            );
          }),
        )
      ],
    );
  }
}
