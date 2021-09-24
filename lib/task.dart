import 'package:flutter/material.dart';

import 'package:to_do/bottom_navigation.dart';
import 'package:to_do/fab.dart';
import 'package:to_do/theme/color_custom.dart';
import 'package:to_do/widget/app_bars_custom.dart';

class Task extends StatefulWidget {
  const Task({Key? key}) : super(key: key);

  @override
  _TaskState createState() => _TaskState();
}

class _TaskState extends State<Task> {
  final bottomNavigationBarIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        width: MediaQuery.of(context).size.width,
        child: CustomScrollView(
          slivers: <Widget>[
            SliverList(
              delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) => Container(
                        margin:
                            const EdgeInsets.only(left: 10, top: 15, bottom: 0),
                        child: Text(
                          'Projects',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context).colorScheme.textSubHeader,
                          ),
                        ),
                      ),
                  childCount: 1),
            ),
            SliverGrid.count(
              crossAxisCount: 2,
              children: [
                Container(
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            width: 65,
                            height: 65,
                            child: Image.asset('assets/images/icon-user.png'),
                            decoration: BoxDecoration(
                              color: Theme.of(context)
                                  .colorScheme
                                  .yellowBackground,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(50.0),
                              ),
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            'Personal',
                            style: TextStyle(
                                fontSize: 17,
                                color: Theme.of(context)
                                    .colorScheme
                                    .textHeaderGrey,
                                fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            '24 Tasks',
                            style: TextStyle(
                              fontSize: 9,
                              color: Theme.of(context)
                                  .colorScheme
                                  .textSubHeaderGrey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
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
                      color: Colors.white,
                    ),
                    margin: const EdgeInsets.all(10),
                    height: 150.0),
                Container(
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            width: 65,
                            height: 65,
                            child:
                                Image.asset('assets/images/icon-briefcase.png'),
                            decoration: BoxDecoration(
                              color:
                                  Theme.of(context).colorScheme.greenBackground,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(50.0),
                              ),
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            'Work',
                            style: TextStyle(
                                fontSize: 17,
                                color: Theme.of(context)
                                    .colorScheme
                                    .textHeaderGrey,
                                fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            '44 Tasks',
                            style: TextStyle(
                              fontSize: 9,
                              color: Theme.of(context)
                                  .colorScheme
                                  .textSubHeaderGrey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
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
                      color: Colors.white,
                    ),
                    margin: const EdgeInsets.all(10),
                    height: 150.0),
                Container(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 65,
                          height: 65,
                          child: Image.asset(
                              'assets/images/icon-presentation.png'),
                          decoration: BoxDecoration(
                            color:
                                Theme.of(context).colorScheme.purpleBackground,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(50.0),
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          'Meeting',
                          style: TextStyle(
                              fontSize: 17,
                              color:
                                  Theme.of(context).colorScheme.textHeaderGrey,
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          '45 Tasks',
                          style: TextStyle(
                            fontSize: 9,
                            color:
                                Theme.of(context).colorScheme.textSubHeaderGrey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
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
                    color: Colors.white,
                  ),
                  margin: const EdgeInsets.all(10),
                  height: 150.0,
                ),
                Container(
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            width: 65,
                            height: 65,
                            child: Image.asset(
                                'assets/images/icon-shopping-basket.png'),
                            decoration: BoxDecoration(
                              color: Theme.of(context)
                                  .colorScheme
                                  .orangeBackground,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(50.0),
                              ),
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            'Shopping',
                            style: TextStyle(
                                fontSize: 17,
                                color: Theme.of(context)
                                    .colorScheme
                                    .textHeaderGrey,
                                fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            '54 Tasks',
                            style: TextStyle(
                              fontSize: 9,
                              color: Theme.of(context)
                                  .colorScheme
                                  .textSubHeaderGrey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
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
                      color: Colors.white,
                    ),
                    margin: const EdgeInsets.all(10),
                    height: 150.0),
                // Container(
                //   child: Center(
                //     child: Column(
                //       mainAxisAlignment: MainAxisAlignment.center,
                //       children: <Widget>[
                //         Container(
                //           width: 65,
                //           height: 65,
                //           child: Image.asset('assets/images/icon-confetti.png'),
                //           decoration: BoxDecoration(
                //             color: Theme.of(context).colorScheme.blueBackground,
                //             borderRadius: const BorderRadius.all(
                //               Radius.circular(50.0),
                //             ),
                //           ),
                //         ),
                //         const SizedBox(height: 5),
                //         Text(
                //           'Party',
                //           style: TextStyle(
                //               fontSize: 17,
                //               color: CustomColors.TextHeaderGrey,
                //               fontWeight: FontWeight.w600),
                //         ),
                //         SizedBox(height: 8),
                //         Text(
                //           '24 Tasks',
                //           style: TextStyle(
                //               fontSize: 9,
                //               color: CustomColors.TextSubHeaderGrey),
                //         ),
                //       ],
                //     ),
                //   ),
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.all(
                //       Radius.circular(5.0),
                //     ),
                //     boxShadow: [
                //       BoxShadow(
                //         color: CustomColors.GreyBorder,
                //         blurRadius: 10.0,
                //         spreadRadius: 5.0,
                //         offset: Offset(0.0, 0.0),
                //       ),
                //     ],
                //     color: Colors.white,
                //   ),
                //   margin: EdgeInsets.all(10),
                //   height: 150.0,
                // ),
                // Container(
                //   child: Center(
                //     child: Column(
                //       mainAxisAlignment: MainAxisAlignment.center,
                //       children: <Widget>[
                //         Container(
                //           width: 65,
                //           height: 65,
                //           child: Image.asset('assets/images/icon-molecule.png'),
                //           decoration: const BoxDecoration(
                //             color: CustomColors.PurpleBackground,
                //             borderRadius: BorderRadius.all(
                //               Radius.circular(50.0),
                //             ),
                //           ),
                //         ),
                //         SizedBox(height: 5),
                //         Text(
                //           'Study',
                //           style: TextStyle(
                //               fontSize: 17,
                //               color: CustomColors.TextHeaderGrey,
                //               fontWeight: FontWeight.w600),
                //         ),
                //         SizedBox(height: 8),
                //         Text(
                //           '24 Tasks',
                //           style: TextStyle(
                //               fontSize: 9,
                //               color: CustomColors.TextSubHeaderGrey),
                //         ),
                //       ],
                //     ),
                //   ),
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.all(
                //       Radius.circular(5.0),
                //     ),
                //     boxShadow: [
                //       BoxShadow(
                //         color: CustomColors.GreyBorder,
                //         blurRadius: 10.0,
                //         spreadRadius: 5.0,
                //         offset: Offset(0.0, 0.0),
                //       ),
                //     ],
                //     color: Colors.white,
                //   ),
                //   margin: EdgeInsets.all(10),
                //   height: 150.0,
                // ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: customFab(context),
      bottomNavigationBar: BottomNavigationBarApp(
          context: context, bottomNavigationBarIndex: bottomNavigationBarIndex),
    );
  }
}
