import 'package:flutter/material.dart';

class TaskWidget extends StatelessWidget {
  const TaskWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'МДК 03.02 Безопасность функционирования информационных систем',
              style: Theme.of(context).textTheme.headline1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Text(
                'Доделать 16 практику, прочитать лекцию и выполнить тест',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            Container(
              height: 26,
              width: 96,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(4),
              ),
              child: const Align(
                alignment: Alignment.center,
                child: Text(
                  'Письменно',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      fontSize: 14),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
