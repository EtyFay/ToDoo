class ToDo {
  String? id;
  String? todoText;
  bool isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  static List<ToDo> todoList() {
    return [
      ToDo(id: '06', todoText: 'Спасибо за внимание к моему приложению:)', ),
      ToDo(id: '05', todoText: 'Снизу создавать новые', ),
      ToDo(id: '04', todoText: 'Сверху ты можешь искать дела', ),
      ToDo(id: '03', todoText: 'Или можешь просто нажать на красную кнопочку!', ),
      ToDo(id: '02', todoText: 'Чтоб удалить,свапни по виджету в любую сторону', isDone: true ),
      ToDo(id: '01', todoText: 'Привет! Ты можешь нажать на галочку,чтоб закрыть дело', ),






    ];
  }
}