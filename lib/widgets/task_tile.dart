import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String name;
  final Function checkBoxCallBack;
  final Function removeCallBack;

  TaskTile(
      {this.name,
      this.isChecked,
      this.checkBoxCallBack,
      @required this.removeCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: () {
        removeCallBack();
      },
      title: Text(
        name,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.lightBlueAccent,
        onChanged: checkBoxCallBack,
      ),
    );
  }
}
