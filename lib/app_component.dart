import 'package:angular2/core.dart';
import 'package:angular2/router.dart';

import 'dashboard_component.dart';
import 'task_detail_component.dart';
import 'task_service.dart';
import 'tasks_component.dart';

@Component(
  selector:"my-app",
  template: '''
    <h1>{{title}}</h1>
    <nav>
            <a [routerLink]="['Dashboard']">Dashboard</a>
            <a [routerLink]="['Tasks']">Tasks</a>
    </nav>
    <router-outlet></router-outlet>
  ''',
  directives: const [ROUTER_DIRECTIVES],
  providers: const [TaskService, ROUTER_PROVIDERS])
@RouteConfig(const [
    const Route(
        path: '/dashboard',
        name: 'Dashboard',
        component: DashboardComponent,
        useAsDefault: true),
    const Route(
        path: '/detail/:id', name: 'TaskDetail', component: TaskDetailComponent),
    const Route(path: '/tasks', name: 'Tasks', component: TasksComponent)
  ])

class AppComponent {
  String title = 'Dart Schedule';

}
