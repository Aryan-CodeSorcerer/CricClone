// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class ComingSoonScreen extends StatefulWidget {
  const ComingSoonScreen({super.key});

  @override
  State<ComingSoonScreen> createState() => _ComingSoonScreenState();
}

class _ComingSoonScreenState extends State<ComingSoonScreen> {
  List movies = [
    {
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBiAw_3QV_qZuGVgubo8ho-f6lF2385bBQbA&usqp=CAU',
      'remind_me': false,
      'season_no': 1,
      'starting_date': DateTime.now().add(Duration(days: 10)).toString(),
      'title': 'Castle & Castle',
      'description':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus bibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa, id ut ipsum aliquam  enim non posuere pulvinar diam.',
      'tags': [
        'Steamy',
        'Soapy',
        'Slow Burn',
        'Suspensful',
        'Teen',
        'Mystery',
      ],
    },
    {
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXFL06I2LCmeszc1ycCLRh6JeUbKcsV0atYQ&usqp=CAU',
      'remind_me': false,
      'season_no': 1,
      'starting_date': DateTime.now().add(Duration(days: 10)).toString(),
      'title': 'Tiny Pretty Things',
      'description':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus bibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa, id ut ipsum aliquam  enim non posuere pulvinar diam.',
      'tags': [
        'Steamy',
        'Soapy',
        'Slow Burn',
        'Suspensful',
        'Teen',
        'Mystery',
      ],
    },
    {
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhd_h3oPZSr5wCmoMXh_rdBAY3DvjmrGLBWA&usqp=CAU',
      'remind_me': false,
      'season_no': 1,
      'starting_date': DateTime.now().add(Duration(days: 10)).toString(),
      'title': 'Tiny Pretty Things',
      'description':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus bibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa, id ut ipsum aliquam  enim non posuere pulvinar diam.',
      'tags': [
        'Steamy',
        'Soapy',
        'Slow Burn',
        'Suspensful',
        'Teen',
        'Mystery',
      ],
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.circle_notifications,
                    color: Color(0xffF50914),
                  )),
              Text(
                'Notification',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 4,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: MediaQuery.of(context).size.width>900?6:7,
              crossAxisCount: MediaQuery.of(context).size.width>900?2:1,
              crossAxisSpacing: 10,
              mainAxisSpacing: 8,
            ),
            itemBuilder: (context, index) {
              return Container(
                width: double.infinity,
                // height: 65,
                decoration: BoxDecoration(
                  color: Color(0xff424242),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8_P1zP9qBB6yy3AVgPeZzK7CpZx7-HCOI9w&usqp=CAU',
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'New Arrival',
                          style: TextStyle(color: Colors.white,
                          fontSize: MediaQuery.of(context).size.longestSide*0.016
                          ),
                        ),
                        Text(
                          'EL Dorado',
                          style: TextStyle(color: Colors.white,
                          fontSize: MediaQuery.of(context).size.longestSide*0.016),
                        ),
                        Text(
                          'Nov 25',
                          style: TextStyle(color: Color(0xffFFFFFF),
                          fontSize: MediaQuery.of(context).size.longestSide*0.016),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
          SizedBox(
            height: 20,
          ),
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
              itemCount: movies.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                Map? a = movies[index];
                return a == Null
                    ? Center(
                        child: CircularProgressIndicator(),
                      )
                    : Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.network(
                              a?['image'],
                              height: 385,
                              width: double.infinity,
                              fit: BoxFit.fill,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                //Spacer(),
                                Column(
                                  children: [
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.notifications,
                                          color: Colors.white,
                                        )),
                                    Text(
                                      'Remind Me',
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                                Column(
                                  children: [
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.share,
                                          color: Colors.white,
                                        )),
                                    Text(
                                      'Share',
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                )
                              ],
                            ),
                            Text(
                              'Season 1 Coming December 14',
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '${a?['title']}',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '${a?['description']}',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      );
              })
        ],
      ),
    );
  }
}
