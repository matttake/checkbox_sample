import 'package:flutter/material.dart';

class CheckboxListTiles extends StatefulWidget {
  const CheckboxListTiles({Key? key}) : super(key: key);

  @override
  State<CheckboxListTiles> createState() => _CheckboxListTilesState();
}

class _CheckboxListTilesState extends State<CheckboxListTiles> {
  final List<String> valueList = ['A', 'B', 'C', 'D'];
  final List<bool> _checkedList = List.generate(4, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("checkbox_multi Sample")),
      body: Center(
        child: ListView.separated(
          itemBuilder: (context, index) => CheckboxListTile(
            title: Text(valueList[index]),
            subtitle: Text(_checkedList[index] ? "ON" : "OFF"),
            value: _checkedList[index],
            onChanged: (bool? checkedValue) {
              setState(() {
                _checkedList[index] = checkedValue!;
              });
            },
          ),
          separatorBuilder: (context, index) {
            // print('separator: $index');
            return const Divider(height: 0.5);
          },
          itemCount: valueList.length,
        ),
      ),
    );
  }
}
