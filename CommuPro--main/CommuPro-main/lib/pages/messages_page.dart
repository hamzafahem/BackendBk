import 'package:commupro1/models/message_data.dart';
import 'package:commupro1/screens/chat_screen.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';

import '../helpers.dart';
import '../models/story_data.dart';
import '../widgets/avatar.dart';

class MessagesPage extends StatelessWidget {
  const MessagesPage({super.key});


  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: _Stories(),
        ),
        SliverList(
            delegate: SliverChildBuilderDelegate(_delegate,)
        ),
      ]
    );
  }

  Widget _delegate (BuildContext context, int index){
    final Faker faker = Faker();
    final date = Helpers.randomDate();
    return _MessageTitle(messageData:
    MessageData(
        senderName: faker.person.name(),
        message: faker.lorem.sentence(),
        messageDate: date,
        dateMessage: Jiffy(date).fromNow(),
        profilePicture: Helpers.randomPictureUrl(),
    ));
  }
}

class _MessageTitle extends StatelessWidget {
  const _MessageTitle({
    Key? key,
    required this.messageData,
  }) : super(key: key);

  final MessageData messageData;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).push(ChatScreen.route(messageData));
      },
      child: Container(
        height: 100,
        margin: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.grey,
              width: 0.2,
            )
          )
        ),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Row(
            children: [
             Padding(
               padding: const EdgeInsets.all(10.0),
               child: Avatar.medium(url: messageData.profilePicture),
             ),
              Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Text(
                            messageData.senderName,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            letterSpacing: 0.3,
                            wordSpacing: 1.5,
                            fontWeight: FontWeight.w900,
                            fontFamily: 'Inter',

                          ),
                        ),
                      ),
                      SizedBox(
                          height: 20,
                          child: Text(messageData.message,
                            style: TextStyle(fontFamily: 'Inter',fontSize: 12,),
                            overflow: TextOverflow.ellipsis,
                          )),
                    ],
              ),
              ),
              Padding(padding: EdgeInsets.only(right: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    messageData.dateMessage.toUpperCase(),
                    style: TextStyle(
                      fontSize: 11,
                      letterSpacing: -0.2,
                      color: Color(0xFF9899A5),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    width: 18,
                    height: 18,
                    decoration: BoxDecoration(
                      color:Color(0xff87ceeb),
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        '3',
                        style: TextStyle(
                          fontSize: 10,
                          color: Color(0xFFF5F5F5),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class _Stories extends StatelessWidget {
  const _Stories({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[850],
      margin: EdgeInsets.all(8),
      elevation: 0,
      child: SizedBox(
        height: 134,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 16.0, top: 8, bottom: 8),
              child:  Text(
                'Status',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Inter',
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                final faker = Faker();
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 60,
                      child: _StoryCard(
                        storyData: StoryData(
                            name: faker.person.name(),
                            url: Helpers.randomPictureUrl(),
                        ),
                                      ),
                    ),
                  );
              },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _StoryCard extends StatelessWidget {
  const _StoryCard({
    Key? key,
    required this.storyData,
  }) : super(key: key);

  final StoryData storyData;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Avatar.medium(url: storyData.url),
        Expanded(
            child: Padding(
          padding: EdgeInsets.only(top: 16.0),
              child: Text(
                storyData.name,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 11,
                  letterSpacing: 0.3,
                  fontWeight: FontWeight.bold,
                ),
              ),
        ),
        ),
      ],
    );
  }
}




