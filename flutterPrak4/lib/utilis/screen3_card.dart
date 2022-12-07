import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Sc3_card extends StatelessWidget {
  const Sc3_card({
    Key? key,
    this.title,
    this.subtitle,
  }) : super(key: key);

  final String? title;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.network('https://random.imagecdn.app/500/300'),
            ),
            const SizedBox(
              height: 10,
            ),
            AutoSizeText(
              maxLines: 1,
              title ?? 'bla bla',
              style: GoogleFonts.lato(
                  fontWeight: FontWeight.w800, color: Colors.black),
            ),
            const SizedBox(
              height: 0,
            ),
            AutoSizeText(
              maxLines: 1,
              subtitle ?? 'bla bla',
              style: GoogleFonts.lato(
                  fontWeight: FontWeight.w500, color: Colors.black),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.favorite_border),
                ),
                Expanded(
                  child: AutoSizeText(
                    overflow: TextOverflow.ellipsis,
                    '9 Liked',
                    minFontSize: 5,
                    style: GoogleFonts.lato(
                        fontWeight: FontWeight.w400, color: Colors.blueGrey),
                  ),
                ),
                Expanded(flex: 2, child: Container()),
                Row(
                  children: [
                    AutoSizeText(
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      'Start',
                      style: GoogleFonts.lato(
                          fontWeight: FontWeight.w400, color: Colors.blueGrey),
                    ),
                    IconButton(onPressed: () {}, icon: Icon(Icons.arrow_right))
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
