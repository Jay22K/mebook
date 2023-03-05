import 'package:flutter/material.dart';
import 'package:mebook/constants.dart';

class chips extends StatefulWidget {
  const chips({super.key});

  @override
  State<chips> createState() => _chipsState();
}

class _chipsState extends State<chips> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const <Widget>[
        SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          scrollDirection: Axis.horizontal,
          child: ChoiceChips(
            chipName: [
              "Design",
              "Poetry",
              "Adventure",
              "Novel",
              "Kids",
              "Crime",
              "Sci-Fi",
              "Spiritual",
              "Romantic"
            ],
          ),
        ),
      ],
    );
  }
}

class ChoiceChips extends StatefulWidget {
  final List chipName;
  const ChoiceChips({Key? key, required this.chipName}) : super(key: key);

  @override
  _ChoiceChipsState createState() => _ChoiceChipsState();
}

class _ChoiceChipsState extends State<ChoiceChips> {
  String _isSelected = "";

  _buildChoiceList() {
    List<Widget> choices = [];
    widget.chipName.forEach((item) {
      choices.add(Container(
        //padding: EdgeInsets.all(left: 20),

        child: ChoiceChip(
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          label: Text(item),
          labelStyle: TextStyle(color: Color(0xff9d9485), fontSize: 17),
          selectedColor: Color(0xffe4e0cf),
          backgroundColor: kBackgroundColor,
          selected: _isSelected == item,
          onSelected: (selected) {
            setState(() {
              _isSelected = item;
            });
          },
        ),
      ));
    });
    return choices;
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 5.0,
      runSpacing: 3.0,
      children: _buildChoiceList(),
    );
  }
}
