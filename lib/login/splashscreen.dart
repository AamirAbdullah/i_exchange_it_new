import 'dart:async';
import 'package:flutter/material.dart';
import 'package:i_exchange_it/constants/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double _width = 0;
  double _height = 0;
  BorderRadius _radius = BorderRadius.circular(1000);
  bool _visible = false;
  startTime() async {
    return Timer(const Duration(milliseconds: 1500), () {
      // print("Changed");
      setState(() {
        _radius = BorderRadius.circular(0);
        _width = MediaQuery.of(context).size.width - 5;
        _height = MediaQuery.of(context).size.height - 5;
        _visible = true;
      });
      Timer(const Duration(milliseconds: 3000), NavigatorPage);
    });
  }

  // ignore: non_constant_identifier_names
  void NavigatorPage() {
    Navigator.pushReplacementNamed(context, chooseloginsignuproute);
    // Navigator.of(context).pushReplacementNamed("/ChooseLogin");
    // Navigator.of(context).pushNamedAndRemoveUntil("/Pages", (route) => false, arguments: 0);
    // if (userRepo.currentUser.apiToken == null) {
    //   Navigator.of(context).pushReplacementNamed('/ChooseLogin');
    // } else {
    //   Navigator.of(context).pushNamedAndRemoveUntil('/Pages', (route) => false, arguments: 0);
    // }
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Center(
              child: AnimatedContainer(
            width: _width,
            height: _height,
            duration: const Duration(milliseconds: 500),
            decoration: BoxDecoration(
                // color: Theme.of(context).accentColor,
                color: Colors.orange,
                borderRadius: _radius),
          )),
          AnimatedOpacity(
            opacity: _visible ? 1.0 : 0.0,
            duration: const Duration(milliseconds: 1000),
            child: Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Text(
                  "WELCOME",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .merge(const TextStyle(
                        fontSize: 14,
                        letterSpacing: 3,
                        color: Colors.black,
                      )),
                ),
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/app_icon/iexchangeit_title.png",
                  width: 140,
                ),
                const SizedBox(
                  height: 30,
                ),
                Column(
                  children: [
                    AnimatedOpacity(
                      opacity: _visible ? 1.0 : 0.0,
                      duration: const Duration(milliseconds: 1000),
                      child: Hero(
                        tag: "iExchangeIt",
                        child: Text(
                          'iExchangeIt',
                          style: Theme.of(context).textTheme.headline4?.merge(
                              const TextStyle(
                                  fontSize: 22, color: Colors.black87)),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: AnimatedOpacity(
                opacity: _visible ? 1.0 : 0.0,
                duration: const Duration(milliseconds: 1500),
                child: Text(
                  "Copyright © 2022 iExchangeIt.\nAll rights reserved ",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyText2?.merge(
                      const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          letterSpacing: 1)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
