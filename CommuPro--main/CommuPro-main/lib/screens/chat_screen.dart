import 'dart:ui';

import 'package:commupro1/models/message_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/avatar.dart';
import '../widgets/glowing_actuon_button.dart';
import '../widgets/icon_buttons.dart';

class ChatScreen extends StatelessWidget {
  static Route route(MessageData data) => MaterialPageRoute(
    builder: (context) => ChatScreen(
      messageData: data,
    ),
  );


  const ChatScreen({
    Key? key,
    required this.messageData
  }) : super(key: key);

  final MessageData messageData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(

          toolbarHeight: 100,
        leadingWidth: 54,
        leading: Align(
        alignment: Alignment.centerRight,
        child: IconBackground(
        icon: CupertinoIcons.back,

        onTap: () {
      Navigator.of(context).pop();
    },
    ),
    ),
          title: _AppBarTitle(
            messageData: messageData,
          ),
          actions: [
            Padding(padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Center(
              child: IconBorder(
                icon: CupertinoIcons.video_camera_solid,
                onTap: (){},
              ),
            ),
            ),
            Padding(padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Center(
                child: IconBorder(
                  icon: CupertinoIcons.phone_fill,
                  onTap: (){},
                ),
              ),
            ),
          ],
        ),
      body: Column(
        children: [
          Expanded(
              child: _DemoMessageList()
          ),
          _ActionBar(),
        ],
      ),
    );
  }
}

class _DemoMessageList extends StatelessWidget {
  const _DemoMessageList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        _DateLable(lable: 'Yesterday'),
    _MessageTile(
    message: 'Hello :)',
    messageDate: '9:54',
    ),
    _MessageOwnTile(
    message: 'Hi ! :)',
    messageDate: '9:55',
    ),
    ]
    );
  }
}



class _DateLable extends StatelessWidget {
  const _DateLable({
    Key? key,
    required this.lable,
  }) : super(key: key);

  final String lable;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 32.0),
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 12),
            child: Text(
              lable,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}




class _AppBarTitle extends StatelessWidget {
  const _AppBarTitle({
    Key? key,
    required this.messageData,
}) : super(key: key);

  final MessageData messageData;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Avatar.small(
          url: messageData.profilePicture,
        ),
        const SizedBox(
          width: 16,
        ),

        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(messageData.senderName,
              overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Poppins'
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Text('Online now',
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
              ),
            ],
          ),
        )
      ]
    );
  }
}

class _MessageOwnTile extends StatelessWidget {
  const _MessageOwnTile({
    Key? key,
    required this.messageDate,
    required this.message,
  }) : super(key: key);

  final String message;
  final String messageDate;

  static const _borderRadius = 26.0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
      child: Align(
        alignment: Alignment.centerRight,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Color(0xff87ceeb),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(_borderRadius),
                    bottomLeft: Radius.circular(_borderRadius),
                    bottomRight: Radius.circular(_borderRadius),
                  )
              ),
              child: Padding(
                padding:
                EdgeInsets.symmetric(horizontal: 12.0, vertical: 14),
                child: Text(message),
              ),
            ),
            Padding(padding:
            EdgeInsets.only(top: 8.0),
              child: Text(
                messageDate,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
}
}

class _MessageTile extends StatelessWidget {
  const _MessageTile({
    Key? key,
    required this.messageDate,
    required this.message,
  }) : super(key: key);

  final String message;
  final String messageDate;

  static const _borderRadius = 26.0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0,vertical: 1.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(_borderRadius),
                  topRight: Radius.circular(_borderRadius),
                  bottomRight: Radius.circular(_borderRadius),
                ),
              ),
              child: Padding(
                padding:
                EdgeInsets.symmetric(horizontal: 12.0, vertical: 14),
                child: Text(message),
              ),
            ),
            Padding(padding:
            EdgeInsets.only(top: 8.0),
              child: Text(
                  messageDate,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class _ActionBar extends StatelessWidget {
  const _ActionBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: true,
      top: false,
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Icon(
              CupertinoIcons.camera_fill,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 2.0),
            child: Icon(
              CupertinoIcons.paperclip, // Using paperclip icon for file
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: TextField(
                style: const TextStyle(fontSize: 14),
                decoration: const InputDecoration(
                  hintText: 'Type something...',
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 12,
              right: 12.0,
            ),
            child: Icon(
              Icons.mic, // Using mic icon for audio
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 24.0,
            ),
            child: GlowingActionButton(
              color: Colors.black,
              icon: Icons.send_rounded,
              onPressed:(){},
            ),
          ),
        ],
      ),
    );
  }
}

class GlowingActionButton extends StatelessWidget {
  final Color color;
  final IconData icon;
  final VoidCallback onPressed;

  const GlowingActionButton({
    Key? key,
    required this.color,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
        ),
        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),
    );
  }
}


