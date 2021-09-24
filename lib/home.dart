import 'package:flutter/material.dart';

import 'package:flutter_slidable/flutter_slidable.dart';

import 'package:to_do/bottom_navigation.dart';
import 'package:to_do/fab.dart';
import 'package:to_do/theme/color_custom.dart';
import 'package:to_do/util.dart';
import 'package:to_do/widget/app_bars_custom.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final bottomNavigationBarIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarCustom(),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 15, left: 20, bottom: 15),
              child: Text(
                'Today',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).colorScheme.textSubHeader,
                ),
              ),
            ),

            // Slidable(
            //   actionPane: SlidableDrawerActionPane(),
            //   actionExtentRatio: 0.25,
            //   child: Container(
            //     margin: EdgeInsets.fromLTRB(20, 0, 20, 15),
            //     padding: EdgeInsets.fromLTRB(5, 13, 5, 13),
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //       children: <Widget>[
            //         Image.asset('assets/images/checked-empty.png'),
            //         Text(
            //           '08.00 AM',
            //           style: TextStyle(color: CustomColors.TextGrey),
            //         ),
            //         Container(
            //           width: 180,
            //           child: Text(
            //             'Send project file',
            //             style: TextStyle(
            //                 color: CustomColors.TextHeader,
            //                 fontWeight: FontWeight.w600),
            //           ),
            //         ),
            //         Image.asset('assets/images/bell-small.png'),
            //       ],
            //     ),
            //     decoration: BoxDecoration(
            //       gradient: LinearGradient(
            //         stops: const [0.015, 0.015],
            //         colors: const [CustomColors.GreenIcon, Colors.white],
            //       ),
            //       borderRadius: BorderRadius.all(
            //         Radius.circular(5.0),
            //       ),
            //       boxShadow: const [
            //         BoxShadow(
            //           color: CustomColors.GreyBorder,
            //           blurRadius: 10.0,
            //           spreadRadius: 5.0,
            //           offset: Offset(0.0, 0.0),
            //         ),
            //       ],
            //     ),
            //   ),
            //   secondaryActions: <Widget>[
            //     SlideAction(
            //       child: Container(
            //         padding: const EdgeInsets.only(bottom: 10),
            //         child: Container(
            //           height: 35,
            //           width: 35,
            //           decoration: BoxDecoration(
            //               borderRadius: BorderRadius.circular(50),
            //               color: CustomColors.TrashRedBackground),
            //           child: Image.asset('assets/images/trash.png'),
            //         ),
            //       ),
            //       onTap: () => print('Delete'),
            //     ),
            //   ],
            // ),
            // Container(
            //   margin: const EdgeInsets.fromLTRB(20, 0, 20, 15),
            //   padding: const EdgeInsets.fromLTRB(5, 13, 5, 13),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //     children: <Widget>[
            //       Image.asset('assets/images/checked-empty.png'),
            //       const Text(
            //         '10.00 AM',
            //         style: TextStyle(color: CustomColors.TextGrey),
            //       ),
            //       const SizedBox(
            //         width: 180,
            //         child: Text(
            //           'Meeting with client',
            //           style: TextStyle(
            //               color: CustomColors.TextHeader,
            //               fontWeight: FontWeight.w600),
            //         ),
            //       ),
            //       Image.asset('assets/images/bell-small-yellow.png'),
            //     ],
            //   ),
            //   decoration: const BoxDecoration(
            //     gradient: LinearGradient(
            //       stops: [0.015, 0.015],
            //       colors: [CustomColors.PurpleIcon, Colors.white],
            //     ),
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
            //   ),
            // ),
            // Container(
            //   margin: const EdgeInsets.fromLTRB(20, 0, 20, 15),
            //   padding: const EdgeInsets.fromLTRB(5, 13, 5, 13),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //     children: <Widget>[
            //       Image.asset('assets/images/checked-empty.png'),
            //       const Text(
            //         '13.00 PM',
            //         style: TextStyle(color: CustomColors.TextGrey),
            //       ),
            //       const SizedBox(
            //         width: 180,
            //         child: Text(
            //           'Email client',
            //           style: TextStyle(
            //               color: CustomColors.TextHeader,
            //               fontWeight: FontWeight.w600),
            //         ),
            //       ),
            //       Image.asset('assets/images/bell-small.png'),
            //     ],
            //   ),
            //   decoration: const BoxDecoration(
            //     gradient: LinearGradient(
            //       stops: [0.015, 0.015],
            //       colors: [CustomColors.GreenIcon, Colors.white],
            //     ),
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
            //   ),
            // ),
            // Container(
            //   margin: const EdgeInsets.only(left: 20, bottom: 15),
            //   child: const Text(
            //     'Tomorrow',
            //     style: TextStyle(
            //         fontSize: 13,
            //         fontWeight: FontWeight.w600,
            //         color: CustomColors.TextSubHeader),
            //   ),
            // ),
            // Container(
            //   margin: const EdgeInsets.fromLTRB(20, 0, 20, 15),
            //   padding: const EdgeInsets.fromLTRB(5, 13, 5, 13),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //     children: <Widget>[
            //       Image.asset('assets/images/checked-empty.png'),
            //       const Text(
            //         '07.00 AM',
            //         style: TextStyle(color: CustomColors.TextGrey),
            //       ),
            //       const SizedBox(
            //         width: 180,
            //         child: Text(
            //           'Morning yoga',
            //           style: TextStyle(
            //               color: CustomColors.TextHeader,
            //               fontWeight: FontWeight.w600),
            //         ),
            //       ),
            //       Image.asset('assets/images/bell-small.png'),
            //     ],
            //   ),
            //   decoration: BoxDecoration(
            //     gradient: const LinearGradient(
            //       stops: [0.015, 0.015],
            //       colors: [CustomColors.YellowIcon, Colors.white],
            //     ),
            //     borderRadius: BorderRadius.all(
            //       Radius.circular(5.0),
            //     ),
            //     boxShadow: const [
            //       BoxShadow(
            //         color: CustomColors.GreyBorder,
            //         blurRadius: 10.0,
            //         spreadRadius: 5.0,
            //         offset: Offset(0.0, 0.0),
            //       ),
            //     ],
            //   ),
            // ),
            // Container(
            //   margin: EdgeInsets.fromLTRB(20, 0, 20, 15),
            //   padding: EdgeInsets.fromLTRB(5, 13, 5, 13),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //     children: <Widget>[
            //       Image.asset('assets/images/checked-empty.png'),
            //       Text(
            //         '08.00 AM',
            //         style: TextStyle(color: CustomColors.TextGrey),
            //       ),
            //       Container(
            //         width: 180,
            //         child: Text(
            //           'Sending project file',
            //           style: TextStyle(
            //               color: CustomColors.TextHeader,
            //               fontWeight: FontWeight.w600),
            //         ),
            //       ),
            //       Image.asset('assets/images/bell-small.png'),
            //     ],
            //   ),
            //   decoration: BoxDecoration(
            //     gradient: LinearGradient(
            //       stops: const [0.015, 0.015],
            //       colors: const [CustomColors.GreenIcon, Colors.white],
            //     ),
            //     borderRadius: BorderRadius.all(
            //       Radius.circular(5.0),
            //     ),
            //     boxShadow: const [
            //       BoxShadow(
            //         color: CustomColors.GreyBorder,
            //         blurRadius: 10.0,
            //         spreadRadius: 5.0,
            //         offset: Offset(0.0, 0.0),
            //       ),
            //     ],
            //   ),
            // ),
            // Container(
            //   margin: EdgeInsets.fromLTRB(20, 0, 20, 15),
            //   padding: EdgeInsets.fromLTRB(5, 13, 5, 13),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //     children: <Widget>[
            //       Image.asset('assets/images/checked-empty.png'),
            //       Text(
            //         '10.00 AM',
            //         style: TextStyle(color: CustomColors.TextGrey),
            //       ),
            //       Container(
            //         width: 180,
            //         child: Text(
            //           'Meeting with client',
            //           style: TextStyle(
            //               color: CustomColors.TextHeader,
            //               fontWeight: FontWeight.w600),
            //         ),
            //       ),
            //       Image.asset('assets/images/bell-small-yellow.png'),
            //     ],
            //   ),
            //   decoration: BoxDecoration(
            //     gradient: LinearGradient(
            //       stops: const [0.015, 0.015],
            //       colors: const [CustomColors.PurpleIcon, Colors.white],
            //     ),
            //     borderRadius: BorderRadius.all(
            //       Radius.circular(5.0),
            //     ),
            //     boxShadow: const [
            //       BoxShadow(
            //         color: CustomColors.GreyBorder,
            //         blurRadius: 10.0,
            //         spreadRadius: 5.0,
            //         offset: Offset(0.0, 0.0),
            //       ),
            //     ],
            //   ),
            // ),
            // Container(
            //   margin: EdgeInsets.fromLTRB(20, 0, 20, 15),
            //   padding: EdgeInsets.fromLTRB(5, 13, 5, 13),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //     children: <Widget>[
            //       Image.asset('assets/images/checked-empty.png'),
            //       Text(
            //         '13.00 PM',
            //         style: TextStyle(color: CustomColors.TextGrey),
            //       ),
            //       Container(
            //         width: 180,
            //         child: Text(
            //           'Email client',
            //           style: TextStyle(
            //               color: CustomColors.TextHeader,
            //               fontWeight: FontWeight.w600),
            //         ),
            //       ),
            //       Image.asset('assets/images/bell-small.png'),
            //     ],
            //   ),
            //   decoration: BoxDecoration(
            //     gradient: LinearGradient(
            //       stops: const [0.015, 0.015],
            //       colors: const [CustomColors.GreenIcon, Colors.white],
            //     ),
            //     borderRadius: BorderRadius.all(
            //       Radius.circular(5.0),
            //     ),
            //     boxShadow: const [
            //       BoxShadow(
            //         color: CustomColors.GreyBorder,
            //         blurRadius: 10.0,
            //         spreadRadius: 5.0,
            //         offset: Offset(0.0, 0.0),
            //       ),
            //     ],
            //   ),
            // ),
            // Container(
            //   margin: EdgeInsets.fromLTRB(20, 0, 20, 15),
            //   padding: EdgeInsets.fromLTRB(5, 13, 5, 13),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //     children: <Widget>[
            //       Image.asset('assets/images/checked-empty.png'),
            //       Text(
            //         '13.00 PM',
            //         style: TextStyle(color: CustomColors.TextGrey),
            //       ),
            //       Container(
            //         width: 180,
            //         child: Text(
            //           'Meeting with client',
            //           style: TextStyle(
            //               color: CustomColors.TextHeader,
            //               fontWeight: FontWeight.w600),
            //         ),
            //       ),
            //       Image.asset('assets/images/bell-small-yellow.png'),
            //     ],
            //   ),
            //   decoration: BoxDecoration(
            //     gradient: LinearGradient(
            //       stops: const [0.015, 0.015],
            //       colors: const [CustomColors.PurpleIcon, Colors.white],
            //     ),
            //     borderRadius: BorderRadius.all(
            //       Radius.circular(5.0),
            //     ),
            //     boxShadow: const [
            //       BoxShadow(
            //         color: CustomColors.GreyBorder,
            //         blurRadius: 10.0,
            //         spreadRadius: 5.0,
            //         offset: Offset(0.0, 0.0),
            //       ),
            //     ],
            //   ),
            // ),
            // Container(
            //   margin: EdgeInsets.fromLTRB(20, 0, 20, 15),
            //   padding: EdgeInsets.fromLTRB(5, 13, 5, 13),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //     children: <Widget>[
            //       Image.asset('assets/images/checked-empty.png'),
            //       Text(
            //         '13.00 PM',
            //         style: TextStyle(color: CustomColors.TextGrey),
            //       ),
            //       Container(
            //         width: 180,
            //         child: Text(
            //           'Email client',
            //           style: TextStyle(
            //               color: CustomColors.TextHeader,
            //               fontWeight: FontWeight.w600),
            //         ),
            //       ),
            //       Image.asset('assets/images/bell-small.png'),
            //     ],
            //   ),
            //   decoration: BoxDecoration(
            //     gradient: LinearGradient(
            //       stops: const [0.015, 0.015],
            //       colors: const [CustomColors.GreenIcon, Colors.white],
            //     ),
            //     borderRadius: BorderRadius.all(
            //       Radius.circular(5.0),
            //     ),
            //     boxShadow: const [
            //       BoxShadow(
            //         color: CustomColors.GreyBorder,
            //         blurRadius: 10.0,
            //         spreadRadius: 5.0,
            //         offset: Offset(0.0, 0.0),
            //       ),
            //     ],
            //   ),
            // ),
            const SizedBox(height: 15)
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
