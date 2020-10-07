import 'package:flutter/material.dart';

import '../side_screen_drawer.dart';
import 'BestFares.dart';

class HomePage extends StatelessWidget {
  final PageStorageKey key;

  HomePage({this.key}) : super(key: key);

  var appBar = AppBar(
    elevation: 0.0,
    backgroundColor: Colors.transparent,
  );

  @override
  Widget build(BuildContext context) {
    final windowWidth = MediaQuery.of(context).size.width;
    final windowHeight = MediaQuery.of(context).size.height;
    final statusBarHeight = MediaQuery.of(context).padding.top;
    final appBarHeight = appBar.preferredSize.height;
    final bodyHeight =
        windowHeight - (statusBarHeight + appBarHeight + windowHeight * 0.079);
    final faresHeight = bodyHeight -
        (bodyHeight * 0.4 + 50 + windowHeight * 0.035 + windowHeight * 0.09);

    return Stack(
      children: [
        Container(
          height: windowHeight,
          decoration: BoxDecoration(
            color: Color.fromRGBO(240, 245, 248, 1),
          ),
        ),
        Container(
          height: windowHeight * 0.5,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.lightBlue,
                Colors.blue[700],
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              tileMode: TileMode.clamp,
            ),
            image: DecorationImage(
              image: AssetImage('./assets/images/cloud1.jpg'),
              colorFilter: new ColorFilter.mode(
                  Colors.black.withOpacity(0.2), BlendMode.dstATop),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(80),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black45,
                blurRadius: 15,
              ),
            ],
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: appBar,
          drawer: SideNavigationDrawer(),
          body: SingleChildScrollView(
            child: Container(
              height: bodyHeight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: bodyHeight * 0.4,
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [


                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'CROATIA',
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontFamily: 'Oxygen',
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 5,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                                Text(
                              'AIRLINES',
                              style: TextStyle(
                              fontSize: 30,
                              fontFamily: 'Oxygen',
                              fontWeight: FontWeight.bold,
                              letterSpacing: 5,
                              color: Colors.blue[900],
                            ),
                          ),
                            ],
                          ),
                          
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Welcome',
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Oxygen',
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    margin: EdgeInsets.only(
                      left: windowWidth * 0.08,
                      right: windowWidth * 0.08,
                      top: windowHeight * 0.035,
                    ),
                    child: Material(
                      elevation: 15,
                      shadowColor: Colors.black45,
                      borderRadius: BorderRadius.circular(20),
                      child: TextFormField(
                        style: TextStyle(
                          color: Colors.grey[800],
                          fontWeight: FontWeight.bold,
                        ),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: EdgeInsets.only(
                              left: 22, top: 0, right: 15, bottom: 0),
                          hintText: 'Search flights..',
                          hintStyle: TextStyle(
                            color: Colors.grey[450],
                            fontWeight: FontWeight.bold,
                          ),
                          suffixIcon: Theme(
                            data: Theme.of(context).copyWith(
                              iconTheme: IconThemeData(
                                color: Colors.grey[600],
                              ),
                            ),
                            child: Icon(
                              Icons.search,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ),
                  ),

                  ////////////// list of fares ///////////////
                  BestFares(
                      faresHeight: faresHeight,
                      windowHeight: windowHeight,
                      windowWidth: windowWidth),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
