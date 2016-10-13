import 'package:angular2/core.dart';
import 'task.dart';

@Component(
    selector: 'my-task-detail',
    template:'''
      <div *ngIf="selectedTask != null">
        <h2>{{selectedTask.taskName}}</h2>
        <div><label>date: </label>{{selectedTask.date}}</div>
        <div><label>time: </label>{{selectedTask.time}}</div>

        <div>
            <label>Task: </label>
            <input [(ngModel)]="selectedTask.taskName" placeholder="name">
        </div>
      </div>
    '''
    )
class TaskDetailComponent {
  @Input()
  Task task;

}
