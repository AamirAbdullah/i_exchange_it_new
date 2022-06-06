import 'package:flutter/material.dart';
import 'package:i_exchange_it/model/category_model.dart';
import 'package:i_exchange_it/screens/app_gradient.dart';
import 'package:i_exchange_it/confiq/confiq.dart' as config;
import 'package:i_exchange_it/screens/categeroy/category_list_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Category> category = [];
  @override
  void initState() {
    category = _getcategeroy();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: config.Colors().scaffoldDarkColor(0.95),
      body: Stack(children: [
        SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                  padding:
                      EdgeInsets.only(top: mediaQueryData.padding.top + 58.5)),
              GridView.count(
                primary: false,
                shrinkWrap: true,
                crossAxisCount: isPortrait ? 4 : 7,
                children: List.generate(category.length, (index) {
                  return CategoryListIconItem(
                    cat: category[index],
                    onTap: () {
                      // Navigator.of(context).pushNamed("/ProductListByCategory", arguments: RouteArgument(category: con.categories[index]));
                      // Navigator.of(context).pushNamed("/ShowSubcategories", arguments: RouteArgument(category: con.categories[index], categories: con.categories));
                    },
                  );
                }),
              ),
            ],
          ),
        ),
        AppbarGradient(
          onTap: () {
            Navigator.of(context).pushNamed("/SearchPage");
          },
        ),
      ]),
    );
  }

  List<Category> _getcategeroy() {
    List<Category> trConsultOnlinedate = <Category>[];

    trConsultOnlinedate.add(Category(
        id: 1,
   
        name: 'category'));

    trConsultOnlinedate.add(Category(
        id: 2,
       
        name: 'category1'));
    return trConsultOnlinedate;
  }
}
