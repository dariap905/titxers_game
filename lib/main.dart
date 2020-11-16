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
        title: 'Titxers',
        home: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/computer_background.png"),
                  fit: BoxFit.cover)
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: _buildAppBar(),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset('assets/images/profs_3.png')
                ]
            ),
            floatingActionButton: _buildSpeedDial(),
            bottomNavigationBar: _buildBottomAppBar(),
          ),
        ),
    );
  }
}

Widget _buildAppBar() {
  return AppBar(
    /*flexibleSpace: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/appbar_blue_bg.png'),
          fit: BoxFit.cover,
        ),
      ),
    ),*/
    backgroundColor: Colors.blue[700],
    actions: <Widget>[
      Container(
        width: 80,
        padding: EdgeInsets.all(10),
        alignment: Alignment.topRight,
        child: RaisedButton.icon(
          color: Colors.lightBlue,
          textColor: Colors.white,
          onPressed: () {
            print("You tapped on MENU");
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
          ),
          icon: const Icon(
            Icons.menu,
          ),
          label: const Text(''),
        ),
      ),
      Container(
        width: 110,
        padding: EdgeInsets.all(10),
        child: RaisedButton.icon(
          color: Colors.lightBlue,
          textColor: Colors.white,
          onPressed: () {
            print("You tapped on EXP");
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
          ),
          icon: const Icon(
            Icons.backup_rounded,
          ),
          label: const Text('EXP'),
        ),
      ),
      Container(
        width: 110,
        padding: EdgeInsets.all(10),
        child: RaisedButton.icon(
          color: Colors.lightBlue,
          textColor: Colors.white,
          onPressed: () {
            print("You tapped on GOLD");
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
          ),
          icon: const Icon(
            Icons.backup_rounded,
          ),
          label: const Text('9999'),
        ),
      ),
      Container(
        width: 110,
        padding: EdgeInsets.all(10),
        child: RaisedButton.icon(
          color: Colors.lightBlue,
          textColor: Colors.white,
          onPressed: () {
            print("You tapped on ECAIBS");
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
          ),
          icon: const Icon(
            Icons.backup_rounded,
          ),
          label: const Text('9999'),
        ),
      ),
    ],
    actionsIconTheme: IconThemeData(
      color: Colors.yellow,
      size: 20.0,
    ),
  );
}

Widget _buildBottomAppBar() {
  return BottomAppBar(
    color:Colors.blue[700],
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: EdgeInsets.all(6),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(4)),
              color: Colors.white,
              shape: BoxShape.rectangle,
            ),
            child: IconButton(
                icon: Icon(Icons.menu_book,  color: Colors.lightBlue,),
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
              borderRadius:BorderRadius.circular(6),
              color: Colors.white,
              shape: BoxShape.rectangle,
            ),
            child: IconButton(
                icon: Icon(Icons.airline_seat_individual_suite, color: Colors.lightBlue,),
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
              borderRadius:BorderRadius.circular(8),
              color: Colors.white,
              shape: BoxShape.rectangle,
            ),
            child: IconButton(
                icon: Icon(Icons.airline_seat_individual_suite, color: Colors.lightBlue,),
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
              borderRadius:BorderRadius.circular(10),
              color: Colors.white,
              shape: BoxShape.rectangle,
            ),
            child: IconButton(
                icon: Icon(Icons.airline_seat_individual_suite, color: Colors.lightBlue,),
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
              borderRadius:BorderRadius.circular(12),
              color: Colors.white,
              shape: BoxShape.rectangle,
            ),
            child: IconButton(
                icon: Icon(Icons.add_shopping_cart, color: Colors.lightBlue,),
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
              borderRadius:BorderRadius.circular(14),
              color: Colors.white,
              shape: BoxShape.rectangle,
            ),
            child: IconButton(
                icon: Icon(Icons.wash, color: Colors.lightBlue,),
                onPressed: () {
                  print("You tapped on FOOD");
                }
            ),
          ),
        )
      ],
    ),
  );
}

Widget _buildSpeedDial() {
  return SpeedDial(
      heroTag: 'speed-dial-hero-tag',
      backgroundColor: Colors.lightBlue,
      overlayColor: Colors.blueGrey,
      overlayOpacity: 0.2,
      animatedIcon: AnimatedIcons.home_menu,
      children: [
        SpeedDialChild(
            child: Icon(Icons.wb_sunny),
            label: "AFI",
            backgroundColor: Colors.green,
            onTap: () => print("MUNDO AFI")),
        SpeedDialChild(
            child: Icon(Icons.wb_sunny),
            label: "DAM",
            backgroundColor: Colors.grey,
            onTap: () => print("MUNDO DAM")),
        SpeedDialChild(
            child: Icon(Icons.wb_sunny),
            label: "COM",
            backgroundColor: Colors.blue,
            onTap: () => print("MUNDO SMIX"))
      ]);
}