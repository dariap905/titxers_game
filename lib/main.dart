import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'TITXERS',
        home: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/computer_background.png"),
                  fit: BoxFit.cover)
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              flexibleSpace: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/appbar_background.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              backgroundColor: Colors.transparent,
              leading: GestureDetector(
                  onTap: () {/* Write listener code here */},
                  child: PopupMenuButton<int>(
                    itemBuilder: (context) => [
                      PopupMenuItem(
                        child: OutlineButton.icon(
                          onPressed: () {
                            print("You tapped on SETTINGS");
                          },
                          highlightedBorderColor: Colors.cyanAccent,
                          splashColor: Colors.red,
                          borderSide: BorderSide(
                            color: Colors.purple,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(26.0),
                          ),
                          icon: const Icon(
                            Icons.add,
                            size: 18.0,
                          ),
                          label: const Text('Settings'),
                        ),
                      ),
                      PopupMenuItem(
                        child: OutlineButton.icon(
                          onPressed: () {
                            print("You tapped on CHARACTERS");
                          },
                          highlightedBorderColor: Colors.cyanAccent,
                          splashColor: Colors.red,
                          borderSide: BorderSide(
                            color: Colors.purple,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(26.0),
                          ),
                          icon: const Icon(
                            Icons.add,
                            size: 18.0,
                          ),
                          label: const Text('Characters'),
                        ),
                      ),
                    ],
                  ),
              ),
              actions: <Widget>[
                Container(
                  width: 122,
                  padding: EdgeInsets.all(10),
                  child: RaisedButton.icon(
                    color: Colors.brown[600],
                    textColor: Colors.yellow,
                    onPressed: () {
                      print("You tapped on EXP");
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0.0),
                    ),
                    icon: const Icon(
                      Icons.backup_rounded,
                      size: 18.0,
                      color: Colors.yellow,
                    ),
                    label: const Text('EXP'),
                  ),
                ),
                Container(
                  width: 122,
                  padding: EdgeInsets.all(10),
                  child: RaisedButton.icon(
                    color: Colors.brown[600],
                    textColor: Colors.yellow,
                    onPressed: () {
                      print("You tapped on GOLD");
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0.0),
                    ),
                    icon: const Icon(
                      Icons.backup_rounded,
                      size: 18.0,
                      color: Colors.yellow,
                    ),
                    label: const Text('9999'),
                  ),
                ),
                Container(
                  width: 122,
                  padding: EdgeInsets.all(10),
                  child: RaisedButton.icon(
                    color: Colors.brown[600],
                    textColor: Colors.yellow,
                    onPressed: () {
                      print("You tapped on ECAIBS");
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0.0),
                    ),
                    icon: const Icon(
                      Icons.backup_rounded,
                      size: 18.0,
                      color: Colors.yellow,
                    ),
                    label: const Text('9999'),
                  ),
                ),
              ],
              actionsIconTheme: IconThemeData(
                color: Colors.yellow,
                size: 25.0,
              ),
            ),
            body: Column(
                children: <Widget>[
                  Image.asset('assets/images/jose.png')
                ]
            ),
            floatingActionButton: SpeedDial(
              backgroundColor: Colors.brown,
              overlayColor: Colors.blueGrey,
              overlayOpacity: 0.2,
              animatedIcon: AnimatedIcons.home_menu,
              children: [
                SpeedDialChild(
                child: Icon(Icons.accessible_forward),
                label: "AFI",
                backgroundColor: Colors.green,
                onTap: () => print("MUNDO AFI")
              ),
                SpeedDialChild(
                    child: Icon(Icons.accessible_forward),
                    label: "DAM",
                    backgroundColor: Colors.grey,
                    onTap: () => print("MUNDO DAM")
                ),
                SpeedDialChild(
                    child: Icon(Icons.accessible_forward),
                    label: "COMS",
                    backgroundColor: Colors.blue,
                    onTap: () => print("MUNDO SMIX")
                )
              ],
            ),
            bottomNavigationBar: BottomAppBar(
              color: Colors.brown[200],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(6),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.yellow, width: 2),
                        color: Colors.brown[600],
                        shape: BoxShape.rectangle,
                      ),
                      child: IconButton(
                          icon: Icon(Icons.add_call,  color: Colors.yellow,),
                          onPressed: () {
                            print("You tapped on MINIGAME");
                          }
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(6),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.yellow, width: 2),
                        color: Colors.brown[600],
                        shape: BoxShape.rectangle,
                      ),
                      child: IconButton(
                          icon: Icon(Icons.airline_seat_individual_suite, color: Colors.yellow,),
                          onPressed: () {
                            print("You tapped on EGG");
                          }
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(6),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.yellow, width: 2),
                        color: Colors.brown[600],
                        shape: BoxShape.rectangle,
                      ),
                      child: IconButton(
                          icon: Icon(Icons.airline_seat_individual_suite, color: Colors.yellow,),
                          onPressed: () {
                            print("You tapped on EGG");
                          }
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(6),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.yellow, width: 2),
                        color: Colors.brown[600],
                        shape: BoxShape.rectangle,
                      ),
                      child: IconButton(
                          icon: Icon(Icons.add_shopping_cart, color: Colors.yellow,),
                          onPressed: () {
                            print("You tapped on ITEMSHOP");
                          }
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(6),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.yellow, width: 2),
                        color: Colors.brown[600],
                        shape: BoxShape.rectangle,
                      ),
                      child: IconButton(
                          icon: Icon(Icons.wash, color: Colors.yellow,),
                          onPressed: () {
                            print("You tapped on FOOD");
                          }
                      ),
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