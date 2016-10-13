import 'dart:async';
import 'package:angular2/core.dart';

import 'task.dart';
import 'mock_tasks.dart';

@Injectable()
class TaskService {
  Future<List<Task>> getTasks() async => mockTasks;

  Future<Task> getTask(int id) async =>
      (await getTasks()).firstWhere((task) => task.id == id);

}
