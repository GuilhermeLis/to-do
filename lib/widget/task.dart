import 'package:flutter/material.dart';
import 'package:to_do/theme/color_custom.dart';

class Task extends StatefulWidget {
  const Task({Key? key}) : super(key: key);

  @override
  _TaskState createState() => _TaskState();
}

class _TaskState extends State<Task> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(20, 0, 20, 15),
      padding: const EdgeInsets.fromLTRB(5, 13, 5, 13),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.asset('assets/images/checked.png'),
          Text(
            '07.00 AM',
            style: TextStyle(
              color: Theme.of(context).colorScheme.textGrey,
            ),
          ),
          SizedBox(
            width: 180,
            child: Text(
              'Go jogging with Christin',
              style: TextStyle(
                color: Theme.of(context).colorScheme.textGrey,
                //fontWeight: FontWeight.w600,
                decoration: TextDecoration.lineThrough,
              ),
            ),
          ),
          Image.asset('assets/images/bell-small.png'),
        ],
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          stops: const [0.015, 0.015],
          colors: [
            Theme.of(context).colorScheme.yellowIcon,
            Colors.white,
          ],
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(5.0),
        ),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.greyBorder,
            blurRadius: 10.0,
            spreadRadius: 5.0,
            offset: const Offset(0.0, 0.0),
          ),
        ],
      ),
    );
  }
}
