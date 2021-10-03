import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:uclass/models/courses_model.dart';
import 'package:uclass/models/stats_model.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Stats_Model> stats_model = [
    Stats_Model(
        stats: '6',
        title: 'Courses this semester',
        icon: Icon(
          LineIcons.clipboard,
          color: Colors.grey[800],
          size: 70,
        )),
    Stats_Model(
        stats: '50',
        title: 'Of 100 hours Completed',
        icon: Icon(
          Icons.alarm,
          color: Colors.grey[800],
          size: 70,
        )),
    Stats_Model(
        stats: '40',
        title: 'Of 80 Credits completed',
        icon: Icon(
          LineIcons.dumbbell,
          color: Colors.grey[800],
          size: 70,
        )),
    Stats_Model(
        stats: '3.8',
        title: 'Of a possible 4.0 GPA',
        icon: Icon(
          LineIcons.lineChart,
          color: Colors.grey[800],
          size: 70,
        ))
  ];

  List<Course_Model> course_model = [
    Course_Model(
        title: 'Gender and Family Roles', lecturer: 'Jane Austen', credit: '4'),
    Course_Model(
        title: 'Criminology and the Art of Deduction',
        lecturer: 'Arthur Conan Doyle',
        credit: '4'),
    Course_Model(
        title: 'Basic Electronics', lecturer: 'Nikola Tesla', credit: '5'),
    Course_Model(
        title: 'Journey to Infinity', lecturer: 'Jules Verne', credit: '3'),
    Course_Model(
        title: 'Faith and Family', lecturer: 'Debbie Macomber', credit: '4'),
    Course_Model(title: 'UI Design', lecturer: 'Steve Jobs', credit: '4'),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 40, 15, 0),
            child: Column(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Welcome Raya',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[400]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'This is your personal screen, it shows your courses, course progrss, homework and group assignments',
                      style: TextStyle(color: Colors.grey[400], fontSize: 16),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Statistics',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[400]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    GridView.count(
                      crossAxisCount: 2,
                      shrinkWrap: true,
                      children: List.generate(stats_model.length, (index) {
                        return Container(
                          height: 150,
                          child: Card(
                            margin: EdgeInsets.all(10),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            elevation: 4,
                            color: Colors.blue,
                            child: Container(
                              width: 180,
                              height: 200,
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Text(
                                        stats_model[index].stats,
                                        style: TextStyle(
                                            color: Colors.grey[200],
                                            fontWeight: FontWeight.bold,
                                            fontSize: 30),
                                      ),
                                      stats_model[index].icon
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 12.0),
                                    child: Text(
                                      stats_model[index].title,
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.grey[300],
                                          fontWeight: FontWeight.w400,
                                          fontStyle: FontStyle.italic),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
                    Widget>[
                  Text(
                    'Your Courses',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[400]),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 2, 5, 5),
                    child: Container(
                      height: 246,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: course_model.length,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return Container(
                              width: 340,
                              margin: EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 10),
                              child: Card(
                                color: Colors.brown[400],
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 25.0, vertical: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        course_model[index].title,
                                        style: TextStyle(
                                            color: Colors.grey[300],
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Icon(
                                            LineIcons.userTie,
                                            color: Colors.grey[300],
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            course_model[index].lecturer,
                                            style: TextStyle(
                                                color: Colors.grey[300],
                                                fontSize: 20),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Icon(
                                            LineIcons.dumbbell,
                                            color: Colors.grey[300],
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            'Credits: ${course_model[index].credit}',
                                            style: TextStyle(
                                                color: Colors.grey[300],
                                                fontSize: 20),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: <Widget>[
                                          FlatButton.icon(
                                            color: Colors.greenAccent,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.play_arrow,
                                              size: 20,
                                              color: Colors.green,
                                            ),
                                            label: Text(
                                              'Details',
                                              style: TextStyle(
                                                  color: Colors.grey[600],
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w300),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                  )
                ])
              ],
            ),
          ),
        ),
      ),
    );
  }
}
