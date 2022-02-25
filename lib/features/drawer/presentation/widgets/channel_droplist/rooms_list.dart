import 'package:dis_flutter/features/room/domain/entities/room.dart';
import 'package:flutter/material.dart';

class RoomsList extends StatelessWidget {
  final List<Room> rooms;

  const RoomsList({Key? key, required this.rooms}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...List.generate(
          rooms.length,
          (index) {
            final room = rooms[index];

            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                room.name,
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    ?.copyWith(fontWeight: FontWeight.w800),
              ),
            );
          },
        )
      ],
    );
  }
}
