import 'package:flutter/material.dart';

class ExitBut extends StatelessWidget {
  const ExitBut({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: SizedBox(
        width: double.infinity,
        child: OutlinedButton(
          onPressed: () => Navigator.of(context).pushNamed('/main_screen'),
          child: const Center(
            child: Text(
              'Войти',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ),
    );
  }
}

class RegBut extends StatelessWidget {
  const RegBut({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {},
          child: const Text(
            'Зарегистрироваться',
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
