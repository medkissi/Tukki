import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(primaryColor: Colors.green),
        title: 'Pabliito welcome to Flutter',
        home: Scaffold(
            appBar: AppBar(
              elevation:0,
              title: Text('Wari'),
              centerTitle: true,
              leading: Icon( Icons.menu),
              actions: [
                IconButton(icon: Icon(Icons.filter), onPressed: (){})
              ],
            ),
            bottomNavigationBar: BottomAppBar(
              shape:  CircularNotchedRectangle(),
              child: Container(height:  50.0),
            ),
            floatingActionButton: FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: (){
                setState(() {
                  _count++;
                });
              },
              backgroundColor: Colors.green,
            ),
            floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 80.0,
                    backgroundImage: NetworkImage("https://images.unsplash.com/photo-1519011985187-444d62641929?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=80")
                  ),
                  Divider( height:  80.0,
                  ),
                  Text('Kissi',
                    style:  TextStyle(
                      fontSize:  30.0,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text("$_count",
                  style:  TextStyle(
                    fontSize:  30.0,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  MaterialButton(
                    child: Text("Reset",
                    style:TextStyle(
                      color: Colors.white
                    )
                    ),
                    color: Colors.green,
                    onPressed: (){
                      setState(() {
                        _count = 0;
                      });
                    },
                  )
                ],
              ),
            )

        )
    );
  }

}

