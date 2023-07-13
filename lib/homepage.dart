import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:kids_application/game.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'responsive.dart';
import 'screen.dart';

class MyState extends StatelessWidget {
  const MyState({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      
    
      body: Responsive(
          mobile: Column(
            children: [
              Expanded(
                child: MyScreen(),
              ),
            ],
          ),
          desktop: Row(
            children: [
              Expanded(
                flex: 5,
                child: Padding(
                  padding: const EdgeInsets.only(right: 10.0, bottom: 20.0),
                  child:MyScreen(),
                ),
              ),
            ],
          ),
        ),
        
        
      );
    
  }
}

// 




//  Row(
//               children: [
//                 Container(
//                     child: Stack(
//                   children: [
//                     Opacity(
//                       opacity: 0.5,
//                       child: ClipPath(
//                         clipper: WaveClipper(),
//                         child: Container(
//                           color: Colors.blue,
//                           height: 280,
//                           width: 1355,
//                         ),
//                       ),
//                     ),
//                     ClipPath(
//                       clipper: WaveClipper(),
//                       child: Container(
//                           padding: EdgeInsets.only(bottom: 50),
//                           // color: Colors.blueGrey,
//                           decoration: BoxDecoration(
//                               image: DecorationImage(
//                             image: AssetImage("photo/kid11.jpg"),
//                             fit: BoxFit.cover,
//                           )),
//                           height: 250,
//                           width: 1355,
//                           //alignment: Alignment.center,
//                           child: Padding(
//                             padding: const EdgeInsets.only(
//                                 left: 7.0, right: 15, top: 7),
//                             child: Column(
//                               children: [
//                                 Padding(
//                                   padding: const EdgeInsets.only(top: 20.0),
//                                   child: Container(
//                                     width: 700,
//                                     child: SizedBox(
//                                       width: 350.0,
//                                       child: DefaultTextStyle(
//                                         style: const TextStyle(
//                                           fontSize: 40.0,
//                                           fontFamily: 'Bobbers',
//                                           fontWeight: FontWeight.bold,
//                                           color: Colors.white,
//                                           fontStyle: FontStyle.italic,
//                                           letterSpacing: 1.5,
//                                           wordSpacing: 2.0,
//                                         ),
//                                         child: AnimatedTextKit(
//                                           animatedTexts: [
//                                             TypewriterAnimatedText(
//                                                 'EMPOWERING KIDS WITH CREATIVITY AND INNOVATION'),
//                                           ],
//                                           isRepeatingAnimation: false,
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           )),
//                     )
//                   ],
//                 )),
//               ],
//             ),
           