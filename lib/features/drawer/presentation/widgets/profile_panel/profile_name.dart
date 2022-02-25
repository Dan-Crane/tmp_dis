import 'package:flutter/material.dart';

class ProfileName extends StatelessWidget {
  final String name;
  final String id;

  const ProfileName({
    Key? key,
    required this.name,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          overflow: TextOverflow.fade,
          maxLines: 1,
          softWrap: false,
          style: Theme.of(context)
              .textTheme
              .bodyText1
              ?.copyWith(color: Colors.white70, fontSize: 18),
        ),
        const SizedBox(height: 8),
        Text(
          id,
          overflow: TextOverflow.fade,
          maxLines: 1,
          softWrap: false,
          style: Theme.of(context)
              .textTheme
              .bodyText1
              ?.copyWith(color: Colors.white38),
        )
      ],
    );
  }
}
