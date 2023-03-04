class Chat {
  String name, imgUrl;
  bool status, seen;

  Map<String, bool> send;
  Map<String, bool> receive;

  Chat(
      {required this.imgUrl,
      required this.name,
      required this.send,
      required this.seen,
      required this.receive,
      required this.status});
}

final chats = [
  Chat(
      imgUrl: "assets/user1.png",
      name: "Jessica",
      status: true,
      receive: {
        "Hi": true,
        "How are you?": true,
        "Fine": false,
      },
      send: {
        'Hi': true,
        "Fine": true,
        "You": true,
      },
      seen: false),
  Chat(
      imgUrl: "assets/user2.png",
      name: "Beatrice",
      send: {
        "Hello": true,
      },
      receive: {
        "Hi": true,
        "You can mark as read message through hold of perticular chat": false,
      },
      status: false,
      seen: false)
];
