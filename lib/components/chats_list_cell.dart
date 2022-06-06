import 'package:flutter/material.dart';
import 'package:i_exchange_it/model/chat_model.dart';
import 'package:intl/intl.dart';

class ChatListCell extends StatelessWidget {
  final Chat chat;
  final VoidCallback onTap;

  const ChatListCell({Key? key, required this.chat, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var textTheme = theme.textTheme;
    var dateTime = chat.time;
    var day = DateFormat('EEEE').format(dateTime);

    return InkWell(
        onTap: onTap,
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: theme.colorScheme.secondary),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: chat.opponentId != null &&
                            chat.opponentId.image != null &&
                            chat.opponentId.image.length > 0
                        ? FadeInImage.assetNetwork(
                            placeholder: "assets/placeholders/profile.png",
                            image: chat.opponentId.image,
                            fit: BoxFit.cover,
                          )
                        : Image.asset("assetls/placeholders/profile.png"),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                          width: 150,
                          child: Text(
                            chat.opponentId.name,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: textTheme.bodyText1,
                          )),
                      const SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        width: 160,
                        child: Text(
                          chat.lastMessage,
                          style: textTheme.bodyText2,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      )
                    ],
                  ),
                ),
                Text(
                  day,
                  style: textTheme.caption,
                )
              ],
            )));
  }
}
