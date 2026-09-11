import 'task_manager.dart';
import 'task_repository.dart';

final taskManager = TaskManager(
  repository: TaskRepository(),
);