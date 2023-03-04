import 'package:photo_manager/photo_manager.dart';

class ReceiveChat {
  String msg;
  bool read, isSendByMe;
  bool sent;

  ReceiveChat(
      {required this.msg,
      required this.read,
      required this.sent,
      required this.isSendByMe});
}

var chat1 = [
  ReceiveChat(msg: "Hi", read: true, sent: false, isSendByMe: false),
  ReceiveChat(msg: "Hello", read: false, sent: true, isSendByMe: true),
  ReceiveChat(msg: "How are you?", read: false, sent: false, isSendByMe: false),
];

var chat2 = [
  ReceiveChat(msg: "Hello", read: false, sent: false, isSendByMe: false),
  ReceiveChat(
      msg: "You can mark as read message through hold of perticular chat",
      read: false,
      sent: false,
      isSendByMe: false)
];
