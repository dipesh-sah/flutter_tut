import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DismissibleWidgets extends StatelessWidget {
  const DismissibleWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> fruits = [
      'apple',
      'banana',
      'grapes',
      'orange',
      'mango',
      'apple',
      'banana',
      'grapes',
      'orange',
      'mango'
    ];
    List<String> message = [
      'Are you selected in the final SBI PO Result',
      'Are you selected in the final SBI PO Result',
      'Are you selected in the final SBI PO Result',
      'Are you selected in the final SBI PO Result',
      'Are you selected in the final SBI PO Result',
      'Are you selected in the final SBI PO Result',
      'Are you selected in the final SBI PO Result',
      'Are you selected in the final SBI PO Result',
      'Are you selected in the final SBI PO Result',
      'Are you selected in the final SBI PO Result'
    ];
    var dateTime = DateTime.now();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dismissible Widgets'),
        ),
        body: Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 11, top: 5, right: 10),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Search in emails',
                      hintStyle: TextStyle(fontSize: 19),
                      prefixIcon: Icon(Icons.menu),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                            child: Icon(Icons.supervised_user_circle_outlined)),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30)))),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.all(10),
                  itemBuilder: (context, index) {
                    return Dismissible(
                      secondaryBackground: Card(
                        color: Colors.red,
                      ),
                      background: Container(color: Colors.green),
                      onDismissed: (direction) {
                        if (direction == DismissDirection.startToEnd) {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text(message[index]),
                            behavior: SnackBarBehavior.floating,
                          ));
                        }
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Card(
                          child: ListTile(
                            title: Text(
                              fruits[index],
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                            leading: CircleAvatar(
                                child: IconButton(
                                    icon: Icon(Icons.person),
                                    onPressed: () {})),
                            subtitle: Text(message[index],
                                style: TextStyle(fontSize: 16)),
                            trailing: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(DateFormat.jm().format(dateTime)),
                                Icon(Icons.star_border)
                              ],
                            ),
                          ),
                          elevation: 4,
                        ),
                      ),
                      key: ValueKey<int>(index),
                    );
                  },
                  itemCount: fruits.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
