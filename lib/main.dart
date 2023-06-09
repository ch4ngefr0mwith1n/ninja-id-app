import 'package:flutter/material.dart';

void main() {
  // runApp(const MyApp());
  runApp(MaterialApp(
    // "home" svojstvo utvrđuje šta će biti prikazano na "home" screen-u
    home: NinjaCard(),
  ));
}

// kreiraćemo "stateless" widget - koji vraća "widget tree"
// taj "tree" će na kraju biti prikazan na našem ekranu
class NinjaCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // "Scaffold" je widget koji nam omogućava
    // da implementiramo najosnovniji "layout"
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        // podešavanja za "Appbar"
        title: Text('Ninja ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0,
      ),
      // dodaćemo "padding" - tako da sadržaj ne bude "prilijepljen" uz "AppBar"
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0),
        // "Column" će da bude "layout" za našu aplikaciju
        child: Column(
          // oba "Text" widgeta trebaju da budu pribijeni uz lijevu stranu
          // kod "Column" widgeta, "main axis" ide vertikalno
          // "cross axis" ide horizontalno
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/thumb.jpg'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 90.0,
              color: Colors.blue[800]
            ),
            Text(
              'NAME',
              // stilizovanje teksta:
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2
              ),
            ),
            // "SizedBox" služi da stvori prostor između dva widgeta
            SizedBox(height: 5.0),
            Text(
              'Chun-Li',
              // stilizovanje teksta:
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2,
                fontSize: 28,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              'CURRENT NINJA LEVEL',
              // stilizovanje teksta:
              style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2
              ),
            ),
            // "SizedBox" služi da stvori prostor između dva widgeta
            SizedBox(height: 5.0),
            Text(
              '8',
              // stilizovanje teksta:
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2,
                  fontSize: 28,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 30.0),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10.0,),
                Text(
                  'chun.li@theninja.co.uk',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

