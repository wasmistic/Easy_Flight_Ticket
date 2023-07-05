import 'package:flight_ticket/appColor/app_color.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

import '../../profile/profile_page.dart';
import '../arrival/arrival_page.dart';
import '../ticket/ticket_page.dart';
import 'book_ticket.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> PageList= [
    BookTicketPage(),
    ArrivalPage(),
    TicketPage(),
    ProfilePage(),
  ];

  int SelectedIndex=0;

  void OnTapIndex(int index){
    setState(() {
      SelectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgColor,
      body: PageList[SelectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: OnTapIndex,
        currentIndex: SelectedIndex,
        elevation: 0,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: Color(0xFF526480),
        selectedFontSize: 0,
        unselectedFontSize: 0,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        backgroundColor: AppColor.bgColor,
        items: const [
          BottomNavigationBarItem(
              icon:Icon(FluentSystemIcons.ic_fluent_home_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
            label: 'Home'
          ),
          BottomNavigationBarItem(
              icon:Icon(FluentSystemIcons.ic_fluent_search_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
              label: 'search'
          ),
          BottomNavigationBarItem(
              icon:Icon(FluentSystemIcons.ic_fluent_ticket_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
              label: 'Ticket'
          ),
          BottomNavigationBarItem(
              icon:Icon(FluentSystemIcons.ic_fluent_person_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
              label: 'Person'
          ),
        ],
      ),
    );
  }
}
