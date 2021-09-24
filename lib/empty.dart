import 'package:flutter/material.dart';

import 'package:to_do/bottom_navigation.dart';
import 'package:to_do/fab.dart';
import 'package:to_do/theme/color_custom.dart';

class Empty extends StatefulWidget {
  const Empty({Key? key}) : super(key: key);

  @override
  _EmptyState createState() => _EmptyState();
}

class _EmptyState extends State<Empty> {
  var bottomNavigationBarIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width / 1.2,
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 8,
                child: Hero(
                  tag: 'Clipboard',
                  child: Image.asset('assets/images/Clipboard-empty.png'),
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  children: <Widget>[
                    Text(
                      'No tasks',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context).colorScheme.textHeader,
                      ),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      'You have no tasks to do.',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          color: Theme.of(context).colorScheme.textBody,
                          fontFamily: 'opensans'),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(),
              )
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: customFab(context),
      bottomNavigationBar: BottomNavigationBarApp(
          context: context, bottomNavigationBarIndex: bottomNavigationBarIndex),
    );
  }
}
