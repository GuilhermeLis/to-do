import 'package:flutter/material.dart';
import 'package:to_do/theme/color_custom.dart';

class BottomNavigationBarApp extends StatelessWidget {
  final int bottomNavigationBarIndex;
  final BuildContext context;
  const BottomNavigationBarApp(
      {Key? key, required this.bottomNavigationBarIndex, required this.context})
      : super(key: key);

  void onTabTapped(int index) {
    if (index == 0) {
      Navigator.of(context).pushNamedAndRemoveUntil('/', (route) => false);
    }
    if (index == 1) {
      Navigator.of(context).pushNamedAndRemoveUntil('/task', (route) => false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: bottomNavigationBarIndex,
      type: BottomNavigationBarType.fixed,
      selectedFontSize: 10,
      selectedLabelStyle:
          TextStyle(color: Theme.of(context).colorScheme.blueDark),
      selectedItemColor: Theme.of(context).colorScheme.blueDark,
      unselectedFontSize: 10,
      items: [
        BottomNavigationBarItem(
          icon: Container(
            margin: const EdgeInsets.only(bottom: 5),
            child: Image.asset(
              'assets/images/home.png',
              color: (bottomNavigationBarIndex == 0)
                  ? Theme.of(context).colorScheme.blueDark
                  : Theme.of(context).colorScheme.textGrey,
            ),
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Container(
            margin: const EdgeInsets.only(bottom: 5),
            child: Image.asset(
              'assets/images/task.png',
              color: (bottomNavigationBarIndex == 1)
                  ? Theme.of(context).colorScheme.blueDark
                  : Theme.of(context).colorScheme.textGrey,
            ),
          ),
          label: 'Task',
        ),
      ],
      onTap: onTabTapped,
    );
  }
}
