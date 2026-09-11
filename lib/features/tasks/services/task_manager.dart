import '../models/task.dart';
import 'task_repository.dart';

class TaskManager {
  TaskManager({
    required this._repository,
  });

  final TaskRepository _repository;

  List<Task> get tasks => _repository.getTasks();

  void addTask({
    required String title,
    String? description,
    DateTime? dueDate,
  }) {
    final task = Task(
      id: DateTime.now().microsecondsSinceEpoch.toString(),
      title: title,
      description: description,
      createdAt: DateTime.now(),
      dueDate: dueDate,
    );

    _repository.addTask(task);
  }

  void toggleTask(String id) {
    final task = tasks.firstWhere(
      (task) => task.id == id,
    );

    _repository.updateTask(
      task.copyWith(
        isCompleted: !task.isCompleted,
      ),
    );
  }

  void deleteTask(String id) {
    _repository.deleteTask(id);
  }
}