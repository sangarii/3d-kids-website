import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:kids_application/game.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:url_launcher/url_launcher.dart';

import 'responsive.dart';

class MyScreen extends StatefulWidget {
  const MyScreen({super.key});

  @override
  State<MyScreen> createState() => _MyScreenState();
}
void openInstagramHomePage() async {
  final instagramUrl = "https://www.instagram.com/";
  if (await canLaunch(instagramUrl)) {
    await launch(instagramUrl);
  } else {
    throw 'Could not launch $instagramUrl';
  }
}
void openFacebookHomePage() async {
  final facebookUrl = "https://www.facebook.com/";
  if (await canLaunch(facebookUrl)) {
    await launch(facebookUrl);
  } else {
    throw 'Could not launch $facebookUrl';
  }
}
void openTwitterHomePage() async {
  final twitterUrl = "https://twitter.com/";
  if (await canLaunch(twitterUrl)) {
    await launch(twitterUrl);
  } else {
    throw 'Could not launch $twitterUrl';
  }
}

class _MyScreenState extends State<MyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: SingleChildScrollView(
        child: Responsive(
          mobile: Column(children: [
            Padding(
              padding: const EdgeInsets.only(top: 35.0, left: 20),
              child: Column(
                children: [
                  Container(
                    child: SizedBox(
                      child: DefaultTextStyle(
                          style: TextStyle(
                            fontSize: 26,
                            fontFamily: 'Lora',
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontStyle: FontStyle.normal,
                            letterSpacing: 1.5,
                            wordSpacing: 2.0,
                          ),
                          child: AnimatedTextKit(
                            animatedTexts: [
                              TypewriterAnimatedText(
                                  'Empowering Kids With Creativity And Innovation'),
                            ],
                            isRepeatingAnimation: false,
                          )),
                    ),
                  )
                ],
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.only(top: 30.0, left: 20),
            //   child: Column(
            //     children: [
            //       Text(
            //         'We hold the conviction that each child possesses the capacity to become a creative and innovative thinker.\nBy equipping them with appropriate tools and skills,\nwe can empower them to thrive in the constantly\n evolving world of today.',
            //         style: TextStyle(
            //           //color:Colors.black,
            //           color: Colors.black,
            //           fontSize: 16,
            //           fontWeight: FontWeight.bold,
            //           //fontStyle: ,
            //           // shadows: [
            //           //   Shadow(
            //           //     offset: Offset(2, 2),
            //           //     blurRadius: 3, // Specify the blur radius of the shadow
            //           //     color: Colors.black.withOpacity(
            //           //         0.5), // Specify the color and opacity of the shadow
            //           //   ),
            //           // ],
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.only(
                top: 35.0,
                right: 220,
              ),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.start,
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Our Activities',
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                       fontFamily: 'Lora',
                      shadows: [
                        Shadow(
                          offset: Offset(2, 2),
                          blurRadius:
                              3, // Specify the blur radius of the shadow
                          color: Colors.black.withOpacity(
                              0.5), // Specify the color and opacity of the shadow
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  Container(
                    width: 370,
                    height: 370,
                    //double width = MediaQuery.of(context).size*0.5,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 2.0),
                        borderRadius: BorderRadius.circular(35.0),
                        image: DecorationImage(
                          image: AssetImage("photo/kid2.jpg"),
                          fit: BoxFit.cover,
                        )),
                  )
                ],
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 105),
                  child: Text(
                    '3D Printing Workshop',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                       fontFamily: 'Lora',
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, right: 10,left:25),
              child: Column(
                children: [
                  Text(
                    'Explore the realm of 3D printing and uncover the secrets of ideas into real world objects through\nhands-on learning and innovative design.',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                       fontFamily: 'Lora',
                     // fontFamily: "Roboto",
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Container(
                      width: 370,
                      height: 390,
                      //double width = MediaQuery.of(context).size*0.5,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 2.0),
                          borderRadius: BorderRadius.circular(35.0),
                          image: DecorationImage(
                            image: AssetImage("photo/kid9.jpg"),
                            fit: BoxFit.cover,
                          )),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 175),
              child: Column(
                children: [
                  Text('Robotics Camp',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                         fontFamily: 'Lora',
                      //  fontFamily: 'Roboto',
                        color: Colors.black,
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, right: 10, left: 30),
              child: Column(
                children: [
                  Text(
                    'Experience an exciting week of robotics at our kids camp, engage in hands-on learning and build your\nown robots in just one week',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                       fontFamily: 'Lora',
                     // fontFamily: "Roboto",
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Container(
                      width: 370,
                      height: 390,
                      //double width = MediaQuery.of(context).size*0.5,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 2.0),
                          borderRadius: BorderRadius.circular(35.0),
                          image: DecorationImage(
                            image: AssetImage("photo/ckid.jpg"),
                            fit: BoxFit.cover,
                          )),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 105),
                  child: Text(
                    'Creative Coding Class',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                       fontFamily: 'Lora',
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, right: 10, left: 28),
              child: Column(
                children: [
                  Text(
                    'Explore the world of programming  and ignite your creativity through coding.',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                       fontFamily: 'Lora',
                      //fontFamily: "Roboto",
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Container(
                      width: 370,
                      height: 390,
                      //double width = MediaQuery.of(context).size*0.5,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 2.0),
                          borderRadius: BorderRadius.circular(35.0),
                          image: DecorationImage(
                            image: AssetImage("photo/vkid.jpg"),
                            fit: BoxFit.cover,
                          )),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 55),
                  child: Text(
                    'Virtual Reality Experience',
                    //                       textAlign: TextAlign.start,',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                       fontFamily: 'Lora',
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, right: 10, left: 26),
              child: Column(
                children: [
                  Text(
                    'Embark on an unforgettable virtual journey as kids are transported to captivating worlds through an immersive VR experience.',
                    style: TextStyle(
                      fontSize: 15,
                       fontFamily: 'Lora',
                      fontWeight: FontWeight.bold,
                      //fontFamily: "Roboto",
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Container(
                      width: 370,
                      height: 390,
                      //double width = MediaQuery.of(context).size*0.5,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 2.0),
                          borderRadius: BorderRadius.circular(35.0),
                          image: DecorationImage(
                            image: AssetImage("photo/kid10.jpg"),
                            fit: BoxFit.cover,
                          )),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 105),
                  child: Text(
                    'Robotics Competition',
                    style: TextStyle(
                      fontSize: 25,
                       fontFamily: 'Lora',
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, right: 10, left: 28),
              child: Column(
                children: [
                  Text(
                    'Calling all aspiring little scientists! Join our thrilling robotic competition and show case your innovative\nand creative technology',
                    style: TextStyle(
                      fontSize: 15,
                       fontFamily: 'Lora',
                      fontWeight: FontWeight.bold,
                      //fontFamily: "Roboto",
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Container(
                      width: 370,
                      height: 390,
                      //double width = MediaQuery.of(context).size*0.5,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 2.0),
                          borderRadius: BorderRadius.circular(35.0),
                          image: DecorationImage(
                            image: AssetImage("photo/kid7.jpg"),
                            fit: BoxFit.cover,
                          )),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 85),
                  child: Text(
                    'Game Design Workshop',
                    style: TextStyle(
                      fontSize: 25,
                       fontFamily: 'Lora',
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, right: 20, left: 5),
              child: Column(
                children: [
                  Text(
                    'Empower kids to design and build their own video\ngames in our workshop.Learn using industry\nstandards for continued game development.',
                    style: TextStyle(
                      fontSize: 15,
                       fontFamily: 'Lora',
                      fontWeight: FontWeight.bold,
                      //fontFamily: "Roboto",
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 70.0),
              child: Expanded(
                child: Column(children: [
                  Container(
                    width: 500,
                    height: 700,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage("photo/back.jpg"),
                      fit: BoxFit.cover,
                    )),
                    child: Column(
                      children: [
                        Row(children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 200.0, left: 100),
                            child: Column(
                              children: [
                                IconButton(
                                    onPressed: () {
                                       openTwitterHomePage();
                                    },
                                    icon: Icon(FlutterIcons.twitter_ant,
                                        size: 30, color: Colors.white)),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 200.0, left: 10),
                            child: Column(
                              children: [
                                IconButton(
                                    onPressed: () {
                                      openFacebookHomePage();
                                    },
                                    icon: Icon(
                                      FlutterIcons.facebook_with_circle_ent,
                                      size: 30,
                                      color: Colors.white,
                                    ))
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 200.0, left: 10),
                            child: Column(
                              children: [
                                IconButton(
                                    onPressed: () {
                                      openInstagramHomePage();
                                    },
                                    icon: Icon(
                                      FlutterIcons.instagram_ant,
                                      size: 30,
                                      color: Colors.white,
                                    ))
                              ],
                            ),
                          ),
                        ]),
                        Padding(
                          padding: const EdgeInsets.only(top: 30.0, right: 220),
                          child: Column(
                            children: [
                              Text(
                                'Get in Touch',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                     fontFamily: 'Lora',
                                    color: Colors.white),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0, right: 150),
                          child: Column(
                            children: [
                              Text(
                                'We\'d love to hear from you!',
                                style: TextStyle(
                                    color: Colors.white,
                                     fontFamily: 'Lora',
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0, right: 180),
                          child: Column(
                            children: [
                              Text(
                                'reach@3dkids.in',
                                style: TextStyle(
                                    color: Colors.white,
                                     fontFamily: 'Lora',
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        // Padding(
                        //   padding: const EdgeInsets.only(top: 80.0),
                        //   child: Column(
                        //     children: [
                        //       Padding(
                        //         padding: const EdgeInsets.all(20.0),
                        //         child: TextField(
                        //           style: TextStyle(
                        //             color: Colors.white,
                        //             // Set the desired text color
                        //           ),
                        //           cursorColor: Colors.white,
                        //           decoration: InputDecoration(
                        //             enabledBorder: OutlineInputBorder(
                        //               borderSide: BorderSide(
                        //                   width: 2,
                        //                   color: Colors.white), //<-- SEE HERE
                        //             ),
                        //             labelText: 'Name',
                        //             labelStyle: TextStyle(color: Colors.white),
                        //           ),
                        //         ),
                        //       )
                        //     ],
                        //   ),
                        // ),
                        // Padding(
                        //   padding: const EdgeInsets.only(top: 1.0),
                        //   child: Column(
                        //     children: [
                        //       Padding(
                        //         padding: const EdgeInsets.all(20.0),
                        //         child: TextField(
                        //           style: TextStyle(
                        //             color: Colors.white,
                        //             // Set the desired text color
                        //           ),
                        //           cursorColor: Colors.white,
                        //           decoration: InputDecoration(
                        //             enabledBorder: OutlineInputBorder(
                        //               borderSide: BorderSide(
                        //                   width: 2,
                        //                   color: Colors.white), //<-- SEE HERE
                        //             ),
                        //             labelText: 'Email',
                        //             labelStyle: TextStyle(color: Colors.white),
                        //           ),
                        //         ),
                        //       )
                        //     ],
                        //   ),
                        // ),
                        // Padding(
                        //   padding: const EdgeInsets.only(top: 1.0),
                        //   child: Column(
                        //     children: [
                        //       Padding(
                        //         padding: const EdgeInsets.all(20.0),
                        //         child: TextField(
                        //           style: TextStyle(
                        //             color: Colors.white,
                        //             // Set the desired text color
                        //           ),
                        //           cursorColor: Colors.white,
                        //           decoration: InputDecoration(
                        //             enabledBorder: OutlineInputBorder(
                        //               borderSide: BorderSide(
                        //                   width: 2,
                        //                   color: Colors.white), //<-- SEE HERE
                        //             ),
                        //             labelText: 'Message',
                        //             labelStyle: TextStyle(color: Colors.white),
                        //           ),
                        //         ),
                        //       )
                        //     ],
                        //   ),
                        // ),
                        // Column(
                        //   children: [
                        //     ElevatedButton(
                        //       onPressed: () {},
                        //       style: ElevatedButton.styleFrom(
                        //         primary: Colors.black, // Background color
                        //       ),
                        //       child: Text('REACH US'),
                        //     )
                        //   ],
                        // )
                      ],
                    ),
                  ),
                ]),
              ),
            ),
          ]),
          desktop: Column(children: [
            Row(children: [
              Container(
                    child: SizedBox(
                      child: DefaultTextStyle(
                          style: TextStyle(
                            fontSize: 50,
                            fontFamily: 'Lora',
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontStyle: FontStyle.normal,
                            letterSpacing: 1.5,
                            wordSpacing: 2.0,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top:25.0,left:50),
                            child: AnimatedTextKit(
                              animatedTexts: [
                                TypewriterAnimatedText(
                                    'Empowering Kids With Creativity And Innovation'),
                              ],
                              isRepeatingAnimation: false,
                            ),
                          )),
                    ),
                  )
            ],),
            // Row(
            //   children: [
            //     Container(
            //         child: Stack(
            //       children: [
            //         Opacity(
            //           opacity: 0.5,
            //           child: ClipPath(
            //             clipper: WaveClipper(),
            //             child: Container(
            //               color: Colors.blue,
            //               height: 280,
            //               width: 1355,
            //             ),
            //           ),
            //         ),
            //         ClipPath(
            //           clipper: WaveClipper(),
            //           child: Container(
            //               padding: EdgeInsets.only(bottom: 50),
            //               // color: Colors.blueGrey,
            //               decoration: BoxDecoration(
            //                   image: DecorationImage(
            //                 image: AssetImage("photo/kid11.jpg"),
            //                 fit: BoxFit.cover,
            //               )),
            //               height: 250,
            //               width: 1355,
            //               //alignment: Alignment.center,
            //               child: Padding(
            //                 padding: const EdgeInsets.only(
            //                     left: 7.0, right: 15, top: 7),
            //                 child: Column(
            //                   children: [
            //                     Padding(
            //                       padding: const EdgeInsets.only(top: 20.0),
            //                       child: Container(
            //                         width: 700,
            //                         child: SizedBox(
            //                           width: 350.0,
            //                           child: DefaultTextStyle(
            //                             style: const TextStyle(
            //                               fontSize: 40.0,
            //                               fontFamily: 'Bobbers',
            //                               fontWeight: FontWeight.bold,
            //                               color: Colors.white,
            //                               fontStyle: FontStyle.italic,
            //                               letterSpacing: 1.5,
            //                               wordSpacing: 2.0,
            //                             ),
            //                             child: AnimatedTextKit(
            //                               animatedTexts: [
            //                                 TypewriterAnimatedText(
            //                                     'EMPOWERING KIDS WITH CREATIVITY AND INNOVATION'),
            //                               ],
            //                               isRepeatingAnimation: false,
            //                             ),
            //                           ),
            //                         ),
            //                       ),
            //                     ),
            //                   ],
            //                 ),
            //               )),
            //         )
            //       ],
            //     )),
            //   ],
            // ),
            Padding(
              padding: const EdgeInsets.only(top: 90.0, left: 70),
              child: Row(
                children: [
                  Text('Our Activities',
                      style: TextStyle(
                        fontSize: 37,
                        fontWeight: FontWeight.bold,
                         fontFamily: 'Lora',
                        shadows: [
                          Shadow(
                            offset: Offset(2, 2),
                            blurRadius:
                                3, // Specify the blur radius of the shadow
                            color: Colors.black.withOpacity(
                                0.5), // Specify the color and opacity of the shadow
                          ),
                        ],
                      ))
                ],
              ),
            ),
            Column(children: [
              Row(children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 70, top: 30),
                      child: Container(
                        // color: Colors.red,
                        width: 600,
                        height: 550,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 2.0),
                            borderRadius: BorderRadius.circular(35.0),
                            image: DecorationImage(
                              image: AssetImage("photo/kid2.jpg"),
                              fit: BoxFit.cover,
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 280.0, top: 10),
                      child: Row(
                        children: [
                          Text(
                            '3D Printing Workshop',
                            style: TextStyle(
                              fontSize: 25,
                               fontFamily: 'Lora',
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              shadows: [
                                Shadow(
                                  offset: Offset(2, 2),
                                  blurRadius:
                                      3, // Specify the blur radius of the shadow
                                  color: Colors.black.withOpacity(
                                      0.5), // Specify the color and opacity of the shadow
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, right: 5),
                      child: Row(
                        children: [
                          Text(
                            '    Explore the realm of 3D printing and uncover the secrets of ideas into real world\n    objects through hands-on learning and innovative design.',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                               fontFamily: 'Lora',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 100, top: 180),
                      child: Container(
                        // color: Colors.red,
                        width: 530,
                        height: 500,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 2.0),
                            borderRadius: BorderRadius.circular(35.0),
                            image: DecorationImage(
                              image: AssetImage("photo/kid9.jpg"),
                              fit: BoxFit.cover,
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 13.0, left: 110),
                      child: Text(
                        'Robotics Camp',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 25,
                           fontFamily: 'Lora',
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          shadows: [
                            Shadow(
                              offset: Offset(2, 2),
                              blurRadius:
                                  3, // Specify the blur radius of the shadow
                              color: Colors.black.withOpacity(
                                  0.5), // Specify the color and opacity of the shadow
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 110.0, top: 8),
                      child: Text(
                        'Experience an exciting week of robotics at our kids camp, engage in\nhands-on learning and build your own robots in just one week',
                        style: TextStyle(
                            fontSize: 15,  fontFamily: 'Lora',fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                )
              ]),
              Column(children: [
                Row(children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 70),
                        child: Container(
                          // color: Colors.red,
                          width: 600,
                          height: 550,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.white, width: 2.0),
                              borderRadius: BorderRadius.circular(35.0),
                              image: DecorationImage(
                                image: AssetImage("photo/kid10.jpg"),
                                fit: BoxFit.cover,
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 270.0, top: 10),
                        child: Row(
                          children: [
                            Text(
                              'Robotics Competition',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                 fontFamily: 'Lora',
                                color: Colors.black,
                                shadows: [
                                  Shadow(
                                    offset: Offset(2, 2),
                                    blurRadius:
                                        3, // Specify the blur radius of the shadow
                                    color: Colors.black.withOpacity(
                                        0.5), // Specify the color and opacity of the shadow
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                    ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, right: 50),
                        child: Row(
                          children: [
                            Text(
                              '        Calling all aspiring little scientists! Join our thrilling robotic competition\n        and show case your innovative & creative technology',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400, fontFamily: 'Lora',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 100, top: 180),
                        child: Container(
                          // color: Colors.red,
                          width: 530,
                          height: 500,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.white, width: 2.0),
                              borderRadius: BorderRadius.circular(35.0),
                              image: DecorationImage(
                                image: AssetImage("photo/kid7.jpg"),
                                fit: BoxFit.cover,
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 13.0, left: 110),
                        child: Text(
                          'Game Design Workshop',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                             fontFamily: 'Lora',
                            color: Colors.black,
                            shadows: [
                              Shadow(
                                offset: Offset(2, 2),
                                blurRadius:
                                    3, // Specify the blur radius of the shadow
                                color: Colors.black.withOpacity(
                                    0.5), // Specify the color and opacity of the shadow
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 110.0, top: 8),
                        child: Text(
                          'Empower kids to design and build their own video games in our workshop.\nLearn using industry standards for continued game development.',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w400, fontFamily: 'Lora',),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ],
                  )
                ]),
                Column(children: [
                  Row(children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0, left: 70),
                          child: Container(
                            // color: Colors.red,
                            width: 600,
                            height: 550,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.white, width: 2.0),
                                borderRadius: BorderRadius.circular(35.0),
                                image: DecorationImage(
                                  image: AssetImage("photo/ckid.jpg"),
                                  fit: BoxFit.cover,
                                )),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0, right: 280),
                          child: Text(
                            'Creative Coding Class',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                               fontFamily: 'Lora',
                              color: Colors.black,
                              shadows: [
                                Shadow(
                                  offset: Offset(2, 2),
                                  blurRadius:
                                      3, // Specify the blur radius of the shadow
                                  color: Colors.black.withOpacity(
                                      0.5), // Specify the color and opacity of the shadow
                                ),
                              ],
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, right: 20),
                          child: Row(
                            children: [
                              Text(
                                '     Explore the world of programming  and ignite your creativity through coding.',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                   fontFamily: 'Lora',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 100, top: 180),
                          child: Container(
                            // color: Colors.red,
                            width: 550,
                            height: 550,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.white, width: 2.0),
                                borderRadius: BorderRadius.circular(35.0),
                                image: DecorationImage(
                                  image: AssetImage("photo/vkid.jpg"),
                                  fit: BoxFit.cover,
                                )),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0, left: 110),
                          child: Text(
                            'Virtual Reality Experience',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                               fontFamily: 'Lora',
                              color: Colors.black,
                              shadows: [
                                Shadow(
                                  offset: Offset(2, 2),
                                  blurRadius:
                                      3, // Specify the blur radius of the shadow
                                  color: Colors.black.withOpacity(
                                      0.5), // Specify the color and opacity of the shadow
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 110.0, top: 8),
                          child: Text(
                            'Embark on an unforgettable virtual journey as kids are transported to\ncaptivating worlds through an immersive VR experience.',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w400, fontFamily: 'Lora',),
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ],
                    )
                  ]),
                  Padding(
                    padding: const EdgeInsets.only(top: 25.0),
                    child: Column(
                      children: [
                        Container(
                          //color: Colors.purple,
                          width: 1365,
                          height: 900,

                          decoration: BoxDecoration(
                              image: DecorationImage(
                            image: AssetImage("photo/back.jpg"),
                            fit: BoxFit.cover,
                          )),
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 400, left: 600),
                                child: Row(
                                  children: [
                                    Text(
                                      'We\'d love to hear from you!',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                           fontFamily: 'Lora',
                                          fontWeight: FontWeight.w400),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 50, left: 600),
                                child: Row(
                                  children: [
                                    Expanded(
                                        child: Text(
                                      'reach@3dkids.in',
                                      style: TextStyle(
                                          color: Colors.white,
                                           fontFamily: 'Lora',
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ))
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 20, left: 590),
                                child: Row(
                                  children: [
                                    Column(
                                      children: [
                                        IconButton(
                                            onPressed: () {
                                              openTwitterHomePage();
                                              
                                            },
                                            icon: Icon(FlutterIcons.twitter_ant,
                                                size: 20, color: Colors.white))
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 5, left: 28),
                                      child: Column(
                                        children: [
                                          IconButton(
                                              onPressed: () {
                                                openFacebookHomePage();
                                              },
                                              icon: Icon(
                                                FlutterIcons.facebook_ent,
                                                size: 20,
                                                color: Colors.white,
                                              ))
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 5, left: 30),
                                      child: Column(
                                        children: [
                                          IconButton(
                                              onPressed: () {
                                                 openInstagramHomePage();
                                              },
                                              icon: const Icon(
                                                FlutterIcons.instagram_ant,
                                                size: 20,
                                                color: Colors.white,
                                              ))
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              // Row(
                              //   children: [
                              //     Expanded(
                              //       child: Padding(
                              //         padding: const EdgeInsets.only(
                              //             top: 80, left: 60.0, right: 900),
                              //         child: TextField(
                              //           style: TextStyle(
                              //             color: Colors.white,
                              //             // Set the desired text color
                              //           ),
                              //           cursorColor: Colors.white,
                              //           decoration: InputDecoration(
                              //             enabledBorder: OutlineInputBorder(
                              //               borderSide: BorderSide(
                              //                   width: 2,
                              //                   color: Colors
                              //                       .white), //<-- SEE HERE
                              //             ),
                              //             labelText: 'Name',
                              //             labelStyle:
                              //                 TextStyle(color: Colors.white),
                              //           ),
                              //         ),
                              //       ),
                              //     )
                              //   ],
                              // ),
                              // Row(
                              //   children: [
                              //     Expanded(
                              //       child: Padding(
                              //         padding: const EdgeInsets.only(
                              //             top: 40, left: 60.0, right: 900),
                              //         child: TextField(
                              //           style: TextStyle(
                              //             color: Colors.white,
                              //             // Set the desired text color
                              //           ),
                              //           cursorColor: Colors.white,
                              //           decoration: InputDecoration(
                              //             enabledBorder: OutlineInputBorder(
                              //               borderSide: BorderSide(
                              //                   width: 2,
                              //                   color: Colors
                              //                       .white), //<-- SEE HERE
                              //             ),
                              //             labelText: 'Email',
                              //             labelStyle:
                              //                 TextStyle(color: Colors.white),
                              //           ),
                              //         ),
                              //       ),
                              //     )
                              //   ],
                              // ),
                              // Row(
                              //   children: [
                              //     Expanded(
                              //       child: Padding(
                              //         padding: const EdgeInsets.only(
                              //             top: 40, left: 60.0, right: 900),
                              //         child: TextField(
                              //           style: TextStyle(
                              //             color: Colors.white,
                              //             // Set the desired text color
                              //           ),
                              //           cursorColor: Colors.white,
                              //           decoration: InputDecoration(
                              //             enabledBorder: OutlineInputBorder(
                              //               borderSide: BorderSide(
                              //                   width: 2,
                              //                   color: Colors
                              //                       .white), //<-- SEE HERE
                              //             ),
                              //             labelText: 'Message',
                              //             labelStyle:
                              //                 TextStyle(color: Colors.white),
                              //           ),
                              //         ),
                              //       ),
                              //     )
                              //   ],
                              // ),
                              // Padding(
                              //   padding:
                              //       const EdgeInsets.only(left: 150.0, top: 50),
                              //   child: Row(
                              //     children: [
                              //       ElevatedButton(
                              //         onPressed: () {},
                              //         style: ElevatedButton.styleFrom(
                              //           primary:
                              //               Colors.black, // Background color
                              //         ),
                              //         child: Text('REACH US'),
                              //       )
                              //     ],
                              //   ),
                              // )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ]),
              ]),
            ]),
          ]),
        ),
      ),
    );
  }
}

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    //backgroundColor: Color.fromARGB(255, 30, 180, 255),shade
  //  backgroundColor: Colors.blueGrey[100],
  //  shadowColor: Colors.blueGrey.shade100,
  //backgroundColor: Color(0xFFFAFAFA),
  backgroundColor: Color(0xFFCFD8DC),


   //backgroundColor: Color( 0xFFCFD8DC),
  shadowColor: Colors.blueGrey.shade800,
    leadingWidth: double.maxFinite,
    flexibleSpace: LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth < 600) {
          // Mobile view
          return Padding(
            padding: const EdgeInsets.only(top: 45.0, left: 10),
            child: Row(
              children: [
                // IconButton(
                //   onPressed: () {
                //     // Handle icon button press
                //   },
                //   icon: Icon(Icons.menu,color: Colors.black,),
                // ),
                Text(
                  '3d kids',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                     fontFamily: 'Lora',
                    color: Colors.black,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5, left: 30),
                  child: Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          // Handle icon button press
                        },
                        icon: Icon(
                          Icons.home,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5, left: 5),
                  child: Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          // Handle icon button press
                        },
                        icon: Icon(
                          Icons.info_sharp,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5, left: 5),
                  child: Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          // Handle icon button press
                        },
                        icon: Icon(
                          Icons.school,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5, left: 5),
                  child: Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          // Handle icon button press
                        },
                        icon: Icon(
                          Icons.gamepad,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5, left: 5),
                  child: Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          // Handle icon button press
                        },
                        icon: Icon(
                          Icons.login,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5, left: 5),
                  child: Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          // Handle icon button press
                        },
                        icon: Icon(
                          Icons.person,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                )
                // Other mobile-specific actions
              ],
            ),
          );
        } else {
          // Desktop view
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                TextButton(
                  onPressed: () {
                    // Handle text button press
                  },
                  child: Text(
                    '3D Kids',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                       fontFamily: 'Lora',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 700.0),
                  child: TextButton(
                    onPressed: () {
                      // Handle text button press
                    },
                    child: Text(
                      'Home',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                         fontFamily: 'Lora',
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: TextButton(
                    onPressed: () {
                      // Handle text button press
                    },
                    child: Text(
                      'About Us',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                         fontFamily: 'Lora',
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: TextButton(
                    onPressed: () {
                      // Handle text button press
                    },
                    child: Text(
                      'Skills',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                         fontFamily: 'Lora',
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: TextButton(
                    onPressed: () {
                      // Handle text button press
                    },
                    child: Text(
                      'Games',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                         fontFamily: 'Lora',
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: TextButton(
                    onPressed: () {
                      // Handle text button press
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                         fontFamily: 'Lora',
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: TextButton(
                    onPressed: () {
                      // Handle text button press
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                         fontFamily: 'Lora',
                      ),
                    ),
                  ),
                ),
                // Other desktop-specific actions
              ],
            ),
          );
        }
      },
    ),
    //backgroundColor: Colors.orangeAccent,
    toolbarHeight: 60,
    // Other app bar properties
  );
}

class WaveClipper extends CustomClipper<Path> {
//   @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0, size.height);
    var firstStart = Offset(size.width / 5, size.height);
    //fist point of quadratic bezier curve
    var firstEnd = Offset(size.width / 2.25, size.height - 50.0);
    //second point of quadratic bezier curve
    path.quadraticBezierTo(
        firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);

    var secondStart =
        Offset(size.width - (size.width / 3.24), size.height - 105);
    //third point of quadratic bezier curve
    var secondEnd = Offset(size.width, size.height - 10);
    //fourth point of quadratic bezier curve
    path.quadraticBezierTo(
        secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);

    path.lineTo(
        size.width, 0); //end with this path if you are making wave at bottom
    path.close();
    return path;
    // TODO: implement getClip
    throw UnimplementedError();
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }
}
