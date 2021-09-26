import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:to_do/theme/color_custom.dart';

class Modal {
  mainBottomSheet(BuildContext context) {
    TextEditingController inputController = TextEditingController();
    TimeOfDay? selectedTime;
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
                        const SizedBox(height: 20),
                        InkWell(
                          onTap: () async {
                            selectedTime = await showTimePicker(
                              initialTime: TimeOfDay.now(),
                              context: context,
                            );
                          },
                          child: Container(
                            margin: const EdgeInsets.only(
                              bottom: 20,
                            ),
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width / 1.2,
                            height: 40,
                            child: Text(
                              selectedTime != null
                                  ? selectedTime!.hour.toString() +
                                      ':' +
                                      selectedTime!.minute.toString()
                                  : 'Selecione o seu horáro',
                              style: const TextStyle(
                                fontSize: 34,
                              ),
                            ),
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
                              'hour': selectedTime!.hour.toString() +
                                  ':' +
                                  selectedTime!.minute.toString(),
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
                            'adicionar tarefa',
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
