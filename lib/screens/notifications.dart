// ignore_for_file: unrelated_type_equality_checks

import 'package:flutter/material.dart';
import 'package:i_exchange_it/model/notification_model.dart';
import 'package:intl/intl.dart';
import 'package:i_exchange_it/confiq/confiq.dart' as config;

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  List<NotificationModel> notification = [];
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var textTheme = theme.textTheme;
    return Scaffold(
      backgroundColor: config.Colors().scaffoldDarkColor(0.95),
      appBar: AppBar(
        title: Text(
          "Notifications",
          style: TextStyle(color: config.Colors().mainDarkColor(1)),
        ),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        automaticallyImplyLeading: false,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
                primary: false,
                shrinkWrap: true,
                itemCount: notification.length,
                itemBuilder: (context, index) {
                  NotificationModel noti = notification[index];
                  var day = DateFormat('EEEE').format(noti.dateTime!);
                  var time = DateFormat('hh:mm aa').format(noti.dateTime!);
                  return InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 5,
                                height: 5,
                                margin: const EdgeInsets.symmetric(vertical: 7),
                                decoration: BoxDecoration(
                                    color: noti.status == 0
                                        ? config.Colors()
                                            .scaffoldDarkColor(0.98)
                                        : Colors.transparent,
                                    borderRadius: BorderRadius.circular(100)),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      noti.message.toString(),
                                      style: textTheme.bodyText1,
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      '$day $time',
                                      style: textTheme.caption,
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              noti.image != null && noti.image!.isNotEmpty
                                  ? FadeInImage.assetNetwork(
                                      height: 50,
                                      width: 50,
                                      fit: BoxFit.cover,
                                      placeholder:
                                          "assets/placeholders/image.jpg",
                                      image: noti.image!)
                                  : const SizedBox(
                                      width: 0,
                                    )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 0.3,
                            color: theme.focusColor,
                          )
                        ],
                      ),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
