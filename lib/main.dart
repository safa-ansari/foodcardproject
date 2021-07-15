import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
   home: foodcard(),
));

class foodcard extends StatefulWidget{
  @override
  _foodcardState createState() => _foodcardState();
}

class _foodcardState extends State<foodcard> {
  int foodlevel= 0;
   @override
   Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
          title: Text('Food Card'),
         centerTitle: true,
         backgroundColor: Colors.blue[300],
         elevation: 1.0,
       ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            foodlevel += 1;

          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.black,
      ),

      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 20.0, 30.0,0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/pizza.png'),
                radius: 60.0,
              ),
            ),
            Divider(
              height: 70.0,
              color: Colors.deepOrangeAccent,
            ),
            SizedBox(height: 20.0,),
            Text('Name',
            style: TextStyle(
              color: Colors.brown[200],
              letterSpacing: 2.0,
              fontSize: 15.0,

            )
            ),
            Text(
                'Pizza ',
                style: TextStyle(
                    color: Colors.lightBlue,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold
            )
            ),
            SizedBox(height: 25.0),
            Text('Number of Servings',
                style: TextStyle(
                  color: Colors.brown[200],
                  letterSpacing: 2.0,
                  fontSize: 15.0,

                )
            ),
            Text(
                '$foodlevel',
                style: TextStyle(
                    color: Colors.lightBlue,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold
                )
            ),
            SizedBox(height: 25.0),
            Row(
              children: <Widget> [
                Icon(
                  Icons.add_ic_call,
                  color: Colors.lightBlue,
                ),
                Text(
                  '672989900',
                  style: TextStyle(
                      color: Colors.lightBlue),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}






