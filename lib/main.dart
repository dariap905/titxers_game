import 'package:flame/anchor.dart';
import 'package:flame/components/animation_component.dart';
import 'package:flame/components/component.dart';
import 'package:flame/components/mixins/resizable.dart';
import 'package:flame/flame.dart';
import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import 'package:flame/util.dart';
import 'package:flutter/services.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

const COLOR = const Color(0xFFDDC0A3);
const SIZE = 52.0;
const GRAVITY = 400.0;
const BOOST = -380.0;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final size = await Flame.util.initialDimensions();

  final game = MyGame(size);
  runApp(
    MaterialApp(
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
          body: game.widget,
          floatingActionButton: _buildSpeedDial(),
          bottomNavigationBar: _buildBottomAppBar(),
        ),
      ),
    ),
  );
}

class Bg extends Component with Resizable{
  static final Paint _paint = Paint()..color = COLOR;
  @override
  void render(Canvas c) {
    c.drawRect(Rect.fromLTWH(0.0, 0.0, size.width, size.height), _paint);
  }

  @override
  void update(double t) {
    // TODO: implement update
  }

}

class Doll extends AnimationComponent with Resizable{
  Doll(): super.sequenced(SIZE, SIZE, 'doll_sprite.png', 4, textureWidth: 16.0, textureHeight: 16.0){
    this.anchor = Anchor.center;
  }

  @override
  void resize(Size size){
    super.resize(size);
    this.x = size.width / 2;
    this.y = size.height / 2;
  }
}

class MyGame extends BaseGame {
  MyGame(Size size){
    add(Bg());
    add(Doll());
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
          label: const Text('333'),
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
              borderRadius: BorderRadius.all(Radius.circular(4)),
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
              borderRadius: BorderRadius.all(Radius.circular(4)),
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
              borderRadius: BorderRadius.all(Radius.circular(4)),
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
              borderRadius: BorderRadius.all(Radius.circular(4)),
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
              borderRadius: BorderRadius.all(Radius.circular(4)),
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
