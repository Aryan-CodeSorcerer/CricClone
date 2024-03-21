// ignore_for_file: prefer_const_constructors

import 'package:aryan_flutter/network_calls.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  Map ?data;
  List images=[
'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS00WjE9nuaa9vRM0RCDHH10WPqjIUODAglYg&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZhiZo1Ef_AhiehuBmLW8VQuDYII3x9ZJGOg&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhd_h3oPZSr5wCmoMXh_rdBAY3DvjmrGLBWA&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8_P1zP9qBB6yy3AVgPeZzK7CpZx7-HCOI9w&usqp=CAU',
  'https://cdn.cinematerial.com/p/136x/ciraz0yq/ambulance-vietnamese-movie-poster-sm.jpg?v=1648522001',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXFL06I2LCmeszc1ycCLRh6JeUbKcsV0atYQ&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMaJQQHtXMKOJ4FTswRdVdhvpxsaY1zKPmJQ&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8_P1zP9qBB6yy3AVgPeZzK7CpZx7-HCOI9w&usqp=CAU',
  'https://cdn.cinematerial.com/p/136x/ciraz0yq/ambulance-vietnamese-movie-poster-sm.jpg?v=1648522001',
  'https://cdn.cinematerial.com/p/136x/ciraz0yq/ambulance-vietnamese-movie-poster-sm.jpg?v=1648522001',
  
  
  ];
  List title=[
    'title 1',
    'title 2',
    'title 3',
    'title 4',
    'title 5',
    'title 6',
    'title 7',
    'title 8',
    'title 9',
    'title 10',
  ];

  List<Map>items=[];
  @override
  void initState() {
    NetworkCalls.getSearch().then((value)  {
    //  print (value);
      setState(() {
      data=value.data;
        
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print(data?['data']['search_engines']);
    
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            color:Color(0xff424242),
            child: TextField(
              cursorColor: Color(0xffC4C4c4),
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                prefixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Color(0xffC4C4C4),)),
                border: InputBorder.none,
                hintText: 'Search for a Show, movies, genre, etc.',
                hintStyle: TextStyle(color: Color(0xffC4C4C4)),
                suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.mic,color: Color(0xffC4C4C4))),

                
              ),
            ),
          ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Top Searches',
                style: TextStyle(color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                
                ),
                ),
           
          ),
         Expanded(
          child:GridView.builder(
            itemCount: data?['data']['search_engines'].length,

          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 5.0,
          mainAxisSpacing: 5,
          crossAxisSpacing: 30 )
          , itemBuilder: (context ,index )
          {
            Map? a=data?['data']['search_engines'][index];
           // return a==null?Center(child: CircularProgressIndicator()):
            return a==null?Container():
             Row(
              children: [
                Image.network(a?['image']),
                Center(
                  child: Text('${a?['name']}',
                  style: TextStyle(color: Colors.white,fontSize: 20),),
                ),
              ],
            );

          }
          )
          // child: ListView.builder(
          //   scrollDirection: Axis.vertical,
          //   itemCount: images.length,
          //   itemBuilder: (context,index)
          //   {
          //     return Padding(
          //       padding: const EdgeInsets.all(8.0),
          //       child: Container(
          //         color: Color(0xff424242),
          //         child: Row(
          //           children: [
          //             Image.network(images[index],
          //             height: 100,
          //             fit: BoxFit.fill,
          //             width: 150,),
          //             SizedBox(width: 73,),
          //             Text(title[index],
          //             style: TextStyle(color: Colors.white,
          //             fontSize: 30),),
          //             Spacer(),
          //             IconButton(onPressed: (){}, icon: Icon(Icons.play_circle_outline_rounded,color: Color(0xffC4C4C4),))
          //           ],
          //         ),
          //       ),
          //     );
          //   }
          //   )
             )

        
        ],
      )
    );
  }
}