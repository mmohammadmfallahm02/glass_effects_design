import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1C1760),
      body: Stack(
        children: [
          Positioned(
              top: 130,
              left: 220,
              child: Container(
                width: 300,
                height: 300,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(colors: [
                      Color(0xff744ff9),
                      Color(0xff8369de),
                      Color(0xff8da0cb)
                    ])),
              )),
          Positioned(
              bottom: 250,
              right: 150,
              child: Transform.rotate(
                angle: 8,
                child: Container(
                  width: 180,
                  height: 180,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(colors: [
                        Color(0xff744ff9),
                        Color(0xff8369de),
                        Color(0xff8da0cb)
                      ])),
                ),
              )),
          Center(
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(25)),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
                child: Container(
                  width: 450,
                  height: 250,
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.1),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(25))),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(25, 10, 25, 30),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  margin: const EdgeInsets.only(top: 40),
                                  child: Image.asset(
                                    'assets/h.png',
                                    width: 70,
                                    height: 70,
                                  )),
                              SvgPicture.asset(
                                'assets/visa.svg',
                                color: Colors.white,
                                width: 60,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Expanded(
                            child: Text(
                              '6216 6102 0001 6587 010',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w100,
                                  wordSpacing: 3),
                            ),
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '02/12',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                              Text(
                                'GZX',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              )
                            ],
                          )
                        ]),
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
