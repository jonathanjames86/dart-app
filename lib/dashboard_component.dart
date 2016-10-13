import 'dart:async';

import 'package:angular2/core.dart';
import 'package:angular2/router.dart';

import 'task.dart';
import 'task_service.dart';

@Component(
    selector: 'my-dashboard',
    templateUrl: 'dashboard_component.html'
  )
class DashboardComponent implements OnInit {
  List<Task> tasks;

  final Router _router;
  final TaskService _taskService;

  DashboardComponent(this._taskService, this._router);

  Future<Null> ngOnInit() async {
    tasks = (await _taskService.getTasks()).skip(1).take(4).toList();
  }

  void gotoDetail(task task) {
    var link = [
      'TaskDetail',
      {'id': task.id.toString()}
    ];
    _router.navigate(link);
  }
}
