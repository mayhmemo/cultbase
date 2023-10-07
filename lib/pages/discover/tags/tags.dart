import 'package:flutter/material.dart';

class ChoiceChipList extends StatefulWidget {
  final List<String> words;

  ChoiceChipList({required this.words});

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
    return Column(children: [
      Wrap(
        children: List.generate(widget.words.length, (index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ChoiceChip(
              label: Text(widget.words[index]),
              selected: isSelected[index],
              // selectedColor: Colors.red,
              onSelected: (isSelected) {
                setState(() {
                  this.isSelected[index] = isSelected;
                });
              },
            ),
          );
        }),
      )
    ]);
  }
}
