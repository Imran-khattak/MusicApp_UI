import 'package:flutter/material.dart';
import 'package:musicapp_ui/Pages/music_page.dart';

class Musiclist extends StatelessWidget {
  const Musiclist({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          for (int i = 1; i <= 20; i++)
            Container(
              margin: const EdgeInsets.only(top: 15, right: 12, left: 5),
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
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
                    onTap: () {
                      Navigator.pushNamed(context, MusicPage.id);
                    },
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
    );
  }
}
