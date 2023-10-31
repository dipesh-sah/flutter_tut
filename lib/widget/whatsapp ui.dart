import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    var name = [
      'Dipesh Sah',
      'Ayush Dai',
      'Baliram Yadav MMU',
      'Maharishi Markandeshwar',
      'Dinesh Jaishwal Sir',
      'Group G2 Mentor',
      'English Section G',
      'Sonu Giri',
      'Ayush Dai',
      'Baliram Yadav MMU',
      'Maharishi Markandeshwar',
      'Dinesh Jaishwal Sir',
      'Group G2 Mentor',
      'English Section G',
      'Sonu Giri'
    ];
    var subtitle = [
      'Free',
      'Good Night',
      'Go',
      'Ok',
      'Hello',
      'world',
      'Good morning',
      'Good night',
      'Good Night',
      'Go',
      'Ok',
      'Hello',
      'world',
      'Good morning',
      'Good night'
    ];
    var time = DateTime.now();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 1,
          title: Text("WhatsApp"),
          backgroundColor: Colors.green.shade600,
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt_outlined)),
            IconButton(onPressed: () {}, icon: Icon(Icons.search_sharp)),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_rounded))
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.chat_bubble_outline),
          onPressed: () {},
          backgroundColor: Colors.green,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chats'),
            BottomNavigationBarItem(
                icon: Icon(Icons.access_time_outlined), label: 'Updates'),
            BottomNavigationBarItem(
                icon: Icon(Icons.groups), label: 'Communities'),
            BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Calls')
          ],
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.black,
          selectedLabelStyle: TextStyle(color: Colors.black),
        ),
        body: Container(
          // color: Colors.blue.shade50,
          child: SizedBox(
            child: ListView.separated(
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('${name[index]}'),
                  subtitle: Text('${subtitle[index]}'),
                  leading: CircleAvatar(child: Icon(Icons.person)),
                  trailing: Text('${DateFormat('jm').format(time)}'),
                );
              },
              itemCount: name.length,
              separatorBuilder: (context, index) {
                return Divider(thickness: 1,height: 1,);
              },
            ),
          ),
        ),
      ),
    );
  }
}
