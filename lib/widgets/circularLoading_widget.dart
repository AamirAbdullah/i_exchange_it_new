// ignore_for_file: file_names

import 'package:flutter/material.dart';
class CircularLoadingWidget extends StatefulWidget {
  const CircularLoadingWidget({ Key? key }) : super(key: key);

  @override
  State<CircularLoadingWidget> createState() => _CircularLoadingWidgetState();
}

class _CircularLoadingWidgetState extends State<CircularLoadingWidget> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(backgroundColor: Colors.orange),
      
    );
  }
}