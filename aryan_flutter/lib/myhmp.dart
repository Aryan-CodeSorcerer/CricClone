// ignore_for_file: unused_import, prefer_const_constructors, unused_field, prefer_const_literals_to_create_immutables
import 'package:aryan_flutter/main.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(const MyAppHome());
}
class MyAppHome extends StatelessWidget
{
  const MyAppHome({super.key});

  @override
  Widget build(BuildContext context)
  {
    // TextStyle textStyle = TextStyle(
    //   color: Colors.blue, // Change this to your desired color
    // );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Netflix',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 11, 11, 11)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Netflix UI'),
    );
  }
}

class MyHomePage extends StatefulWidget
{
  const MyHomePage({super.key,required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage>
{
  int _counter=0;

  void _incrementCounter()
  {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('NETFLIX',
        style: TextStyle(color: Color.fromARGB(255, 255, 0, 0)),),
        actions: [
         InkWell(
          onTap: (){
            setState(() {
              
            });
           
           },
           child: Icon(Icons.search),

         )
        ],
      ),
      body:ListView(children: [
        Text('Japanese Movies & TV',
        style: TextStyle(color: Colors.white),),
        Container(
          height: 200,
          width: double.infinity,
          child:ListView(
          scrollDirection: Axis.horizontal,

          children: [
            
            Padding(padding: const EdgeInsets.all(8.0),
          
            child: Container(
              height: 100,
              width: 400,
              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYxLSF22Ki5ojZ43JQlndSTO_0h8zkKj7T7A&usqp=CAU',fit: BoxFit.cover,
                
              ),
            ),
            
            ),
            Padding(padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              width: 400,
              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSogMpmTXzDjWSrX3Bg3DtKMfMNMyFy_8haMp6umvFAWSb6WFfKUEs7JcfTjdBIZCR__lg&usqp=CAU',fit: BoxFit.cover,
              ),
            ),
            
        ),
            Padding(padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              width: 400,
              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4pNo0RBpdmEPMXhlUcgxumfu7y7W6Yt2Gcso8r_66nlGp0v37ln-s0_FA2KjRpIdrW0g&usqp=CAU',fit: BoxFit.cover,
                
              ),
              
            ),
            
        ),
           Padding(padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              width: 400,
              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYxLSF22Ki5ojZ43JQlndSTO_0h8zkKj7T7A&usqp=CAU',fit: BoxFit.cover,
              ),
            ),
            
         ),

            
          ],
        ),
        ),
        // 2 ==========================================================================
        Text('Trending Now',
        style: TextStyle(color: Colors.white),),
        Container(
          height: 200,
          width: double.infinity,
          child:ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Padding(padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              width: 400,
              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYxLSF22Ki5ojZ43JQlndSTO_0h8zkKj7T7A&usqp=CAU',fit: BoxFit.cover,
              ),
            ),
            
            ),
            Padding(padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              width: 400,
              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYxLSF22Ki5ojZ43JQlndSTO_0h8zkKj7T7A&usqp=CAU',fit: BoxFit.cover,
              ),
            ),
            
        ),
            Padding(padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              width: 400,
              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYxLSF22Ki5ojZ43JQlndSTO_0h8zkKj7T7A&usqp=CAU',fit: BoxFit.cover,
              ),
            ),
            
        ),
           Padding(padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              width: 400,
              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYxLSF22Ki5ojZ43JQlndSTO_0h8zkKj7T7A&usqp=CAU',fit: BoxFit.cover,
              ),
            ),
            
         ),

            
          ],
        ),
        ),
        // 3 ===================================================================
        Text('Japanese Movies & TV',
        style: TextStyle(color: Colors.white),),
        Container(
          height: 200,
          width: double.infinity,
          child:ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Padding(padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              width: 400,
              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYxLSF22Ki5ojZ43JQlndSTO_0h8zkKj7T7A&usqp=CAU',fit: BoxFit.cover,
              ),
            ),
            
            ),
            Padding(padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              width: 400,
              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYxLSF22Ki5ojZ43JQlndSTO_0h8zkKj7T7A&usqp=CAU',fit: BoxFit.cover,
              ),
            ),
            
        ),
            Padding(padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              width: 400,
              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYxLSF22Ki5ojZ43JQlndSTO_0h8zkKj7T7A&usqp=CAU',fit: BoxFit.cover,
              ),
            ),
            
        ),
           Padding(padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              width: 400,
              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYxLSF22Ki5ojZ43JQlndSTO_0h8zkKj7T7A&usqp=CAU',fit: BoxFit.cover,
              ),
            ),
            
         ),

            
          ],
        ),
        ),
        // 4 =======================================================================
        Text('Japanese Movies & TV',
        style: TextStyle(color: Colors.white),),
        Container(
          height: 200,
          width: double.infinity,
          child:ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Padding(padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              width: 400,
              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYxLSF22Ki5ojZ43JQlndSTO_0h8zkKj7T7A&usqp=CAU',fit: BoxFit.cover,
              ),
            ),
            
            ),
            Padding(padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              width: 400,
              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYxLSF22Ki5ojZ43JQlndSTO_0h8zkKj7T7A&usqp=CAU',fit: BoxFit.cover,
              ),
            ),
            
        ),
            Padding(padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              width: 400,
              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYxLSF22Ki5ojZ43JQlndSTO_0h8zkKj7T7A&usqp=CAU',fit: BoxFit.cover,
              ),
            ),
            
        ),
           Padding(padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              width: 400,
              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYxLSF22Ki5ojZ43JQlndSTO_0h8zkKj7T7A&usqp=CAU',fit: BoxFit.cover,
              ),
            ),
            
         ),

            
          ],
        ),
        ),
     
      ],
      
      ),

    );
  }
}
