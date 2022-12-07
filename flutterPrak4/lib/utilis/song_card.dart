import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'reusable_card.dart';

class SongCard extends StatelessWidget {
  const SongCard({
    Key? key,
    this.title,
    this.comment,
    this.buttonColor,
  }) : super(key: key);

  final String? title;
  final String? comment;
  final Color? buttonColor;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: ReusableCard(
              onPress: () {},
              color: buttonColor ?? Colors.blue.shade600,
              child: const Icon(
                Icons.play_arrow_outlined,
                size: 30,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            flex: 4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title ?? 'Sweet memories',
                    style: GoogleFonts.lato(
                        fontSize: 18, fontWeight: FontWeight.w600)),
                Text(
                  comment ?? 'Бла бла, какая то дата',
                  style: GoogleFonts.lato(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey),
                ),
              ],
            ),
          ),
          Expanded(
              flex: 1,
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.more_horiz,
                    color: Colors.grey,
                  )))
        ],
      ),
    );
  }
}
