import 'package:flutter/material.dart';

class TimeTable extends StatelessWidget {
  final String subj;
  final String teach;
  final String classRoom;

  const TimeTable({
    Key? key,
    required this.subj,
    required this.teach,
    required this.classRoom,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '1' '\n' '-' '\n' '2',
              style: Theme.of(context).textTheme.bodyText2,
              textAlign: TextAlign.center,
            ),
            Flexible(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 9),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        subj,
                        style: Theme.of(context).textTheme.headline1,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 4),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          teach,
                          style: const TextStyle(
                            fontFamily: 'Gilroy',
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF808080),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Text(classRoom, style: Theme.of(context).textTheme.subtitle1),
          ],
        ),
        const Divider(
          height: 0,
          thickness: 1,
          color: Color(0xFFF6F6F6),
        ),
      ],
    );
  }
}
