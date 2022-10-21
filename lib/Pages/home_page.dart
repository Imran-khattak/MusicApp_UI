import 'package:flutter/material.dart';
import 'package:musicapp_ui/wedgets/musiclist.dart';
import 'package:musicapp_ui/wedgets/playlist.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static String id = 'home_page';
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Container(
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
              child: Padding(
            padding: const EdgeInsets.only(
              top: 20,
              left: 22,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: const Icon(
                          Icons.sort_rounded,
                          color: Color(0xff899CCF),
                          size: 30,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: const Icon(
                          Icons.more_vert,
                          color: Color(0xff899CCF),
                          size: 30,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Text(
                    'Hello Imran',
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white.withOpacity(0.9)),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Text(
                      'What you want to hear imran?',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white.withOpacity(0.6),
                      ),
                    )),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 15, right: 20, bottom: 20),
                  child: Container(
                      height: 50,
                      width: 380,
                      decoration: BoxDecoration(
                        color: const Color(0xff31314F),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 15),
                            height: 50,
                            width: 200,
                            child: TextFormField(
                              decoration: InputDecoration(
                                  hintText: 'Search music',
                                  hintStyle: TextStyle(
                                      color: Colors.white.withOpacity(0.5)),
                                  border: InputBorder.none),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Icon(
                              Icons.search,
                              color: Colors.white.withOpacity(0.5),
                              size: 30,
                            ),
                          )
                        ],
                      )),
                ),
                const TabBar(
                  isScrollable: true,
                  labelStyle: TextStyle(
                    fontSize: 18,
                  ),
                  indicator: BoxDecoration(
                      border: Border(
                    bottom: BorderSide(
                      width: 3,
                      color: Color(0xff899CCF),
                    ),
                  )),
                  tabs: [
                    Tab(text: 'Musics'),
                    Tab(
                      text: 'Playlist',
                    ),
                    Tab(
                      text: 'Favourite',
                    ),
                    Tab(
                      text: 'Trending',
                    ),
                    Tab(
                      text: 'Collections',
                    ),
                    Tab(
                      text: 'New',
                    ),
                  ],
                ),
                const Flexible(
                    flex: 1,
                    child: TabBarView(children: [
                      Musiclist(),
                      Playlist(),
                      Musiclist(),
                      Musiclist(),
                      Musiclist(),
                      Musiclist(),
                    ]))
              ],
            ),
          )),
        ),
      ),
    );
  }
}
