import 'package:flutter/material.dart';

class NotComplitedTask extends StatelessWidget {
  final bool? divider;
  const NotComplitedTask({
    Key? key,
    this.divider,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        'МДК 03.02 Безопасность функционирования информационных систем',
                        style: Theme.of(context).textTheme.headline1),
                    const SizedBox(
                      height: 4,
                    ),
                    const Text(
                      'Доделать 16 практику, прочитать лекцию и выполнить тест',
                      style: TextStyle(
                        color: Color(0xFF808080),
                        fontFamily: 'Gilroy',
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                'Сегодня',
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ],
          ),
        ),
        divider == false
            ? const Divider(
                height: 0,
                color: Colors.transparent,
              )
            : const Divider(
                height: 0,
                thickness: 1,
                color: Color(0xFFF6F6F6),
              ),
      ],
    );
  }
}
