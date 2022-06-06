class NotificationModel {

  int? id;
  bool? status; //0=unread, 1=read
  String? message;
  DateTime? dateTime;
  String? image;

  NotificationModel({this.id, this.status, this.message, this.dateTime, this.image});

}