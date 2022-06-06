import 'package:flutter/material.dart';
import 'package:i_exchange_it/constants/routes.dart';
import 'package:i_exchange_it/widgets/customFormFeild.dart';
import 'package:i_exchange_it/widgets/customSolidButton.dart';
import 'package:i_exchange_it/confiq/confiq.dart' as config;

class SignUPScreen extends StatefulWidget {
  const SignUPScreen({Key? key}) : super(key: key);

  @override
  State<SignUPScreen> createState() => _SignUPScreenState();
}

class _SignUPScreenState extends State<SignUPScreen> {
  final _formKey = GlobalKey<FormState>();
  String? password;
  String? email;
  String? name;
  String? phone;
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/img/img2.jpg"),
              fit: BoxFit.cover,
            )),
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,

              /// Set gradient color in image (Click to open code)
              decoration: BoxDecoration(
                gradient: config.Colors().appGradient(),
              ),

              /// Set component layout
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Form(
                      key: _formKey,
                      child: Column(
                        children: <Widget>[
                          Container(
                            alignment: AlignmentDirectional.topCenter,
                            child: Column(
                              children: <Widget>[
                                /// padding logo
                                Padding(
                                    padding: EdgeInsets.only(
                                        top: mediaQuery.padding.top + 50.0)),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    const Hero(
                                      tag: "iExchangeItLogo",
                                      child: Image(
                                        image: AssetImage(
                                            "assets/app_icon/iexchangeit.png"),
                                        height: 70.0,
                                      ),
                                    ),
                                    const Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10.0)),
                                    Hero(
                                      tag: "iExchangeIt",
                                      child: Text(
                                        'iExchangeIt',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline1!
                                            .merge(
                                              const TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 25),
                                            ),
                                      ),
                                    ),
                                  ],
                                ),

                                /// TextFromField Email
                                const SizedBox(
                                  height: 50,
                                ),
                                const Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 7.0)),
                                CustomFormFeild(
                                  formField: TextFormField(
                                    validator: (val) => (val!.isEmpty)
                                        ? "Name can't be empty"
                                        : null,
                                    obscureText: false,
                                    decoration: const InputDecoration(
                                        border: InputBorder.none,
                                        labelText: "Name",
                                        icon: Icon(
                                          Icons.person_pin,
                                          color: Colors.black38,
                                        ),
                                         labelStyle: TextStyle(
                                            fontSize: 15.0,
                                            fontFamily: 'Sans',
                                            letterSpacing: 0.3,
                                            color: Colors.black38,
                                            fontWeight: FontWeight.w600)),
                                    keyboardType: TextInputType.text,
                                    onSaved: (value) {
                                      name = value;
                                    },
                                  ),
                                ),
                                const Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 7.0)),
                                CustomFormFeild(
                                  formField: TextFormField(
                                    validator: (val) =>
                                        (val!.isEmpty || !val.contains("@"))
                                            ? "Invalid Email"
                                            : null,
                                    obscureText: false,
                                    decoration: const InputDecoration(
                                        border: InputBorder.none,
                                        labelText: "Email",
                                        icon: Icon(
                                          Icons.email,
                                          color: Colors.black38,
                                        ),
                                        labelStyle: TextStyle(
                                            fontSize: 15.0,
                                            fontFamily: 'Sans',
                                            letterSpacing: 0.3,
                                            color: Colors.black38,
                                            fontWeight: FontWeight.w600)),
                                    keyboardType: TextInputType.emailAddress,
                                    onSaved: (value) {
                                      email = value;
                                    },
                                  ),
                                ),
                                const Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 7.0)),
                                CustomFormFeild(
                                  formField: TextFormField(
                                    validator: (val) =>
                                        (val!.isEmpty || val.length < 5)
                                            ? "Invalid Phone"
                                            : null,
                                    obscureText: false,
                                    decoration: const InputDecoration(
                                        border: InputBorder.none,
                                        labelText: "Phone",
                                        icon: Icon(
                                          Icons.phone,
                                          color: Colors.black38,
                                        ),
                                        labelStyle: TextStyle(
                                            fontSize: 15.0,
                                            fontFamily: 'Sans',
                                            letterSpacing: 0.3,
                                            color: Colors.black38,
                                            fontWeight: FontWeight.w600)),
                                    keyboardType: TextInputType.phone,
                                    onSaved: (value) {
                                      phone = value;
                                    },
                                  ),
                                ),

                                /// TextFromField Password
                                const Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 7.0)),
                                CustomFormFeild(
                                  formField: TextFormField(
                                    validator: (val) => (val!.isEmpty)
                                        ? "Password can't be empty"
                                        : null,
                                    obscureText: true,
                                    decoration: const InputDecoration(
                                        border: InputBorder.none,
                                        labelText: "Password",
                                        icon: Icon(
                                          Icons.vpn_key,
                                          color: Colors.black38,
                                        ),
                                        labelStyle: TextStyle(
                                            fontSize: 15.0,
                                            fontFamily: 'Sans',
                                            letterSpacing: 0.3,
                                            color: Colors.black38,
                                            fontWeight: FontWeight.w600)),
                                    keyboardType: TextInputType.text,
                                    onSaved: (value) {
                                      password = value;
                                    },
                                  ),
                                ),

                                /// TextFromField Confirm Password
                                const Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 7.0)),
                                CustomFormFeild(
                                  formField: TextFormField(
                                    validator: (val) => val != password
                                        ? 'Please enter Same password'
                                        : null,
                                    obscureText: true,
                                    decoration: const InputDecoration(
                                        border: InputBorder.none,
                                        labelText: "Confirm Password",
                                        icon: Icon(
                                          Icons.vpn_key,
                                          color: Colors.black38,
                                        ),
                                        labelStyle: TextStyle(
                                            fontSize: 15.0,
                                            fontFamily: 'Sans',
                                            letterSpacing: 0.3,
                                            color: Colors.black38,
                                            fontWeight: FontWeight.w600)),
                                    keyboardType: TextInputType.text,
                                    onSaved: (value) {
                                      // _con.currentUser.password = value;
                                    },
                                  ),
                                ),

                                /// Button Signup
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context)
                                          .pushReplacementNamed(loginScreen);
                                    },
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.transparent),
                                    ),
                                    child: Text(
                                      "Have account? Sign In",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText2!
                                          .merge(const TextStyle(
                                              fontSize: 15,
                                              color: Colors.white)),
                                    )),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: mediaQuery.padding.top, bottom: 0.0),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    /// Set Animaion after user click buttonLogin
                    InkWell(
                      splashColor: Theme.of(context)
                          .colorScheme
                          .secondary
                          .withOpacity(0.5),
                      onTap: () {
                        Navigator.of(context)
                                          .pushReplacementNamed(botomnavigationbar);
                      },
                      child: const CustomSolidButton(
                        txt: "SIGN IN",
                      ),
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
