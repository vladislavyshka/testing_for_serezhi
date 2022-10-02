import 'package:flutter/material.dart';
import 'package:flutter_application_2/src/widgets/appbar_widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: AppBarDegree(
        'Профиль',
        context: context,
      ),
      body: Column(
        children: [
          Container(
            color: Colors.white,
            width: double.infinity,
            height: 170,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/image/1.jpg'),
                ),
                Text(
                  'Владислав',
                  style: TextStyle(
                    fontFamily: 'Gilroy',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Column(
              children: [
                ColoredBox(
                  color: Colors.white,
                  child: Column(
                    children: const [
                      LoginPasswordwidgets(
                        loginPasswordText: 'Логин',
                        loginPasswordTextTwo: 'Vladislavyshka',
                        dividerDegree: Divider(
                          height: 0,
                          thickness: 1,
                          color: Color(0xFFF4F4F4),
                        ),
                      ),
                      LoginPasswordwidgets(
                        loginPasswordText: 'Пароль',
                        loginPasswordTextTwo: 'сбросить',
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                ColoredBox(
                  color: Colors.white,
                  child: Column(
                    children: const [
                      LoginPasswordwidgets(
                        loginPasswordText: 'Группа',
                        loginPasswordTextTwo: 'КС-31',
                        dividerDegree: Divider(
                          height: 0,
                          thickness: 1,
                          color: Color(0xFFF4F4F4),
                        ),
                      ),
                      LoginPasswordwidgets(
                        loginPasswordText: 'Подгруппа',
                        loginPasswordTextTwo: '1',
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                ColoredBox(
                  color: Colors.white,
                  child: Column(
                    children: const [
                      LoginPasswordwidgets(
                        loginPasswordText: 'Настройки',
                        loginPasswordTextTwo: '',
                        dividerDegree: Divider(
                          height: 0,
                          thickness: 1,
                          color: Color(0xFFF4F4F4),
                        ),
                      ),
                      LoginPasswordwidgets(
                        loginPasswordText: 'Выход',
                        loginPasswordTextTwo: '',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class LoginPasswordwidgets extends StatelessWidget {
  final String loginPasswordText;
  final String loginPasswordTextTwo;
  final Widget? dividerDegree;
  const LoginPasswordwidgets({
    Key? key,
    required this.loginPasswordText,
    required this.loginPasswordTextTwo,
    this.dividerDegree,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    loginPasswordText,
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  Text(
                    loginPasswordTextTwo,
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: dividerDegree,
        ),
      ],
    );
  }
}
