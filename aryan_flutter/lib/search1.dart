// ignore_for_file: prefer_const_constructors

import 'package:aryan_flutter/network_calls.dart';
import 'package:aryan_flutter/search_data.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
 // Map ?data;

  List mainitems=[];
  List tempitems=[];
  void filterSearchResults(String query){
    setState(() {
      tempitems=mainitems.where((element) => element['name'].toString().toLowerCase().contains(query.toLowerCase())).toList();
    });
  }
  @override
  void initState() {
    mainitems=SearchData.genereData['search_engines'];
    tempitems=mainitems;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
   // print(['search_engines']);
    
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            color:Color(0xff424242),
            child: TextField(
              onChanged:(value) {
                filterSearchResults(value);
              },
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
            itemCount:tempitems.length,

            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
          childAspectRatio: 5.0,
          mainAxisSpacing: 5,
          crossAxisSpacing: 30 )
          , itemBuilder: (context ,index )
          {
            Map? a=tempitems[index];
           // return a==null?Center(child: CircularProgressIndicator()):
            return a==null?Container():
             Row(
              children: [
                Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXFL06I2LCmeszc1ycCLRh6JeUbKcsV0atYQ&usqp=CAU',),
                Center(
                  child: Text('${a['name']}',
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