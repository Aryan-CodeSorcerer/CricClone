// ignore_for_file: prefer_const_constructors

import 'package:aryan_flutter/WebSignIn.dart';
import 'package:aryan_flutter/login.dart';
import 'package:aryan_flutter/netflixhome.dart';
import 'package:aryan_flutter/profile.dart';
import 'package:aryan_flutter/roomPage.dart';
import 'package:aryan_flutter/splash.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  if(kIsWeb){
  await Firebase.initializeApp(
        options: const FirebaseOptions(
      apiKey: "AIzaSyBgisNsp5-EwIhsBmmNWvo2kHVN7f92xzE", 
    appId: "1:885630446448:web:ad073c1d284f9e124dfdb5", 
    messagingSenderId:  "885630446448", 
    projectId: "netflix-983f1",
    )
  );
  }
  else{
  await Firebase.initializeApp(

  );
  
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Netflix',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
      //home: const Web_SignIn(),
      //home: const NetflixHome(),
      //home:roomPage(),
      //home:ProfileScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
     
      appBar: AppBar( //leading:Icon(Icons.access_alarm_rounded) ,
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        centerTitle:true ,
        title: Text('My App Bar'),
        // actions: [
        //   Icon(Icons.access_alarm_rounded),
        //   Icon(Icons.access_alarm_rounded),
        //   SizedBox(
        //     width: 30,
        //   )
        // ],
      ),
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height / 20,
        width: double.infinity,
        color: Colors.blue,
 child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  _counter = 0;
                });
              },
              child: Icon(Icons.access_alarm_rounded),
            ),
            InkWell(
                onTap: () {
                  setState(() {
                    _counter = 1;
                  });
                },
                child: Icon(Icons.access_alarm_rounded)),
            InkWell(
                onTap: () {
                  setState(() {
                    _counter = 2;
                  });
                },
                child: Icon(Icons.access_alarm_rounded)),
            InkWell(
                onTap: () {
                  setState(() {
                    _counter = 3;
                  });
                },
                child: Icon(Icons.access_alarm_rounded)),
            InkWell(
                onTap: () {
                  setState(() {
                    _counter = 4;
                  });
                },
                child: Icon(Icons.access_alarm_rounded)),
          ],
        ),
      ),
      drawer: Drawer(),
      //endDrawer: Drawer(),
      
 
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: ListView(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ListView(shrinkWrap: true,),
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                
                color: Colors.grey,
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.blue,
                  width: 10,
                )
              ),
            ),
             Image.network('https://images.unsplash.com/photo-1695072331836-89ac8f96f922?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0fHx8ZW58MHx8fHx8&auto=format&fit=crop&w=500&q=60'),
             for(int i=0;i<50;i++)
            Image.asset('assets/aryan.jpg',height: 500,
            width: 500,
            fit: BoxFit.fitHeight,)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
