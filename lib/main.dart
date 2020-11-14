import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  List<String> _tabs = ['DAM', 'AFI', 'SMIX'];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
          length: _tabs.length,
      child: MaterialApp(
        title: 'TITXERS',
        theme: ThemeData(
        ),
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
                decoration:
                BoxDecoration(
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
                Padding(
                    padding: EdgeInsets.only(right: 10.0),
                    child: OutlineButton.icon(
                      onPressed: () {
                        print("You tapped on EXP");
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
                      label: const Text('EXP'),
                    ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10.0),
                  child: OutlineButton.icon(
                    onPressed: () {
                      print("You tapped on GOLD");
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
                    label: const Text('GOLD'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10.0),
                  child: OutlineButton.icon(
                    onPressed: () {
                      print("You tapped on ECAIBS");
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
                    label: const Text('ECAIBS'),
                  ),
                ),
              ],
              actionsIconTheme: IconThemeData(
                color: Colors.yellow,
                size: 25.0,
              ),
              bottom: TabBar(
                unselectedLabelColor: Colors.white,
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [
                          Colors.redAccent,
                          Colors.orangeAccent
                        ]
                    ),
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.redAccent,
                ),
                tabs: _tabs.map((String name) => Tab(text: name)).toList(),
              ),
            ),
            body: TabBarView(
              children: _tabs.map((String name) {
                return SafeArea(
                  top: false,
                  bottom: false,
                  child: Builder(
                    // This Builder is needed to provide a BuildContext that is "inside"
                    // the NestedScrollView, so that sliverOverlapAbsorberHandleFor() can
                    // find the NestedScrollView.
                    builder: (BuildContext context) {
                      return Center(
                        //child: Text('Page $name'),
                        child: Image.asset('assets/images/jose.png'),
                      );
                    },
                  ),
                );
              }).toList(),
            ),
            //Image.asset('assets/images/jose.png'),
            bottomNavigationBar: BottomAppBar(
              color: Colors.blueAccent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10, top: 0, right: 10, bottom: 0),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.yellow, width: 2),
                        color: Colors.brown,
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
                    padding: EdgeInsets.only(left: 10, top: 5, right: 10, bottom: 5),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.yellow, width: 2),
                        color: Colors.brown,
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
                    padding: EdgeInsets.only(left: 10, top: 0, right: 10, bottom: 0),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.yellow, width: 2),
                        color: Colors.brown,
                        shape: BoxShape.rectangle,
                      ),
                      child: IconButton(
                          icon: Icon(Icons.web_rounded, color: Colors.yellow,),
                          onPressed: () {
                            print("You tapped on SHOP");
                          }
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, top: 0, right: 10, bottom: 0),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.yellow, width: 2),
                        color: Colors.brown,
                        shape: BoxShape.rectangle,
                      ),
                      child: IconButton(
                          icon: Icon(Icons.add_shopping_cart, color: Colors.yellow,),
                          onPressed: () {
                            print("You tapped on FOOD");
                          }
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, top: 0, right: 10, bottom: 0),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.yellow, width: 2),
                        color: Colors.brown,
                        shape: BoxShape.rectangle,
                      ),
                      child: IconButton(
                          icon: Icon(Icons.account_balance_sharp, color: Colors.yellow,),
                          onPressed: () {
                            print("You tapped on WORLDS");
                          }
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}