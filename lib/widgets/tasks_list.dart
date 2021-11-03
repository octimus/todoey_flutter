import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';
import 'package:todoey_flutter/models/tasks.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<Tasks>(
      builder: (context, tasksData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            Task t = tasksData.list[index];
            return TaskTile(
              name: t.name,
              isChecked: t.isDone,
              checkBoxCallBack: (checkboxState) {
                tasksData.changeState(index);
              },
              removeCallBack: () {
                tasksData.remove(t);
              },
            );
          },
          itemCount: tasksData.tasksCount,
        );
      },
    );
  }
}
