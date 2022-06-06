// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:i_exchange_it/model/category_model.dart';
import 'package:i_exchange_it/confiq/confiq.dart' as config;

class CategoryListIconItem extends StatelessWidget {
  Category cat;
  VoidCallback onTap;

  CategoryListIconItem({Key? key, required this.cat, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var textTheme = theme.textTheme;

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 55,
              height: 55,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.transparent,
                border: Border.all(
                  color: config.Colors().mainDarkColor(0.95),
                  width: 1,
                ),
              ),
              child: cat.image != null
                  ? Container(
                      // width: 53,
                      // height: 53,
                      decoration: BoxDecoration(
          
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: NetworkImage(cat.image!), //
                          // fit: BoxFit.fill,
                        ),
                      ),
                    )
                  : Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        "assets/placeholders/default_cat.png",
                        color: theme.focusColor,
                      ),
                    ),
            ),
            SizedBox(
              width: 60,
              child: Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Center(
                  child: Text(
                    cat.name!,
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: textTheme.bodyText2!.merge(TextStyle(
                        color: config.Colors().mainDarkColor(0.95),
                        fontWeight: FontWeight.w500,
                        fontSize: 11)),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
