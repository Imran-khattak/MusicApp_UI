import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlaylistPage extends StatelessWidget {
  const PlaylistPage({Key? key}) : super(key: key);
  static String id = 'playlist_page';
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            const Color(0xff303151).withOpacity(0.6),
            const Color(0xff303151).withOpacity(0.9),
          ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        CupertinoIcons.back,
                        color: Color(0xff899CCF),
                        size: 30,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Icon(
                        Icons.more_vert,
                        size: 30,
                        color: Color(0xff899CCF),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'images/profile.jpg',
                  height: 250,
                  width: 260,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  const Text(
                    'Dil Diyan Gallan',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Atif Aslam',
                    style: TextStyle(
                        fontSize: 20, color: Colors.white.withOpacity(0.6)),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 50,
                    width: 170,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'PlayAll',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff30314D)),
                        ),
                        Icon(
                          Icons.play_arrow_rounded,
                          color: Color(0xff30314D),
                          size: 40,
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 50,
                    width: 170,
                    decoration: BoxDecoration(
                      color: const Color(0xff30314D),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Shuffle',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.shuffle,
                          color: Colors.white,
                          size: 25,
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
              const SizedBox(
                height: 20,
              ),
              for (int i = 1; i <= 20; i++)
                Container(
                  margin: const EdgeInsets.only(top: 15, right: 15, left: 15),
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  decoration: BoxDecoration(
                    color: const Color(0xff30314D),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Text(
                        i.toString(),
                        style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'imagine Dragons -Beleivers',
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                            Row(
                              children: [
                                Text(
                                  'Bass',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white.withOpacity(0.8)),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '-',
                                  style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.white.withOpacity(0.6)),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '04:33',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white.withOpacity(0.6)),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      const Spacer(),
                      Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const Icon(
                            Icons.play_arrow,
                            size: 25,
                            color: Color(0xff31314F),
                          ))
                    ],
                  ),
                ),
            ],
          ),
        )),
      ),
    );
  }
}
