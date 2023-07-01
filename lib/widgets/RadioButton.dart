import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  String? gender;
  String? status;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //app bar
        appBar: AppBar(
          //text
          title: const Text("BottomNavigation Bar"),
          centerTitle: true,
          //BG colour
          backgroundColor: const Color.fromARGB(255, 8, 153, 27),

          //leading
          leading: const Icon(Icons.home),
          //Actions
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],

          //elevation
          elevation: 30,
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Container(
                color: Colors.amberAccent,
                child: Column(
                  children: [
                    const Text(
                      'select you Gender',
                      style: TextStyle(fontSize: 20),
                    ),
                    ListTile(
                      title: Text('Male'),
                      leading: Radio(
                          value: 'Male',
                          groupValue: gender,
                          onChanged: (value) {
                            setState(() {
                              gender = value;
                            });
                          }),
                    ),
                    ListTile(
                      title: Text('Female'),
                      leading: Radio(
                          value: 'female',
                          groupValue: gender,
                          onChanged: (value) {
                            setState(() {
                              gender = value;
                            });
                          }),
                    ),
                    ListTile(
                      title: Text('other'),
                      leading: Radio(
                          value: 'other',
                          groupValue: gender,
                          onChanged: (value) {
                            setState(() {
                              gender = value;
                            });
                          }),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  const Text(
                    'Marital status',
                    style: TextStyle(fontSize: 20),
                  ),
                  RadioListTile(
                      title: Text("married"),
                      value: ' Maried',
                      groupValue: status,
                      onChanged: (value) {
                        setState(() {
                          status = value;
                        });
                      }),
                  RadioListTile(
                      activeColor: Colors.red,
                      title: Text("Unmarried"),
                      value: ' Unmaried',
                      groupValue: status,
                      onChanged: (value) {
                        setState(() {
                          status = value;
                        });
                      }),
                  Text(
                    '$status',
                    style: TextStyle(fontSize: 30),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
