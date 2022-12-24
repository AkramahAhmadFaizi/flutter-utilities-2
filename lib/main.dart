import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App",
        home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Utils App"),
      //   backgroundColor: Colors.teal,),
      body: TabBarr(),
    );
  }
}



class TabBarr extends StatefulWidget {
  @override
  State<TabBarr> createState() => _TabBarrState();
}

class _TabBarrState extends State<TabBarr>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState(){
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose(){
    tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("Tab Bar"),
          backgroundColor: Colors.green,
          bottom: TabBar(
          controller: tabController,
          tabs: [
            Tab(
              text: ("fdsakljf"),
              icon: Icon(Icons.favorite),
            ),
            Tab(
              text: ("dfasdf"),
              icon: Icon(Icons.book),
            )
          ],
        ),
        ),
        body: TabBarView(
          children: [
            NewPage("first"),
            NewPage("Second")
          ],
          controller: tabController,
        ),
        // bottomNavigationBar: Material(
        //   color: Colors.teal,
        //   child: TabBar(
        //     controller: tabController,
        //     tabs: [
        //       Tab(
        //         text: ("fdsakljf"),
        //         icon: Icon(Icons.favorite),
        //       ),
        //       Tab(
        //         text: ("dfasdf"),
        //         icon: Icon(Icons.book),
        //       )
        //     ],
        //   ),
        // )
    );

  }
}

class NewPage extends StatelessWidget {
  final String title;
  NewPage(this.title);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(title, style: TextStyle(
          fontSize: 30.0,
        ),),
      ),
    );
  }
}
