import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:to_do/theme/color_custom.dart';

class Modal {
  mainBottomSheet(BuildContext context) {
    TextEditingController inputController = TextEditingController();
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return Container(
          height: MediaQuery.of(context).size.height - 80,
          padding: const EdgeInsets.only(
            top: 50,
          ),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(
              top: Radius.elliptical(175, 30),
            ),
          ),
          child: Column(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 50,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: 50,
                        height: 50,
                        child: Image.asset('assets/images/fab-delete.png'),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: <Color>[
                              Theme.of(context).colorScheme.purpleLight,
                              Theme.of(context).colorScheme.purpleDark,
                            ],
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(50.0),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Theme.of(context).colorScheme.purpleShadow,
                              blurRadius: 10.0,
                              spreadRadius: 5.0,
                              offset: const Offset(0.0, 0.0),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        const SizedBox(height: 10),
                        const Text(
                          'Add new task',
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(height: 10),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 1.2,
                          child: TextFormField(
                            controller: inputController,
                            autofocus: true,
                            style: const TextStyle(
                                fontSize: 22, fontStyle: FontStyle.normal),
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Coloque sua tarefa aqui',
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Container(
                          width: MediaQuery.of(context).size.width / 1.2,
                          height: 60,
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          decoration: BoxDecoration(
                            border: Border(
                              top: BorderSide(
                                width: 1.0,
                                color: Theme.of(context).colorScheme.greyBorder,
                              ),
                              bottom: BorderSide(
                                width: 1.0,
                                color: Theme.of(context).colorScheme.greyBorder,
                              ),
                            ),
                          ),
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            children: <Widget>[
                              Center(
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      height: 10.0,
                                      width: 10.0,
                                      margin: const EdgeInsets.only(right: 4),
                                      decoration: BoxDecoration(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .yellowAccent,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(right: 10),
                                      child: const Text('Personal'),
                                    ),
                                  ],
                                ),
                              ),
                              Center(
                                child: Container(
                                  margin: const EdgeInsets.only(right: 10),
                                  child: const Text(
                                    'Work',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 10),
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(5),
                                    ),
                                    color:
                                        Theme.of(context).colorScheme.greenIcon,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .greenShadow,
                                        blurRadius: 5.0,
                                        spreadRadius: 3.0,
                                        offset: const Offset(0.0, 0.0),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Center(
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      height: 10.0,
                                      width: 10.0,
                                      margin: const EdgeInsets.only(right: 4),
                                      decoration: BoxDecoration(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .purpleIcon,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(right: 10),
                                      child: const Text('Meeting'),
                                    ),
                                  ],
                                ),
                              ),
                              Center(
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      height: 10.0,
                                      width: 10.0,
                                      margin: const EdgeInsets.only(right: 4),
                                      decoration: BoxDecoration(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .blueIcon,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(right: 10),
                                      child: const Text('Study'),
                                    ),
                                  ],
                                ),
                              ),
                              Center(
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      height: 10.0,
                                      width: 10.0,
                                      margin: const EdgeInsets.only(right: 4),
                                      decoration: BoxDecoration(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .orangeIcon,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(right: 10),
                                      child: const Text('Shopping'),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 1.2,
                          child: const Text(
                            'Choose date',
                            textAlign: TextAlign.left,
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                        const SizedBox(height: 10),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 1.2,
                          child: Row(
                            children: const <Widget>[
                              Text(
                                'Today, 19:00 - 21:00',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w600),
                              ),
                              SizedBox(width: 5),
                              RotatedBox(
                                quarterTurns: 1,
                                child: Icon(Icons.chevron_right),
                              ),
                            ],
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            FirebaseFirestore.instance
                                .collection('tasks')
                                .doc('main')
                                .collection('tasks')
                                .add({
                              'active': true,
                              'done': false,
                              'hour': '08:00 AM',
                              'priority': 0,
                              'reminder': inputController.text,
                            }).then(
                              (value) => Navigator.pop(context),
                            );
                          },
                          style: ButtonStyle(
                            textStyle: MaterialStateProperty.all<TextStyle>(
                              TextStyle(
                                color: Theme.of(context)
                                    .colorScheme
                                    .greyBackground,
                              ),
                            ),
                            minimumSize: MaterialStateProperty.all<Size>(
                              Size(MediaQuery.of(context).size.width, 50),
                            ),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                          child: const Text(
                            'Add task',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
