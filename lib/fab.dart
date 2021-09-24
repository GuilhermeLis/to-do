import 'package:flutter/material.dart';

import 'package:to_do/bottom_sheet.dart';
import 'package:to_do/theme/color_custom.dart';

FloatingActionButton customFab(context) {
  Modal modal = Modal();

  return FloatingActionButton(
    onPressed: () {
      modal.mainBottomSheet(context);
    },
    elevation: 5,
    backgroundColor: Colors.transparent,
    child: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Image.asset('assets/images/fab-add.png'),
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
  );
}
