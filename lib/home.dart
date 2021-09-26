import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:to_do/bottom_navigation.dart';
import 'package:to_do/fab.dart';
import 'package:to_do/theme/color_custom.dart';
import 'package:to_do/widget/task.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final bottomNavigationBarIndex = 0;
  late final Stream<QuerySnapshot> _tasks;
  @override
  void initState() {
    _tasks = FirebaseFirestore.instance
        .collection('tasks')
        .doc('main')
        .collection('tasks')
        .snapshots();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<QuerySnapshot>(
        stream: _tasks,
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return SizedBox(
              width: MediaQuery.of(context).size.width,
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
            );
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Text("Loading");
          }

          return Padding(
            padding: const EdgeInsets.only(
              top: 20,
            ),
            child: ListView(
              children: snapshot.data!.docs.map((DocumentSnapshot document) {
                Map<String, dynamic> data =
                    document.data()! as Map<String, dynamic>;
                return data['active']
                    ? Task(
                        id: document.id,
                        time: data['hour'] ?? '',
                        reminder: data['reminder'] ?? '',
                        done: data['done'] ?? false,
                        priority: data['priority'] ?? 0,
                      )
                    : Container();
              }).toList(),
            ),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: customFab(context),
      bottomNavigationBar: BottomNavigationBarApp(
        context: context,
        bottomNavigationBarIndex: bottomNavigationBarIndex,
      ),
    );
  }
}
