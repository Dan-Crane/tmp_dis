import 'package:flutter/material.dart';

class ServeerIcon extends StatelessWidget {
  final String urlPath;
  final bool isActive;
  final VoidCallback onTap;

  const ServeerIcon({
    Key? key,
    required this.urlPath,
    required this.isActive,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          if (isActive)
            Container(
              width: 6,
              height: 40,
              margin: const EdgeInsets.only(right: 10),
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(8.0),
                  bottomRight: Radius.circular(8.0),
                ),
              ),
            )
          else
            const SizedBox(width: 16),
          CircleAvatar(
            backgroundImage: NetworkImage(urlPath),
            radius: 30,
          ),
        ],
      ),
    );
  }
}
