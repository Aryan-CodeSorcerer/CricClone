import 'dart:math';

import 'package:aryan_flutter/utils_func_home.dart';
import 'package:flutter/material.dart';

class NetflixHome extends StatefulWidget {
  const NetflixHome({super.key});

  @override
  State<NetflixHome> createState() => _NetflixHomeState();
}

class _NetflixHomeState extends State<NetflixHome> {
  //this is for generes
  List<int> index1=[];
  List<int> index2=[];
  List<int> index3=[];
  List<int> index4=[];
  List<int> index5=[];
  List<int> index6=[];
  List<int> index7=[];
  List<int> index8=[];
  List<int> index9=[];
  List<int> index10=[];
  List<int> index11=[];
  List<int> index12=[];

  @override
  void initState() {
    for(int i=0;i<10;i++)
    {
      index1.add(Random().nextInt(40));
      index2.add(Random().nextInt(40));
      index3.add(Random().nextInt(40));
      index4.add(Random().nextInt(40));
      index5.add(Random().nextInt(40));
      index6.add(Random().nextInt(40));
      index7.add(Random().nextInt(40));
      index8.add(Random().nextInt(40));
      index9.add(Random().nextInt(40));
      index10.add(Random().nextInt(40));
      index11.add(Random().nextInt(40));
      index12.add(Random().nextInt(40));
    }
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Utils.homeImage(context),
          Utils.title('Previews'),
          Utils.circleList(context, index1),
          Utils.title('Tv shows'),
          Utils.imageListView(context, index2),
          Utils.title('Popular on Netflix'),
          Utils.imageListView(context, index3),
          Utils.title('Popular in India'),
          Utils.imageListView(context, index4),
          Utils.title('My List'),
          Utils.imageListView(context, index5),
          Utils.title('American Movies'),
          Utils.imageListView(context, index6),
          Utils.title('Hollywood Movies & TV'),
          Utils.imageListView(context, index7),
          Utils.title('Netflix Originals'),
          Utils.imageListView(context, index8),
          Utils.title('Watch It Again'),
          Utils.imageListView(context, index9),
          Utils.title('New Releases'),
          Utils.imageListView(context, index10),
          Utils.title('TV Thrillers & Mysteries'),
          Utils.imageListView(context, index11),
          Utils.title('US TV Shows'),
          Utils.imageListView(context, index12),
 
        ],
      ),
    );
  }
}
