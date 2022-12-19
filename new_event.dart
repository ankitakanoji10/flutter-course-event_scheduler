import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class NewEventScreen extends StatefulWidget {
  const NewEventScreen({Key? key}) : super(key: key);

  @override
  State<NewEventScreen> createState() => _NewEventScreen();
}

class _NewEventScreen extends State<NewEventScreen> {
  final TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Event'),
        backgroundColor: Colors.deepPurple[800],

      ),
      body: Container(
        color: Colors.deepPurple[200],
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Padding(
                padding:  const EdgeInsets.symmetric(vertical: 10.0,horizontal: 40.0),


                child: Container(

                  decoration: BoxDecoration(
                    color: Colors.deepPurple[800],
                    borderRadius: BorderRadius.circular(60.0),

                  ),
                  height:60.0,
                  width: 5000.0,
                  child: TextField(
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                      decoration: InputDecoration(

                        icon: Padding(
                          padding: const EdgeInsets.all(20.0),

                          child: Icon(Icons.event, color: Colors.white,size: 30.0,),
                        ),

                        hintText: 'Event',
                        hintStyle: TextStyle(color: Colors.white,),


                      ),
                      controller: _textEditingController,
                    ),
                ),
              ),

              Builder(
                builder: (context) {
                  return SizedBox(
                    width: 325.0,
                    height: 40.0,
                    child: ElevatedButton(onPressed: () {

                      String newEventText = _textEditingController.text;
                      Navigator.of(context).pop(newEventText);
                    },
                      style:ElevatedButton.styleFrom(
                        primary: Colors.deepPurple[100],

                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(60)),

                         // Background color
                      ),
                      child:Text('ADD'),),
                  );
                }
              )
            ],
          ),
        ),
      ),
    );
  }
}

