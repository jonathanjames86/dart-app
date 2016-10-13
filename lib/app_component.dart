import 'package:angular2/core.dart';
import 'task.dart';
import 'task_detail_component.dart';


final List<Task> mockTasks = [
  new Task(11, 'Working on Code', '9:00AM', '10/15/2016'),
  new Task(12, 'Update Software', '10:30AM', '10/15/2016'),
  new Task(13, 'Contact Mike about such and such','11:00AM', '10/16/2016'),
  new Task(14, 'Server Maintenance', '3:00PM', '10/16/2016'),
  new Task(15, 'Review with Team', '8:00AM', '10/17/2016'),
  new Task(16, 'Confirm Designs with Rachel', '2:00PM', '10/18/2016'),
  new Task(17, 'Read Docs from Kody', '10:00AM', '10/18/2016'),
  new Task(18, 'Performence Review', '1:00PM', '10/19/2016'),
  new Task(19, 'Playing Golf with Pops', '9:00AM', '10/19/2016'),
  new Task(20, 'Working on side mobile project', '6:00PM', '10/20/2016')
];

//initialize component
@Component(
  selector: 'my-app',
  template: '''
    <h1>{{title}}</h1>
    <h2>My Schedule</h2>
    <ul class="tasks">
        <li *ngFor="let task of tasks"
            [class.selected]="task == selectedTask"
            (click)="onSelect(task)">
            <span class="badge">{{task.date}}</span> {{task.taskName}}
        </li>
      </ul>
      <my-task-detail [task]="selectedTask"></my-task-detail>
    ''',
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
     ])
  // using {{interpolation}} to create one-way data binding

  //adds
  class AppComponent {
    final String title = 'Dart Schedule';
    final List<Task> tasks = mockTasks;
    Task selectedTask;


    onSelect(Task task) {
      selectedTask = task;
    }

  }
