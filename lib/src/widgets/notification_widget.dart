import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.white,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 0, 0),
                child: SvgPicture.asset(
                  'assets/image/Notification-Bages.svg',
                ),
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(13, 16, 5, 16),
                  child: Text(
                    'Произошла замена на следующий день, вместо Математика будет Обществознание. Не забудь сделать задание !',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 16, 16, 0),
                child: Text(
                  '12.01',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              )
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Divider(
            height: 0,
            thickness: 1,
            color: Color(0xFFF6F6F6),
          ),
        ),
      ],
    );
  }
}
