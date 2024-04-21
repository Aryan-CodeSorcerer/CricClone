import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/status.dart' as statusCodes;

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late Future<Map<String, dynamic>> futureMatch;
  late String team1Name;
  late String team2Name;

  @override
  void initState() {
    super.initState();
    futureMatch = fetchCricketMatch('89749');
  }

  Future<Map<String, dynamic>> fetchCricketMatch(String matchId) async {
    final response =
        await http.get(Uri.parse('http://192.168.1.47:5005/score?id=$matchId'));

    if (response.statusCode == 200) {
      Map<String, dynamic> matchData = json.decode(response.body);
      // Extract team names
      var titleParts = matchData['title'].split(', ');
      var teamNames = titleParts[0].split(' vs ');
      team1Name = teamNames[0];
      team2Name = teamNames[1];
      return matchData;
    } else {
      throw Exception('Failed to load cricket match');
    }
  }

  void fetchCricketMatchWebSocket(String matchId) {
    final channel =
        IOWebSocketChannel.connect('ws://192.168.1.47:5005/score?id=$matchId');

    channel.stream.listen((message) {
      setState(() {
        Map<String, dynamic> matchData = json.decode(message);
        // Extract team names
        var titleParts = matchData['title'].split(', ');
        var teamNames = titleParts[0].split(' vs ');
        team1Name = teamNames[0];
        team2Name = teamNames[1];
      });
    }, onError: (error) {
      // Handle error
    }, onDone: () {
      channel.sink.close(statusCodes.goingAway);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 169, 43, 158),
        title: Text(
          "Live Scores",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: () {
              // Handle login button press
            },
            child: Text(
              'Login',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
        ],
      ),
      body: Container(decoration: BoxDecoration(),
        child: SingleChildScrollView(
          child: Center(
            child: FutureBuilder<Map<String, dynamic>>(
              future: futureMatch,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return CircularProgressIndicator();
                } else if (snapshot.hasError) {
                  return Text('${snapshot.error}');
                } else if (snapshot.hasData && snapshot.data != null) {
                  var matchData = snapshot.data!;
                  // Extract team names
                  var titleParts = matchData['title'].split(', ');
                  var teamNames = titleParts[0].split(' vs ');
                  team1Name = teamNames[0];
                  team2Name = teamNames[1];
                  String team1Asset = team1Name.replaceAll(' ', '') + '.png';
                  String team2Asset = team2Name.replaceAll(' ', '') + '.png';
      
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          team1Name,
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black),
                                        ),
                                        SizedBox(height: 8),
                                        Image.asset(
                                          'images/$team1Asset',
                                          width: 100,
                                          height: 100,
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          team2Name,
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black),
                                        ),
                                        SizedBox(height: 8),
                                        Image.asset(
                                          'images/$team2Asset',
                                          width: 100,
                                          height: 100,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(height: 20),
                                Text(
                                  matchData['update'] ?? 'Update Not Found',
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.black),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  matchData['livescore'] ??
                                      'Live Score Not Found',
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                } else {
                  return Text('No match data available');
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: MainPage(),
  ));
}
