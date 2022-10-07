import 'package:flutter/material.dart';

class OutlinedButtonDegree extends StatelessWidget {
  final String buttonText;
  final void Function()? onPressed;
  const OutlinedButtonDegree({
    Key? key,
    required this.buttonText,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: SizedBox(
        width: double.infinity,
        child: OutlinedButton(
          onPressed: onPressed,
          child: Center(
            child: Text(
              buttonText,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ),
    );
  }
}

class ElevatedButtonDegree extends StatelessWidget {
  final String buttonText;
  final void Function()? onPressed;
  const ElevatedButtonDegree({
    Key? key,
    required this.buttonText,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: onPressed,
          child: Text(
            buttonText,
            style: const TextStyle(
                fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class AddButton extends StatelessWidget {
  final void Function()? onPressed;
  const AddButton({
    Key? key,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 16, 75),
      child: Align(
        alignment: Alignment.bottomRight,
        child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            backgroundColor: Colors.black,
            shape: const CircleBorder(),
            fixedSize: const Size(63, 63),
          ),
          child: const Icon(
            Icons.add_outlined,
            color: Colors.white,
            size: 34,
          ),
        ),
      ),
    );
  }
}
