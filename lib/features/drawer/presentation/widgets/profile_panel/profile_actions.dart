import 'package:flutter/material.dart';

class ProfileAction extends StatelessWidget {
  const ProfileAction({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.white24,
            )),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.email,
              color: Colors.white24,
            )),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.settings,
              color: Colors.white24,
            )),
      ],
    );
  }
}
