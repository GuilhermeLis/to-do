import 'package:flutter/material.dart';
import 'package:to_do/theme/color_custom.dart';

import 'package:to_do/empty.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

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
                  child: Image.asset('assets/images/Clipboard.png'),
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  children: <Widget>[
                    Text(
                      'Reminders made simple',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context).colorScheme.textHeader,
                      ),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris pellentesque erat in blandit luctus.',
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
                child: RaisedButton(
                  onPressed: () {
                    // HERO-ANIMATION: https://github.com/flutter/flutter/issues/28041
                    // Navigator.of(context).pushReplacement(
                    //   PageRouteBuilder(
                    //     transitionDuration: Duration(seconds: 1),
                    //     pageBuilder: (_, __, ___) => Empty(),
                    //   ),
                    // );
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Empty()),
                    );
                  },
                  textColor: Colors.white,
                  padding: const EdgeInsets.all(0.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1.4,
                    height: 60,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: <Color>[
                          Theme.of(context).colorScheme.greenLight,
                          Theme.of(context).colorScheme.greenDark,
                        ],
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(8.0),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Theme.of(context).colorScheme.greenShadow,
                          blurRadius: 15.0,
                          spreadRadius: 7.0,
                          offset: const Offset(0.0, 0.0),
                        ),
                      ],
                    ),
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: const Center(
                      child: Text(
                        'Get Started',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
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
    );
  }
}
