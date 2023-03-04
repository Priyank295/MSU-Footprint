import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:footprint/chat.dart';
import 'package:google_fonts/google_fonts.dart';
import '../chat.dart';
import 'package:footprint/chatTile.dart';

class ChatScreen extends StatefulWidget {
  Chat chat;
  int index;

  ChatScreen(this.chat, this.index);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

TextEditingController _msg = new TextEditingController();
final ScrollController _controller = ScrollController();

List<Widget> msgs = [];
int chatListLength = 20;
double _scrollPosition = 560;

class _ChatScreenState extends State<ChatScreen> {
  _scrollListener() {
    setState(() {
      if (_scrollPosition < _controller.position.pixels) {
        _scrollPosition = _scrollPosition + 560;
        chatListLength = chatListLength + 20;
      }
      //print('list view position is $_scrollPosition');
    });
  }

  void _scrollDown() {
    _controller.jumpTo(_controller.position.maxScrollExtent);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller.addListener(_scrollListener);
  }

  @override
  Widget build(BuildContext context) {
    var receive = chats[widget.index].receive.entries.toList();
    var sent = chats[widget.index].send.entries.toList();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfffF9F9F9),
        // title: Text(
        //   widget.userName,
        //   style: TextStyle(
        //     color: Colors.black,
        //     fontSize: 20,
        //     fontFamily: "Lato",
        //     fontWeight: FontWeight.bold,
        //   ),
        // ),

        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              // margin: EdgeInsets.only(left: 15),
              width: 40,
              height: 40,
              child: ClipOval(child: Image.asset(widget.chat.imgUrl)),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.chat.name,
                    style: GoogleFonts.poppins(
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                        color: Colors.black)),
                Text(widget.chat.status == true ? "Online" : "Offline",
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: Colors.black)),
              ],
            ),
          ],
        ),
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Container(
            margin: EdgeInsets.only(left: 8),
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
        ),
        leadingWidth: 25,
      ),
      body: Column(
        children: [
          // SvgPicture.asset(
          //   "assets/back.svg",
          // ),

          ChatMessageList(widget.chat, widget.index),

          ListView.builder(
            controller: _controller,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: msgs.length,
            itemBuilder: ((context, index) {
              return msgs[index];
            }),
          ),
          Container(
            child: Align(
              alignment: Alignment.bottomRight,
              child: Container(
                height: 60,
                width: double.infinity,
                color: Colors.white,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      decoration: BoxDecoration(
                          color: Color(0xfffF9F9F9),
                          border: Border.all(
                            width: 1,
                            color: Color(0xfffDFE4EA),
                          ),
                          borderRadius: BorderRadius.circular(8)),
                      height: 48,
                      width: 287,
                      child: TextFormField(
                        controller: _msg,
                        decoration: InputDecoration(
                          hintText: "Type your message",
                          border: InputBorder.none,
                          hintStyle: TextStyle(fontFamily: "Lato"),

                          // prefixIcon: SvgPicture.asset(
                          //   "assets/image.svg",
                          // ),
                          contentPadding: EdgeInsets.only(left: 15),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          msgs.add(MessageTile(_msg.text, true));
                          _msg.clear();
                          _scrollDown();
                          print("Hello");
                          //sendMessage();
                          // _scrollDown();
                          // sendNotification(
                          //     ["e3acd5e6-a4fc-11ec-958f-16349383fd8f"],
                          //     messageController.text,
                          //     "PRiyank Vaghela ");

                          // OneSignal.shared.setExternalUserId(widget.userName,
                          //     "e3acd5e6-a4fc-11ec-958f-16349383fd8f");

                          //     OneSignal.shared.
                        });
                        setState(() {});
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 10),
                        height: 48,
                        width: 65,
                        decoration: BoxDecoration(
                          color: Color(0xfff7E72F2),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: SvgPicture.asset("assets/send.svg"),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

Widget ChatMessageList(Chat chat, int index) {
  var receive = chats[index].receive.entries.toList();
  // return StreamBuilder(
  //     stream: FirebaseFirestore.instance
  //         .collection("ChatRoom")
  //         .doc(widget.chatRoomId)
  //         .collection("chats")
  //         .orderBy('time', descending: false)
  //         .snapshots(),
  //     builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
  //       return snapshot.hasData
  //           ? Expanded(
  //               child: ListView.builder(
  //                 controller: _controller,
  //                 shrinkWrap: true,
  //                 itemCount: snapshot.data?.docs.length,
  //                 itemBuilder: (BuildContext context, int index) {
  //                   DocumentSnapshot doc = snapshot.data!.docs[index];
  //                   return MessageTile(
  //                       doc["message"], doc["send by"] == user!.uid);
  //                 },
  //               ),
  //             )
  //           : Container();
  //     });
  return Expanded(
    child: ListView.builder(
      shrinkWrap: true,
      itemCount: chat.receive.length,
      itemBuilder: (BuildContext context, int index) {
        return MessageTile(receive[index].key, false);
      },
    ),
  );
}

class MessageTile extends StatelessWidget {
  final String message;
  final bool isSendByMe;

  MessageTile(this.message, this.isSendByMe);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          isSendByMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only(
              left: isSendByMe ? 0 : 20, right: isSendByMe ? 20 : 0, top: 10),
          margin: EdgeInsets.symmetric(vertical: 8),
          width: MediaQuery.of(context).size.width,
          alignment: isSendByMe ? Alignment.centerRight : Alignment.centerLeft,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 13),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: isSendByMe
                      ? [
                          Color(0xfff7E72F2),
                          Color(0xfff7E72F2).withOpacity(0.6)
                        ]
                      : [Color(0xfff2C3350), Color(0xfff2C3350)],
                ),
                borderRadius: BorderRadius.circular(8)),
            child: Text(message,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Lato",
                  fontSize: 16,
                )),
          ),
        ),
        isSendByMe == false
            ? Container(
                margin: EdgeInsets.symmetric(horizontal: 24),
                height: 20,
                width: 60,
                decoration: BoxDecoration(color: Color(0xffff1f1f1)),
                child: Center(
                  child: Text(
                    DateTime.now().hour.toString() +
                        ":" +
                        DateTime.now().minute.toString(),
                    style: GoogleFonts.poppins(
                        fontSize: 12, color: Color(0xfff8c8c8c)),
                  ),
                ),
              )
            : Container(
                margin: EdgeInsets.symmetric(horizontal: 24),
                height: 20,
                width: 60,
                decoration: BoxDecoration(color: Color(0xffff1f1f1)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      DateTime.now().hour.toString() +
                          ":" +
                          DateTime.now().minute.toString(),
                      style: GoogleFonts.poppins(
                          fontSize: 12, color: Color(0xfff8c8c8c)),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    SvgPicture.asset("assets/seen.svg"),
                  ],
                ),
              )
      ],
    );
  }
}
