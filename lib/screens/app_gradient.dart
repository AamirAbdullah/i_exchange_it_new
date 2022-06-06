import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppbarGradient extends StatefulWidget {
  final VoidCallback onTap;

  const AppbarGradient({Key? key, required this.onTap}) : super(key: key);

  @override
  _AppbarGradientState createState() => _AppbarGradientState();
}

class _AppbarGradientState extends State<AppbarGradient> {
  String countNotice = "4";

  @override
  Widget build(BuildContext context) {
    /// Create responsive height and padding
    final double statusBarHeight = MediaQuery.of(context).padding.top;

    /// Create component in appbar
    return Container(
      padding: EdgeInsets.only(top: statusBarHeight),
      height: 58.0 + statusBarHeight,
      // color: config.Colors().scaffoldDarkColor(0.95),
      // decoration: BoxDecoration(
      //   /// gradient in appbar
      //     gradient: LinearGradient(
      //         colors: [
      //            Theme.of(context).accentColor.withOpacity(1),
      //           Theme.of(context).accentColor.withOpacity(0.9),
      //         ],
      //         begin: const FractionalOffset(0.0, 0.0),
      //         end: const FractionalOffset(1.0, 0.0),
      //         stops: [0.0, 1.0],
      //         tileMode: TileMode.clamp)
      // ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          /// if user click shape white in appbar navigate to search layout
          InkWell(
            onTap: widget.onTap,

            /// Create shape background white in appbar (background treva shop text)
            child: Container(
              // margin: EdgeInsets.only(left: media.padding.left + 15),
              height: 37.0,
              width: MediaQuery.of(context).size.width - 30,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                  shape: BoxShape.rectangle),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const Padding(padding: EdgeInsets.only(left: 17.0)),
                  Icon(
                    CupertinoIcons.search,
                    size: 25,
                    color: Theme.of(context).primaryColor,
                  ),
                  const Padding(
                      padding: EdgeInsets.only(
                    left: 17.0,
                  )),
                  Padding(
                    padding: const EdgeInsets.only(top: 3.0),
                    child: Text("search_here",
                        style: Theme.of(context).textTheme.subtitle1),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
