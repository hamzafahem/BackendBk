import 'package:commupro1/screens/onboding/components/sign_in_form.dart';
import 'package:commupro1/screens/onboding/onboding_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screens/CalendarPage.dart';
import 'calls_page.dart';
import '../screens/contacts_page.dart';
import 'messages_page.dart';
import 'communities_page.dart';
import '../widgets/avatar.dart';
import '../widgets/glowing_actuon_button.dart';
import '../screens/account_screen.dart'; // Import the AccountScreen widget
import 'home.dart'; // Import the Home widget if it's in a different file

class Home extends StatelessWidget {
  Home({super.key});

  final ValueNotifier<int> pageIndex = ValueNotifier(0);
  final ValueNotifier<String> title = ValueNotifier('Messages');

  final pages = const [
    MessagesPage(),
    CommunitiesPage(),
    CallsPage(),
    ContactsPage(),
  ];

  final pageTitle = const [
    'Messages',
    'Communities',
    'Calls',
    'Contacts',
  ];

  void _onNavigationItemSelected(index) {
    title.value = pageTitle[index];
    pageIndex.value = index;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: ValueListenableBuilder(
          valueListenable: title,
          builder: (BuildContext context, String value, _) {
            return Text(
              value,
              style: TextStyle(
                fontFamily: "Poppins",
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            );
          },
        ),
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(CupertinoIcons.line_horizontal_3, size: 20),
            );
          },
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(CupertinoIcons.search, size: 20),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: ValueListenableBuilder(
        valueListenable: pageIndex,
        builder: (BuildContext context, int value, _) {
          return pages[value];
        },
      ),
      bottomNavigationBar: _BottomNavigationBar(
        onItemSelected: _onNavigationItemSelected,
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[850],
        width: 275,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.horizontal(right: Radius.circular(30)),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey[850],
            borderRadius: BorderRadius.horizontal(right: Radius.circular(30)),
            boxShadow: [
              BoxShadow(
                color: Color(0xff3d00000),
                spreadRadius: 30,
                blurRadius: 20,
              ),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, 50, 20, 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white,
                      size: 20,
                    ),
                    SizedBox(
                      width: 56,
                    ),
                    Text(
                      "CommuPro",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: "Poppins",
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage('assets/avatars/9.png'),
                    ),
                    SizedBox(width: 12),
                    Text(
                      "Oumaima",
                      style: TextStyle(color: Colors.white, fontFamily: "Poppins"),
                    ),
                  ],
                ),
                Divider(
                  height: 35,
                  color: Color(0xff476272),
                ),
                SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home()), // Navigate to Home screen
                    );
                  },
                  child: Row(
                    children: [
                      Icon(
                        CupertinoIcons.home,
                        color: Colors.white,
                        size: 20,
                      ),
                      SizedBox(
                        width: 36,
                      ),
                      Text(
                        "Home",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: "Inter",
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CalendarPage()), // Navigate to CalendarPage
                    );
                  },
                  child: Row(
                    children: [
                      Icon(
                        CupertinoIcons.calendar,
                        color: Colors.white,
                        size: 20,
                      ),
                      SizedBox(
                        width: 36,
                      ),
                      Text(
                        "Calendar",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: "Inter",
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AccountScreen()), // Navigate to AccountScreen
                    );
                  },
                  child: Row(
                    children: [
                      Icon(
                        CupertinoIcons.settings,
                        color: Colors.white,
                        size: 20,
                      ),
                      SizedBox(
                        width: 36,
                      ),
                      Text(
                        "Settings",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: "Inter",
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.notifications,
                      color: Colors.white,
                      size: 20,
                    ),
                    SizedBox(
                      width: 36,
                    ),
                    Text(
                      "Notifications",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: "Inter",
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Divider(
                  height: 35,
                  color: Color(0xff476272),
                ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => OnboardingScreen()), // Navigate to CalendarPage
              );
            },
            child: Row(
              children: [
                Icon(
                  Icons.logout_rounded,
                  color: Colors.white,
                  size: 20,
                ),
                    SizedBox(
                      width: 36,
                    ),

                    Text(
                      "Log out",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: "Inter",
                      ),
                    ),
                  ],
                ),
          )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _BottomNavigationBar extends StatefulWidget {
  const _BottomNavigationBar({
    Key? key,
    required this.onItemSelected,
  }) : super(key: key);

  final ValueChanged<int> onItemSelected;

  @override
  State<_BottomNavigationBar> createState() => _BottomNavigationBarState();
}

class _BottomNavigationBarState extends State<_BottomNavigationBar> {
  var selectedIndex = 0;

  void handleItemSelected(int index) {
    setState(() {
      selectedIndex = index;
    });
    widget.onItemSelected(index);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: EdgeInsets.all(0),
      child: SafeArea(
        top: false,
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.only(top: 16, left: 8, right: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _NavigationBarItem(
                index: 0,
                label: "Messages",
                icon: CupertinoIcons.bubble_left_bubble_right_fill,
                isSelected: (selectedIndex == 0),
                onTap: handleItemSelected,
              ),
              _NavigationBarItem(
                index: 2,
                label: "Calls",
                icon: CupertinoIcons.phone_fill,
                isSelected: (selectedIndex == 2),
                onTap: handleItemSelected,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GlowingActionButton(
                  color: Colors.grey[850]!,
                  icon: CupertinoIcons.add,
                  onPressed: () {
                    print('todo');
                  },
                ),
              ),
              _NavigationBarItem(
                index: 3,
                label: "Contacts",
                icon: CupertinoIcons.person_2_fill,
                isSelected: (selectedIndex == 3),
                onTap: handleItemSelected,
              ),
              _NavigationBarItem(
                index: 1,
                label: "Community",
                icon: CupertinoIcons.person_3_fill,
                isSelected: (selectedIndex == 1),
                onTap: handleItemSelected,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _NavigationBarItem extends StatelessWidget {
  const _NavigationBarItem({
    Key? key,
    required this.label,
    this.isSelected = false,
    required this.index,
    required this.onTap,
    required this.icon,
  }) : super(key: key);

  final bool isSelected;
  final ValueChanged<int> onTap;
  final int index;
  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        onTap(index);
      },
      child: SizedBox(
        width: 70,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              size: 20,
              color: isSelected ? Color(0xff87ceeb) : Colors.grey,
            ),
            const SizedBox(height: 8),
            Text(
              label,
              style: isSelected
                  ? const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 11,
                color: Color(0xff87ceeb),
              )
                  : const TextStyle(fontSize: 11, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
