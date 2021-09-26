import 'package:flutter/material.dart';

import 'package:to_do/bottom_navigation.dart';
import 'package:to_do/fab.dart';
import 'package:to_do/theme/color_custom.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({Key? key}) : super(key: key);

  @override
  _TaskPageState createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  final bottomNavigationBarIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        width: MediaQuery.of(context).size.width,
        child: const Text(
            'Aplicativo de tarefas destinado para melhorar o funcionamento da nossa vida contidiana'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: customFab(context),
      bottomNavigationBar: BottomNavigationBarApp(
          context: context, bottomNavigationBarIndex: bottomNavigationBarIndex),
    );
  }
}
