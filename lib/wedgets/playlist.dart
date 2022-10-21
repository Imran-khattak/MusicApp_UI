import 'package:flutter/material.dart';
import 'package:musicapp_ui/Pages/playlist_page.dart';

class Playlist extends StatelessWidget {
  const Playlist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          for (int i = 1; i <= 20; i++)
            Container(
              margin: const EdgeInsets.only(top: 20, right: 20, left: 5),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: const Color(0xff31314D),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, PlaylistPage.id);
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'images/profile.jpg',
                        fit: BoxFit.cover,
                        height: 60,
                        width: 60,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      i % 2 == 0
                          ? const Text(
                              'Atif Aslam',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            )
                          : const Text(
                              'Arigit Singh',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                      const SizedBox(
                        height: 5,
                      ),
                      i % 2 == 0
                          ? Text(
                              '30 Songs',
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.6),
                                  fontSize: 16),
                            )
                          : Text(
                              '46 Songs',
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.6),
                                  fontSize: 16),
                            ),
                    ],
                  ),
                  const Spacer(),
                  Icon(
                    Icons.more_vert,
                    color: Colors.white.withOpacity(0.6),
                    size: 30,
                  )
                ],
              ),
            ),
        ],
      ),
    );
  }
}
