import 'dart:async';

import 'package:angular2/core.dart';
import 'package:angular2/router.dart';

import 'task.dart';
import 'task_service.dart';

//initialize component
@Component(
  selector: 'my-tasks',
  templateUrl: 'tasks_component.html',
    styles: const [
       '''
       .selected {
         background-color: #CFD8DC !important;
         color: white;
       }
       .tasks {
         margin: 0 0 2em 0;
         list-style-type: none;
         padding: 0;
         width: 20em;
         overflow: hidden;
       }
       .tasks li {
         cursor: pointer;
         position: relative;
         left: 0;
         background-color: #EEE;
         margin: .5em;
         padding: .3em 0em;
         height: 1.6em;
         border-radius: 4px;
         overflow: hidden;
       }
       .tasks li.selected:hover {
         color: white;
       }
       .tasks li:hover {
         color: #607D8B;
         background-color: #EEE;
         left: .1em;
       }
       .tasks .text {
         position: relative;
         top: -3px;
       }
       .tasks .badge {
         display: inline-block;
         font-size: small;
         color: white;
         padding: 0.8em 0.7em 0em 0.7em;
         background-color: #607D8B;
         line-height: 1em;
         position: relative;
         left: -1px;
         top: -4px;
         height: 1.8em;
         margin-right: .8em;
         border-radius: 4px 0px 0px 4px;
       }
     '''
   ],
 )
  // using {{interpolation}} to create one-way data binding

  //adds
  class TasksComponent implements OnInit{
    final Router _router;
    final TaskService _taskService;
    List<Task> tasks;
    Task selectedTask;

    TasksComponent(this._taskService, this._router);

    Future<Null> getTasks() async {
      tasks = await _taskService.getTasks();
    }

    void ngOnInit() {
      getTasks();
    }


    void onSelect(Task task) {
      selectedTask = task;
    }

    Future<Null> gotoDetail() => _router.navigate([
        'TaskDetail',
        {'id': selectedTask.id.toString()}
      ]);
  }
