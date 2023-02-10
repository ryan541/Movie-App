import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/configurations/colors.dart';

import 'customWidget.dart';

void main() => runApp(myMovie());

class myMovie extends StatelessWidget {
  const myMovie({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const landingPage(),
    );
  }
}

class landingPage extends StatelessWidget {
  const landingPage({super.key});

  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: Scaffold(
            appBar: AppBar(
              elevation: 40,
              // backgroundColor: backgroundColor,
              flexibleSpace: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  colors: [mainColor, subMainColor],
                  begin: Alignment.bottomRight,
                  end: Alignment.bottomLeft,
                )),
              ),
              centerTitle: true,
              title: Text("Anga Imax"),
              leading: IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {},
              ),
              actions: [
                IconButton(
                  icon: Icon(Icons.notifications_none_sharp),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {},
                ),
              ],

              bottom: TabBar(indicatorColor: login, indicatorWeight: 5, tabs: [
                Tab(icon: Icon(Icons.home), text: 'Home'),
                Tab(icon: Icon(Icons.star), text: 'Airing'),
                Tab(icon: Icon(Icons.play_arrow), text: 'Upcoming'),
                Tab(icon: Icon(Icons.face), text: 'Profile'),
              ]),
            ),
            body: Card(
              elevation: 5,
              color: Colors.red,
              shadowColor: Colors.orange,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: Text("This is what is on Air"),
              ),
            )
            // TabBarView(children: [
            //   buildPage('Home Page'),
            //   buildPage('Home Page'),
            //   buildPage('Home Page'),
            //   buildPage('Home Page'),
            // ]),
            ),
      );

  Widget buildPage(text) => Center(
        child: Text(
          text,
          style: TextStyle(fontSize: 20.01),
        ),
      );
}
