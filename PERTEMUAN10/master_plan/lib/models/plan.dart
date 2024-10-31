import './task.dart';

class Plan {
  final String name;
  final List<Task> tasks;

  const Plan({this.name = '', this.tasks = const []});
  // Langkah 3: Tambahkan dua method di dalam model class
  int get completedCount => tasks
  .where((task) => task.complete)
  .length;

  String get completenessMessage =>
  '$completedCount out of ${tasks.length} tasks';
}
