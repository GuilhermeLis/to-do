import 'package:flutter/material.dart';
import 'package:to_do/home.dart';
import 'package:to_do/task.dart';

Map<String, Widget Function(BuildContext)> routes = {
  '/': (_) => const Home(),
  '/task': (_) => const TaskPage(),
};
