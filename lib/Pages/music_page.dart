import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MusicPage extends StatelessWidget {
  const MusicPage({Key? key}) : super(key: key);
  static String id = 'music_page';
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage('images/profile.jpg'),
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Colors.black.withOpacity(0.3),
                  Colors.black.withOpacity(0.5),
                  const Color(0xff31314F).withOpacity(1),
                  const Color(0xff31314F).withOpacity(1)
                ])),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 45, horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(
                            CupertinoIcons.back,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                        InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: const Icon(
                              Icons.more_vert,
                              size: 30,
                              color: Colors.white,
                            ))
                      ],
                    ),
                  ),
                  const Spacer(),
                  Container(
                    height: MediaQuery.of(context).size.height / 2.5,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 40,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 23, horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Dil Diyan Gallan',
                                      style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Colors.white.withOpacity(0.9))),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Atif Aslam',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.white.withOpacity(0.8)),
                                  ),
                                ],
                              ),
                              const Icon(
                                Icons.favorite,
                                size: 35,
                                color: Colors.redAccent,
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Slider(
                              min: 0,
                              max: 100,
                              value: 40,
                              onChanged: (value) {},
                              activeColor: Colors.white,
                              inactiveColor: Colors.white54,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 25),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '02:16',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white.withOpacity(0.6)),
                                  ),
                                  Text(
                                    '04:47',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white.withOpacity(0.6)),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Icon(
                              Icons.list,
                              size: 32,
                              color: Colors.white,
                            ),
                            const Icon(CupertinoIcons.backward_end_fill,
                                size: 30, color: Colors.white),
                            Container(
                                alignment: Alignment.center,
                                height: 55,
                                width: 55,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: const Icon(Icons.play_arrow,
                                    color: Color(0xff31314F), size: 45)),
                            const Icon(
                              CupertinoIcons.forward_end_fill,
                              size: 30,
                              color: Colors.white,
                            ),
                            const Icon(
                              Icons.download,
                              size: 30,
                              color: Colors.white,
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
