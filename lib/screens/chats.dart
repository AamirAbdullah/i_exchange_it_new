// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:i_exchange_it/components/chats_list_cell.dart';
import 'package:i_exchange_it/widgets/circularLoading_widget.dart';
import 'package:i_exchange_it/confiq/confiq.dart' as config;

class Chats extends StatefulWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  var chats;
  bool loadingChats = false;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Chats",
          style: TextStyle(color: config.Colors().mainDarkColor(1)),
        ),
        backgroundColor: config.Colors().scaffoldDarkColor(0.95),
        centerTitle: true,
        automaticallyImplyLeading: false,
        elevation: 0,
      ),
      body: Container(
        color: config.Colors().scaffoldDarkColor(0.95),
        child: SingleChildScrollView(
          child: Column(
            children: [
              //You don't have any chats
              loadingChats
                  ? const CircularLoadingWidget()
                  : loadingChats == false
                      ? SizedBox(
                          height: size.height - 100,
                          child: Center(
                            child: Opacity(
                              opacity: 0.2,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  Opacity(
                                      opacity: 0.2,
                                      child: Image.asset(
                                        "assets/img/no_message.png",
                                        width: 200,
                                        height: 200,
                                      )),
                                  const Opacity(
                                    opacity: 0.4,
                                    child: Text(
                                      "You don't have any chats",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      : ListView.builder(
                          shrinkWrap: true,
                          primary: false,
                          itemCount: chats.length,
                          itemBuilder: (context, index) {
                            return ChatListCell(
                              onTap: () {},
                              chat: chats[index],
                            );
                          }),
            ],
          ),
        ),
      ),
    );
  }
}
