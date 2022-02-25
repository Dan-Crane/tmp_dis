import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  final String profileUrl;
  final bool isOnline;

  const ProfileAvatar({
    Key? key,
    required this.profileUrl,
    required this.isOnline,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(profileUrl),
          radius: 14,
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              color: isOnline ? Colors.green : Colors.red,
              borderRadius: const BorderRadius.all(Radius.circular(8.0)),
            ),
          ),
        )
      ],
    );
  }
}
