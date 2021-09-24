import 'package:flutter/material.dart';

import 'package:to_do/theme/color_custom.dart';

class AppBarCustom extends StatelessWidget implements PreferredSizeWidget {
  const AppBarCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      flexibleSpace: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          CustomPaint(
            painter: CircleOne(),
          ),
          CustomPaint(
            painter: CircleTwo(),
          ),
        ],
      ),
      title: Container(
        margin: const EdgeInsets.only(top: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const <Widget>[
            Text(
              'Hello Brenda!',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
            ),
            Text(
              'Today you have 9 tasks',
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.w300),
            ),
          ],
        ),
      ),
      actions: <Widget>[
        Container(
          margin: const EdgeInsets.fromLTRB(0, 20, 20, 0),
          child: Image.asset('assets/images/photo.png'),
        ),
      ],
      elevation: 0,
      // gradient: LinearGradient(
      //   begin: Alignment.topLeft,
      //   end: Alignment.bottomRight,
      //   colors: [
      //     Theme.of(context).colorScheme.headerBlueDark,
      //     Theme.of(context).colorScheme.headerBlueLight
      //   ],
      // ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(10),
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          padding: const EdgeInsets.fromLTRB(15, 5, 15, 0),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.headerGreyLight,
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  Text(
                    'Today Reminder',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    'Meeting with client',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.w300),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    '13.00 PM',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.w300),
                  ),
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width / 2.9,
              ),
              Image.asset(
                'assets/images/bell-left.png',
                scale: 1.3,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 80),
                child: const Icon(
                  Icons.clear,
                  color: Colors.white,
                  size: 18.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(210);
}

Widget fullAppbar(BuildContext context) {
  return PreferredSize(
    preferredSize: const Size.fromHeight(210.0),
    child: AppBar(
      flexibleSpace: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          CustomPaint(
            painter: CircleOne(),
          ),
          CustomPaint(
            painter: CircleTwo(),
          ),
        ],
      ),
      title: Container(
        margin: const EdgeInsets.only(top: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const <Widget>[
            Text(
              'Hello Brenda!',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              'Today you have 9 tasks',
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
      ),
      actions: <Widget>[
        Container(
          margin: const EdgeInsets.fromLTRB(0, 20, 20, 0),
          child: Image.asset('assets/images/photo.png'),
        ),
      ],
      elevation: 0,
      // gradient: LinearGradient(
      //   begin: Alignment.topLeft,
      //   end: Alignment.bottomRight,
      //   colors: [
      //     Theme.of(context).colorScheme.headerBlueDark,
      //     Theme.of(context).colorScheme.headerBlueLight
      //   ],
      // ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(10),
        child: Container(
          margin: const EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 20,
          ),
          padding: const EdgeInsets.fromLTRB(15, 5, 15, 0),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.headerGreyLight,
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  Text(
                    'Today Reminder',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    'Meeting with client',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    '13.00 PM',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width / 2.9,
              ),
              Image.asset(
                'assets/images/bell-left.png',
                scale: 1.3,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 80),
                child: const Icon(
                  Icons.clear,
                  color: Colors.white,
                  size: 18.0,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

Widget emptyAppbar() {
  return PreferredSize(
    preferredSize: const Size.fromHeight(75.0),
    child: AppBar(
      flexibleSpace: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          CustomPaint(
            painter: CircleOne(),
          ),
          CustomPaint(
            painter: CircleTwo(),
          ),
        ],
      ),
      title: Container(
        margin: const EdgeInsets.only(top: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const <Widget>[
            Text(
              'Hello Brenda!',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
            ),
            Text(
              'Today you have no tasks',
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.w300),
            ),
          ],
        ),
      ),
      actions: <Widget>[
        Container(
          margin: const EdgeInsets.fromLTRB(0, 20, 20, 0),
          child: Image.asset('assets/images/photo.png'),
        ),
      ],
      elevation: 0,
      // gradient: const LinearGradient(
      //   begin: Alignment.topLeft,
      //   end: Alignment.bottomRight,
      //   colors: [
      //     headerBlueDarkColor,
      //     headerBlueLightColor,
      //   ],
      // ),
    ),
  );
}

class CircleOne extends CustomPainter {
  late Paint _paint;

  CircleOne() {
    _paint = Paint()
      ..color = headerCircleColor
      ..strokeWidth = 10.0
      ..style = PaintingStyle.fill;
  }

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawCircle(const Offset(28.0, 0.0), 99.0, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class CircleTwo extends CustomPainter {
  late Paint _paint;

  CircleTwo() {
    _paint = Paint()
      ..color = headerCircleColor
      ..strokeWidth = 10.0
      ..style = PaintingStyle.fill;
  }

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawCircle(
      const Offset(-30, 20),
      50.0,
      _paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}