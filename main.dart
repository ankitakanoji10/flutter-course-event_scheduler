import 'package:event_scheduler/new_event.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  final List<Widget> _list = [];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple[800],
          title: Text('Event Scheduler'),
        ),
        body: Container(
          color: Colors.deepPurple[200],
          child: ListView.builder(
              itemCount: _list.length,
              itemBuilder: ((context, index) => _list[index])),
        ),
        floatingActionButton: Builder(builder: (context) {
          return FloatingActionButton(
            backgroundColor: Colors.deepPurple[800],
            onPressed: () async {
              String newText = await Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => NewEventScreen()));
              setState(() {
                _list.add(Center(
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.0,right: 20.0,top: 10.0,bottom: 15.0),
                      child: Container(

                         height: 80.0,
                        //   color: Colors.white,
                          // clipBehavior: Clip.hardEdge,
                          // decoration: BoxDecoration(borderRadius: BorderRadius.circular(50.0),),
                          child: Card(

                            child: Center(child: Container(

                                child: Text(newText, style: TextStyle(fontSize: 20.0),)),
                            ),
                          ),
                          ),

                    ),
                ),
                );
              });
            },
            child: Icon(Icons.add),
          );
        }),
      ),
    );
  }
}
