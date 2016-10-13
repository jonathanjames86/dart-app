import 'dart:async';


import 'package:angular2/core.dart';
import 'package:angular2/router.dart';

import 'task.dart';
import 'task_service.dart';


@Component(
    selector: 'my-task-detail',
    templateUrl:'task_detail_component.html'
    )


class TaskDetailComponent implements OnInit {

  Task task;

  final TaskService _taskService;
  final RouteParams _routeParams;

  TaskDetailComponent(this._taskService, this._routeParams);

  Future<Null> ngOnInit() async {
    var idString = _routeParams.get('id');
    var id = int.parse(idString ?? '', onError: (_) => null);
    if (id != null) task = await (_taskService.getTask(id));
  }

  void goBack() {
    window.history.back();
  }
}
