import 'package:flutter/material.dart';

class MyTracker extends StatelessWidget {
  // const MyTracker({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            leading: const Icon(
              Icons.question_mark_outlined,
              color: Colors.white,
            ),
            title: const Text('Tracker'),
            centerTitle: true,
            backgroundColor: Colors.blue[600],
            actions: const [
              Row(
                children: [
                  Icon(
                    Icons.notification_important,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Icon(
                    Icons.settings,
                    color: Colors.white,
                  )
                ],
              )
            ],
          ),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 75,
                      height: 75,
                      clipBehavior: Clip.hardEdge,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.red),
                      child: Image.asset(
                        'assets/pic3.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Column(
                      children: [
                        Text(
                          'Robert Steven',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.abc_sharp),
                            SizedBox(
                              width: 5,
                            ),
                            Text('1234567890987'),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 100,
                    ),
                    const Text(
                      'Log out',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 40,
                color: Colors.blue[600],
                child: const Text(
                  'Online | Battery: 90% ',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 3,
                  padding: const EdgeInsets.all(10),
                  children: <Widget>[
                    Column(
                      children: [
                        Icon(
                          Icons.h_mobiledata,
                          color: Colors.blue[600],
                          size: 40,
                        ),
                        const Text('Map'),
                        const Text('All devices')
                      ],
),
                    Column(children: [
                        Icon(
                          Icons.abc_rounded,
                          color: Colors.blue[600],
                          size: 40,
                        ),
                        const Text('Live Location'),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.safety_check,
                          color: Colors.blue[600],
                          size: 40,
                        ),
                        const Text('History Location'),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.vaccines,
                          color: Colors.blue[600],
                          size: 40,
                        ),
                        const Text('Set Geoforce')
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.macro_off,
                          color: Colors.blue[600],
                          size: 40,
                        ),
                        const Text('Detail Info'),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.baby_changing_station,
                          color: Colors.blue[600],
                          size: 40,
                        ),
                        const Text('Edit device')
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.label,
                          color: Colors.blue[600],
                          size: 40,
                        ),
                        const Text('Change'),
                        const Text('Current Number')
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.u_turn_left,
                          color: Colors.blue[600],
                          size: 40,
                        ),
                        const Text('battery Saving mode'),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.h_mobiledata,
                          color: Colors.blue[600],
                          size: 40,
                        ),
                        const Text('Normal Mode')
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.dangerous,
                          color: Colors.blue[600],
                          size: 40,
                        ),
                        const Text('Shutdown device')
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.baby_changing_station_outlined,
                          color: Colors.blue[600],
                          size: 40,
                        ),
                        const Text('Device'),
                        const Text('Command history')
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.safety_check,
                          color: Colors.blue[600],
                          size: 40,
                        ),
                        const Text('Contact us')
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
  }
}