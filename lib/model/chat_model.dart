// ignore_for_file: prefer_typing_uninitialized_variables

class Chat {
  final int fireStoreChatId;
  final bool isRead;

  DateTime time;
  String lastMessage;

  int id;
  int ownerId;
  var opponentId;
  String createdAt;
  String updatedAt;
  String unread;
  Chat({
    required this.fireStoreChatId,
    required this.id,
    required this.ownerId,
    required this.opponentId,
    required this.createdAt,
    required this.updatedAt,
    required this.unread,
    required this.lastMessage,
    required this.time,
    required this.isRead,
  });
}
