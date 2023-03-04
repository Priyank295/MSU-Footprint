import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:footprint/screens/chatScreen.dart';
import 'package:google_fonts/google_fonts.dart';
import '../chat.dart';

class ChatRoomScreen extends StatefulWidget {
  const ChatRoomScreen({Key? key}) : super(key: key);

  @override
  _ChatRoomScreenState createState() => _ChatRoomScreenState();
}

// var receive = chats..toList();
// var

class _ChatRoomScreenState extends State<ChatRoomScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30, vertical: 40),
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xfffF1F1F1),
                borderRadius: BorderRadius.circular(14),
              ),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(children: [
                  SvgPicture.asset(
                    "assets/search2.svg",
                    height: 25,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Search Chat",
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.normal))
                ]),
              ),
            ),
            Container(
              width: double.infinity,
              height: 0.5,
              color: Color(0xfff771F98),
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: chats.length,
              itemBuilder: (context, index) {
                // var receive = chats[index].receive.entries.toList();
                // var sent = chats[index].send.entries.toList();

                return InkWell(
                    onTap: () {
                      setState(() {
                        chats[index].seen = true;
                      });

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (ctx) =>
                                  ChatScreen(chats[index], index)));
                    },
                    child: _chatTile(context, chats[index], index));
              },
            )
          ],
        ));
  }
}

Widget _chatTile(context, Chat chat, index) {
  var receive = chats[index].receive.entries.toList();
  var sent = chats[index].send.entries.toList();

  return Column(
    children: [
      Container(
        height: 65,
        width: double.infinity,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage(chat.imgUrl),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        chat.name,
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      chat.seen == true
                          ? Row(
                              children: [
                                sent[sent.length - 1].value == true
                                    ? SvgPicture.asset(
                                        "assets/seen.svg",
                                        height: 17,
                                      )
                                    : SvgPicture.asset("assets/sent.svg"),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  sent[sent.length - 1].key,
                                  style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    color: Color(0xfff5C5C5C),
                                  ),
                                )
                              ],
                            )
                          : Text(
                              chat.receive.length.toString() + " New Messages",
                              style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            )
                    ],
                  )
                ],
              ),
              Text(
                DateTime.now().hour.toString() +
                    ":" +
                    DateTime.now().minute.toString(),
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  color: Color(0xfff5C5C5C),
                ),
              )
            ],
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.symmetric(vertical: 5),
        width: double.infinity,
        height: 0.5,
        color: Color(0xfff771F98),
      )
    ],
  );
}
