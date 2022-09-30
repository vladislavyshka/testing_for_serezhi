import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Logo extends StatelessWidget {
  final TypeLogo type;
  const Logo({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    if (type == TypeLogo.vertical) {
      return Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 27),
            child: SvgPicture.asset(
              'assets/image/degree.svg',
              semanticsLabel: 'SVG from asset folder',
            ),
          ),
          Text(
            'Студент',
            style: Theme.of(context).textTheme.headline4,
          )
        ],
      );
    } else {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/image/degree.svg',
                semanticsLabel: 'SVG from asset folder',
                width: 63,
                height: 63,
              ),
              const SizedBox(
                width: 16,
              ),
              Text(
                'Студент',
                style: Theme.of(context).textTheme.headline4,
              )
            ],
          ),
        ],
      );
    }
  }
}

enum TypeLogo {
  horizontal,
  vertical,
}
