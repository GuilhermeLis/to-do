import 'package:flutter/material.dart';
import 'package:to_do/home.dart';

Map<String, Widget Function(BuildContext)> routes = {
  '/': (_) => const Home(),
};
