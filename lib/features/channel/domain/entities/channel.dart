import 'dart:math';

import 'package:dis_flutter/features/room/domain/entities/room.dart';

enum ChannelType { text, voice, video }

class Channel {
  late final String id;
  final String name;
  final ChannelType type;
  final List<Room> rooms;

  Channel({
    String? id,
    required this.name,
    required this.type,
    required this.rooms,
  }) {
    this.id = id ?? Random(1000).nextDouble().toString();
  }
}
