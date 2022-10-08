import 'package:flutter/material.dart';
import 'package:flutter_application_2/src/widgets/appbar_widget.dart';
import 'package:flutter_application_2/src/widgets/dropdown_widget.dart';
import 'package:flutter_application_2/src/widgets/textfield_widget.dart';

class AddTaskPage extends StatefulWidget {
  const AddTaskPage({super.key});

  @override
  State<AddTaskPage> createState() => _AddTaskPageState();
}

class _AddTaskPageState extends State<AddTaskPage> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Scaffold(
        appBar: AppBarDegree(
          'Добавление задание',
          context: context,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            ),
            splashRadius: 0.1,
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: Container(
          color: Colors.white,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 4),
                  child: Text('Предмет',
                      style: Theme.of(context).textTheme.headline1),
                ),
                const DropDown(),
                const SizedBox(
                  height: 14,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 2),
                  child: Text('Время сдачи',
                      style: Theme.of(context).textTheme.headline1),
                ),
                const DeleviryTime(),
                const SizedBox(
                  height: 14,
                ),
                const TextFieldDegree(
                  textFieldText: 'Задание',
                  obscureText: false,
                  maxlines: 5,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 2),
                  child: Text('Теги',
                      style: Theme.of(context).textTheme.headline1),
                ),
                Container(
                  height: 44,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFAFAFA),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: const Color(0xFFF4F4F4),
                    ),
                  ),
                  child: Row(
                    children: const [
                      Tag(),
                      Tag(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Tag extends StatelessWidget {
  const Tag({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Container(
            height: 24,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: Colors.black,
            ),
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Row(
                children: const [
                  Icon(
                    Icons.close,
                    color: Colors.white,
                    size: 14,
                  ),
                  Baseline(
                    baseline: 10,
                    baselineType: TextBaseline.alphabetic,
                    child: Text(
                      'письменно',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Roboto',
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

class DeleviryTime extends StatelessWidget {
  const DeleviryTime({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFFAFAFA),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(8),
              ),
              height: 28,
              child: const Align(
                alignment: Alignment.center,
                child: Text(
                  'Следуйщий урок',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Gilroy',
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
          const Expanded(
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'По дате',
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Gilroy',
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
