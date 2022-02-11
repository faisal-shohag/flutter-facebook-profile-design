import 'dart:convert';

import 'package:flutter/material.dart';
import './info.dart';

class Profile extends StatelessWidget {
  Profile({Key? key}) : super(key: key);
  List<Info> info = [
    Info(
        icon: const Icon(
          Icons.work,
          color: Colors.white,
        ),
        normalText: 'Studying department of CSE at ',
        boldText: 'Begum Rokeya University, Rangpur'),
    Info(
        icon: const Icon(Icons.school, color: Colors.white),
        normalText: 'Studied at ',
        boldText: 'Cantonment Public School & College, Lalmonirhat'),
    Info(
        icon: const Icon(Icons.favorite, color: Colors.white),
        normalText: 'Single',
        boldText: ''),
    Info(
        icon: const Icon(Icons.link, color: Colors.white),
        normalText: 'somewhereinblog.net/blog/Faisal2020',
        boldText: ''),
    Info(
        icon: const Icon(Icons.more_horiz, color: Colors.white),
        normalText: 'See your About info')
  ];

  Widget infoTemplate(infoItem, context) {
    return Row(
      children: [
        infoItem.icon,
        const SizedBox(
          width: 5,
        ),
        Container(
          width: MediaQuery.of(context).size.width - 50.0,
          padding: const EdgeInsets.all(5),
          child: RichText(
              text: TextSpan(style: const TextStyle(fontSize: 18), children: [
            TextSpan(
                text: infoItem.normalText,
                style: const TextStyle(color: Colors.white)),
            TextSpan(
                text: infoItem.boldText,
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold))
          ])),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(left: 10, right: 10),
        color: Color.fromARGB(242, 8, 5, 5),
        constraints: const BoxConstraints.expand(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 180,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)),
                      image: DecorationImage(
                          image: AssetImage('assets/bg.jpg'),
                          fit: BoxFit.cover)),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 80),
                  child: const CircleAvatar(
                    radius: 74.0,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 70.0,
                      backgroundImage: AssetImage('assets/avatar.jpg'),
                    ),
                  ),
                ),
                Container(
                    margin: const EdgeInsets.only(top: 190),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          width: 55,
                        ),
                        const Icon(
                          Icons.shield,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50))),
                          child: const Icon(
                            Icons.camera_alt,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    )),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Faisal Shohag',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            // const SizedBox(
            //   height: 10,
            // ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'If you cannot do great things, do small things in a great way.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(primary: Colors.blue[800]),
                  child: Row(
                    children: const [
                      Icon(Icons.add_circle_rounded),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Add to story')
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(primary: Colors.grey[900]),
                  child: Row(
                    children: const [
                      Icon(Icons.edit),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Add to story')
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(primary: Colors.grey[900]),
                  child: const Icon(Icons.more_horiz),
                )
              ],
            ),
            Divider(
              thickness: 1,
              height: 10,
              color: Colors.grey[800],
            ),
            Column(
              children: info
                  .map<Widget>((infoList) => infoTemplate(infoList, context))
                  .toList(),
            ),

            Container(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      primary: Colors.blue.withOpacity(0.1)),
                  child: Text(
                    'Edit public details',
                    style: TextStyle(color: Colors.blue[900]),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
