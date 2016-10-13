import 'package:angular2/core.dart';

class Task {
  //defining types
  final int id;
  String taskName;
  String time;
  String date;

  Task(this.id, this.taskName, this.time, this.date);
}



//initialize component
@Component(
  selector: 'my-app',
  template: '''
    <h1>{{title}}</h1>
    <h2>Date:{{task.date}}</h2>
    <h2>Time:{{task.time}}</h2>
    <div> <h2>Task:{{task.taskName}}</h2><input [(ngModel)]="task.taskName" placeholder="Task"><button>Save</button></div>
    ''')
  // using {{interpolation}} to create one-way data binding

  //adds
  class AppComponent {
    String title = 'Schedule App';
    Task task = new Task(1, 'Calendar Review', '4:00PM', '10/14/2016');
  }
