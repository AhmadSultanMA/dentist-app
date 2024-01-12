import 'package:flutter/material.dart';
import 'package:urdentist/data/repository/daily_task.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:urdentist/data/repository/user.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    // String fullName = UserManager.instance.getFullName();
    // String email = UserManager.instance.getEmail();

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                    height: height * 0.28,
                    child: Column(
                      children: [
                        Container(
                          padding:
                              EdgeInsets.only(right: 20, left: 20, top: 20),
                          height: height * 0.2,
                          decoration: BoxDecoration(
                            color: Colors.blue.shade700,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(width * 0.08),
                              bottomRight: Radius.circular(width * 0.08),
                            ),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/images/icon_avatar.png',
                              ),
                              Container(
                                margin: EdgeInsets.only(left: width * 0.03),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'Jesley Weasley',
                                          style: TextStyle(
                                            fontSize: width * 0.05,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                        const Icon(
                                          Icons.keyboard_arrow_down,
                                          color: Colors.white,
                                        ),
                                      ],
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(top: 5),
                                      padding: EdgeInsets.symmetric(
                                        vertical: height * 0.004,
                                        horizontal: width * 0.02,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.blue.shade50,
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(20)),
                                      ),
                                      child: Text(
                                        '3 Years and 1 Month',
                                        style: TextStyle(
                                          fontSize: width * 0.03,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const Spacer(),
                              SizedBox(
                                height: height * 0.06,
                                child: Container(
                                  alignment: Alignment.center,
                                  child: const Icon(
                                    Icons.notifications,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    )),
                Positioned(
                  top: height * 0.11,
                  left: width * 0.075,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 1,
                            blurRadius: 1.2,
                            offset: Offset(0, 0.2),
                          ),
                        ],
                        color: Colors.yellow.shade50,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    width: width * 0.85,
                    height: height * 0.16,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/icon_trophy.png',
                              width: width * 0.18,
                            ),
                            SizedBox(
                              width: width * 0.02,
                            ),
                            Expanded(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '11 Exp Points',
                                  style: TextStyle(
                                      color: Colors.blue.shade800,
                                      fontWeight: FontWeight.bold,
                                      fontSize: width * 0.04),
                                ),
                                SizedBox(
                                  height: height * 0.008,
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                      10), // Sesuaikan dengan radius yang diinginkan
                                  child: const LinearProgressIndicator(
                                    value: 11 / 100,
                                    backgroundColor: Colors.grey,
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                        Colors.blue),
                                    minHeight: 15,
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.008,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Novice',
                                      style: TextStyle(
                                          color: Colors.blue.shade800,
                                          fontWeight: FontWeight.bold,
                                          fontSize: width * 0.04),
                                    ),
                                    Text(
                                      'Master',
                                      style: TextStyle(
                                          color: Colors.blue.shade800,
                                          fontWeight: FontWeight.bold,
                                          fontSize: width * 0.04),
                                    ),
                                  ],
                                )
                              ],
                            ))
                          ],
                        ),
                        SizedBox(
                          height: height * 0.008,
                        ),
                        Container(
                          height: 2,
                          color: Colors.yellow.shade600,
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Text(
                          "Wow, your points are still low this period, let's complete the daily tasks to increase your points!",
                          style: TextStyle(
                              fontSize: width * 0.032,
                              fontWeight: FontWeight.w500),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin:
                  EdgeInsets.only(top: height * 0.01, bottom: height * 0.01),
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Text(
                'Our Service',
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: width * 0.055),
              ),
            ),
            Container(
              margin:
                  EdgeInsets.only(top: height * 0.01, bottom: height * 0.03),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/icon_health_tracker.png',
                        width: width * 0.25,
                        height: height * 0.08,
                      ),
                      Text(
                        'Health Tracker',
                        style: TextStyle(
                          fontSize: width * 0.036,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/icon_caries_detector.png',
                        width: width * 0.25,
                        height: height * 0.08,
                      ),
                      Text(
                        'Caries Detector',
                        style: TextStyle(
                          fontSize: width * 0.036,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/icon_dentist.png',
                        width: width * 0.25,
                        height: height * 0.08,
                      ),
                      Text(
                        'Find Dentist',
                        style: TextStyle(
                          fontSize: width * 0.036,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              margin: EdgeInsets.only(bottom: height * 0.01),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Daily Task',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: width * 0.055),
                  ),
                  Text('View More',
                      style: TextStyle(
                          fontSize: width * 0.035,
                          color: Colors.blue.shade800,
                          fontWeight: FontWeight.w600))
                ],
              ),
            ),
            Column(
              children: globalDailyTasks.map((task) {
                task.updateStatus();
                return DailyTaskWidget(task, 'home');
              }).toList(),
            ),
            Container(
              margin:
                  EdgeInsets.only(top: height * 0.015, bottom: height * 0.01),
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Article',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: width * 0.055),
                  ),
                  Text('View More',
                      style: TextStyle(
                          fontSize: width * 0.035,
                          color: Colors.blue.shade800,
                          fontWeight: FontWeight.w600))
                ],
              ),
            ),
            Container(
              margin:
                  EdgeInsets.only(left: 20, right: 20, bottom: height * 0.01),
              padding: const EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 1.2,
                    offset: Offset(0, 0.2),
                  ),
                ],
              ),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                    child: Image.asset(
                      'assets/images/article1.jpg',
                      width: width * 0.25,
                    ),
                  ),
                  SizedBox(width: width * 0.03),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Oral Health',
                          style: TextStyle(
                            fontSize: width * 0.03,
                            color: Colors.blue.shade800,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Text(
                          'Healthy teeth, healthy smile.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: width * 0.04,
                          ),
                        ),
                        SizedBox(height: height * 0.01),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '6 January 2024',
                              style: TextStyle(
                                fontSize: width * 0.027,
                                color: Colors.grey.shade600,
                              ),
                            ),
                            Text(
                              'Read More',
                              style: TextStyle(
                                fontSize: width * 0.027,
                                color: Colors.blue.shade800,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DailyTaskWidget extends StatefulWidget {
  final DailyTask task;
  String page;

  DailyTaskWidget(this.task, this.page);

  @override
  _DailyTaskWidgetState createState() => _DailyTaskWidgetState();
}

class _DailyTaskWidgetState extends State<DailyTaskWidget> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return widget.task.status && widget.page == "home"
        ? Container()
        : Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
            margin:
                EdgeInsets.only(bottom: height * 0.015, left: 20, right: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 1.2,
                  offset: Offset(0, 0.2),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      widget.task.image,
                      width: width * 0.11,
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      width: width * 0.4,
                      child: Text(
                        widget.task.description,
                        textAlign: TextAlign.start,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    !widget.task.status
                        ? setState(() {
                            widget.task.status = true;
                          })
                        : '';
                  },
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 6, horizontal: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: !widget.task.status
                          ? Colors.blue.shade700
                          : Colors.grey.shade200,
                    ),
                    child: Center(
                      child: Text(
                        'Done',
                        style: TextStyle(
                          color: !widget.task.status
                              ? Colors.white
                              : Colors.grey.shade600,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
  }
}
