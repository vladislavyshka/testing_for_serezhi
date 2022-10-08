import 'package:flutter/material.dart';
import 'package:flutter_application_2/src/widgets/MenuButton_widget.dart';
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
                    children: [
                      const MenuButtonDegree(
                        title: 'Логин',
                        value: 'vladislavyshka',
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Divider(
                          height: 0,
                          thickness: 1,
                          color: Color(0xFFF4F4F4),
                        ),
                      ),
                      MenuButtonDegree(
                        title: 'Пароль',
                        value: 'Сбросить',
                        onTap: () {},
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
                      MenuButtonDegree(
                        title: 'Группа',
                        value: 'КС-31',
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Divider(
                          height: 0,
                          thickness: 1,
                          color: Color(0xFFF4F4F4),
                        ),
                      ),
                      MenuButtonDegree(
                        title: 'Подгруппа',
                        value: '1',
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
                    children: [
                      MenuButtonDegree(
                        title: 'Настройки',
                        onTap: () {},
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Divider(
                          height: 0,
                          thickness: 1,
                          color: Color(0xFFF4F4F4),
                        ),
                      ),
                      MenuButtonDegree(
                        title: 'Выйти',
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
