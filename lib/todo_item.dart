import 'package:flutter/material.dart';
import 'todo.dart';
import 'colors.dart';

class ToDoItem extends StatelessWidget {
  final ToDo todo;
  final onToDoChanged;
  final onDeleteItem;

  const ToDoItem({Key? key, required this.todo, required this.onToDoChanged, required this.onDeleteItem,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      onDismissed:(direction) {
        const Text("Delited");
        if (
        direction == DismissDirection.endToStart
        ) {
          print("delited");
        }
      },
      background: Container(
        decoration: BoxDecoration(
          color: searchColors,
          borderRadius: BorderRadius.circular(20),
        ),
      ),// а тут цвет выбрать можно
      // смахни чтоб удалить,не забывай про ключ,оберни в виджет
      key: UniqueKey(),
      child: Container(
        margin: const EdgeInsets.only(bottom: 20),
        child: ListTile(
          onTap: () {
            // print('Click');
            onToDoChanged(todo);
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          tileColor: searchColors,
          leading: Icon(
            todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
            color: delitedRed,
          ),
          title: Text(
            todo.todoText!,
            style: TextStyle(
              fontSize: 16,
              color: simpleBlack,
              decoration: todo.isDone ? TextDecoration.lineThrough : null,
            ),
          ),
          trailing: Container(
            padding: const EdgeInsets.all(0),
            margin: const EdgeInsets.symmetric(vertical: 12),
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              color: delitedRed,
              borderRadius: BorderRadius.circular(5),
            ),
            child: IconButton(color: Colors.white, iconSize: 20,
              icon: const Icon(Icons.delete_sweep_outlined),
              onPressed: () {
                onDeleteItem(todo.id);
              },
            ),
          ),
        ),
      ),
    );
  }
}
