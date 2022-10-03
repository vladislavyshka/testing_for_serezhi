import 'package:flutter/material.dart';

class MenuButtonDegree extends StatelessWidget {
  final String title;
  final String? value;
  final void Function()? onTap;
  const MenuButtonDegree(
      {super.key, required this.title, this.value, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Material(
        color: Colors.white,
        child: InkWell(
          hoverColor: const Color(0xFFF6F6F6),
          splashColor: const Color(0xFFF6F6F6),
          highlightColor: const Color(0xFFF6F6F6),
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              color: Colors.transparent,
              height: 44,
              width: double.infinity,
              child: value != null
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          title,
                          style: Theme.of(context).textTheme.headline1,
                        ),
                        Text(
                          value!,
                          style: Theme.of(context).textTheme.headline1,
                        ),
                      ],
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          title,
                          style: Theme.of(context).textTheme.headline1,
                        ),
                      ],
                    ),
            ),
          ),
        ),
      ),
    );
  }
}
