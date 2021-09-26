import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:to_do/theme/color_custom.dart';

class Task extends StatelessWidget {
  final String id;
  final String time;
  final String reminder;
  final bool done;
  final int priority;
  const Task({
    Key? key,
    required this.time,
    required this.reminder,
    required this.done,
    required this.priority,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Color> priorityList = [
      Theme.of(context).colorScheme.greenIcon,
      Theme.of(context).colorScheme.yellowAccent,
      Theme.of(context).colorScheme.trashRed,
    ];
    return Slidable(
      actionPane: const SlidableDrawerActionPane(),
      actionExtentRatio: 0.25,
      child: Container(
        margin: const EdgeInsets.fromLTRB(20, 0, 20, 15),
        padding: const EdgeInsets.fromLTRB(5, 13, 5, 13),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            InkWell(
              onTap: () {
                FirebaseFirestore.instance
                    .collection('tasks')
                    .doc('main')
                    .collection('tasks')
                    .doc(id)
                    .update({'done': !done});
              },
              child: done
                  ? Image.asset('assets/images/checked.png')
                  : Image.asset('assets/images/checked-empty.png'),
            ),
            Text(
              time,
              style: TextStyle(
                color: Theme.of(context).colorScheme.textGrey,
              ),
            ),
            SizedBox(
              width: 180,
              child: Text(
                reminder,
                style: TextStyle(
                  color: done
                      ? Theme.of(context).colorScheme.textGrey
                      : Theme.of(context).colorScheme.textHeader,
                  fontWeight: FontWeight.w600,
                  decoration: done ? TextDecoration.lineThrough : null,
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
              priorityList[priority],
              Theme.of(context).colorScheme.greyBackground,
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
      ),
      secondaryActions: <Widget>[
        SlideAction(
          child: Container(
            padding: const EdgeInsets.only(bottom: 10),
            child: Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Theme.of(context).colorScheme.trashRedBackground,
              ),
              child: Image.asset('assets/images/trash.png'),
            ),
          ),
          onTap: () => {
            FirebaseFirestore.instance
                .collection('tasks')
                .doc('main')
                .collection('tasks')
                .doc(id)
                .update({'active': false}),
          },
        ),
      ],
    );
  }
}
