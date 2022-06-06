import 'package:flutter/material.dart';
import 'package:i_exchange_it/confiq/confiq.dart' as config;
import 'package:i_exchange_it/constants/routes.dart';

class LoginSignup extends StatefulWidget {
  const LoginSignup({Key? key}) : super(key: key);

  @override
  State<LoginSignup> createState() => _LoginSignupState();
}

class _LoginSignupState extends State<LoginSignup> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: Stack(
        children: [
          Container(
            /// Set Background image in layout (Click to open code)
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/img/img1_1.jpeg'),
                    fit: BoxFit.cover)),
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,

              /// Set gradient color in image (Click to open code)
              decoration:
                  BoxDecoration(gradient: config.Colors().appGradient()),

              /// Set component layout
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.only(top: mediaQuery.padding.top + 50.0),
                    ),
                    Center(
                      /// Animation text treva shop accept from splashscreen layout (Click to open code)
                      child: Hero(
                        tag: "iExchangeIt",
                        child: Text(
                          'iExchangeIt',
                          style: Theme.of(context).textTheme.headline1!.merge(
                                const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 25),
                              ),
                        ),
                      ),
                    ),

                    Hero(
                      tag: "iExchangeItLogo",
                      child: Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Image.asset(
                          "assets/app_icon/iexchangeit_notitle.png",
                          height: 150,
                        ),
                      ),
                    ),

                    Padding(
                        padding: EdgeInsets.only(
                            left: 160.0,
                            right: 160.0,
                            top: mediaQuery.padding.top + 30.0,
                            bottom: 10.0),
                        child: Container(
                          color: Colors.white,
                          height: 0.5,
                        )),

                    /// to set Text "get best product...." (Click to open code)
                    Text(
                      "Save while you Exchange here",
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1
                          ?.merge(const TextStyle(
                            color: Colors.white,
                          )),
                    ),
                    const Padding(padding: EdgeInsets.only(top: 30.0)),

                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              splashColor:
                                  Theme.of(context).colorScheme.secondary,
                              onTap: () {
                                // OnTap
                                Navigator.of(context).pushNamed(signupScreen);
                              },
                              child: CustomOutlinedButton(
                                txt: "Signup",
                                ontap: () {},
                              ),
                            ),
                          ),
                        ),
                        const Padding(padding: EdgeInsets.only(top: 15.0)),
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                color: Colors.white,
                                height: 0.2,
                                width: 80.0,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 10.0, right: 10.0),
                                child: Text(
                                  "OR",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText2!
                                      .merge(const TextStyle(
                                          fontSize: 15, color: Colors.white)),
                                ),
                              ),
                              Container(
                                color: Colors.white,
                                height: 0.2,
                                width: 80.0,
                              )
                            ],
                          ),
                        ),
                        const Padding(padding: EdgeInsets.only(top: 15.0)),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              splashColor:
                                  Theme.of(context).colorScheme.secondary,
                              onTap: () {
                                //Open Login Page
                                 Navigator.pushNamed(context, loginScreen);
                              },
                              child: CustomOutlinedButton(
                                txt: "Login",
                                ontap: () {},
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    const Padding(padding: EdgeInsets.only(top: 30.0)),

                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Continue with ",
                            style: Theme.of(context).textTheme.bodyText2!.merge(
                                const TextStyle(
                                    fontSize: 15, color: Colors.white)),
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: MaterialButton(
                                    onPressed: () {},
                                    //  _con.signUpWithFacebook,
                                    color: const Color(0xFF3b5998),
                                    child: const Center(
                                        child: Text(
                                      "f",
                                      style: (TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 25,
                                          color: Colors.white)),
                                    )),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0),
                                child: Text(
                                  "OR",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText2!
                                      .merge(const TextStyle(
                                          fontSize: 15, color: Colors.white)),
                                ),
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: MaterialButton(
                                      onPressed: () {},
                                      //  _con.signUpWithGoogle,
                                      color: Colors.white,
                                      splashColor: const Color(0xFFF4B400),
                                      child: const Center(
                                          child: Text(
                                        'G',
                                        style: (TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 25,
                                            color: Color(0xFFDB4437))),
                                      ))),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),

                    const SizedBox(height: 15)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class CustomOutlinedButton extends StatelessWidget {
  String txt;
  GestureTapCallback ontap;

  CustomOutlinedButton({Key? key, required this.txt, required this.ontap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        splashColor: Colors.white,
        child: LayoutBuilder(builder: (context, constraint) {
          return Container(
            width: 300.0,
            height: 52.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: Colors.transparent,
                border: Border.all(color: Colors.white, width: 1)),
            child: Center(
                child: Text(
              txt,
              style: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .merge(const TextStyle(fontSize: 15, color: Colors.white)),
            )),
          );
        }),
      ),
    );
  }
}
