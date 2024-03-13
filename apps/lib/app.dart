import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'core/mutations/task/get_all_tasks.dart';
import 'core/store/task_store.dart';
import 'home_page.dart';
import 'flavors.dart';
class App extends StatelessWidget {

  const App({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    GetAllTasksMutation();
    return VxApp(
        store: TaskStore(),
        // store: TodoStore(),

        builder: (context, appData) {
          return MaterialApp(
            title: F.name.toString(),
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              useMaterial3: true,
              brightness:
                  appData.isDarkMode ? Brightness.dark : Brightness.light,
            ),
            home: const HomePage(),
          );
        });
  }

  
}
