import 'package:todoapp/app/data/models/task.dart';
import 'package:todoapp/app/data/providers/task/provider.dart';

class TaskRepository {
  final TaskProvider taskProvider;

  TaskRepository({required this.taskProvider});

  List<Task> readTasks() => taskProvider.readTasks();
  void writeTasks(List<Task> tasks) => taskProvider.writeTasks(tasks);
}
