// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CustomFormFeild extends StatelessWidget {
 final Widget formField;
  const CustomFormFeild({Key? key, required this.formField}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Container(
        height: 60.0,
        alignment: AlignmentDirectional.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14.0),
            color: Colors.white,
            boxShadow: const[ BoxShadow(blurRadius: 10.0, color: Colors.black12)]),
        padding:
            const EdgeInsets.only(left: 20.0, right: 30.0, top: 0.0, bottom: 0.0),
        child: Theme(
          data: ThemeData(
            hintColor: Colors.transparent,
          ),
          child: formField,
        ),
      ),
    );
  }
}
