// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:i_exchange_it/confiq/confiq.dart' as config;

class CustomSolidButton extends StatelessWidget {
 final String txt;
  const CustomSolidButton({Key? key,required this.txt}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Container(
        height: 55.0,
        width: 600.0,
        child: Text(
          txt,
          style: Theme.of(context)
              .textTheme
              .bodyText1
              ?.merge(const TextStyle(fontSize: 15)),
        ),
        alignment: FractionalOffset.center,
        decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(color: Colors.black38, blurRadius: 15.0)
            ],
            borderRadius: BorderRadius.circular(30.0),
            gradient: config.Colors().primaryGradient()),
      ),
    );
  }
}
