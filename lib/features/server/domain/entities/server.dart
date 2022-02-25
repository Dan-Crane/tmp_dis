import 'dart:math';

import 'package:dis_flutter/features/channel/domain/entities/channel.dart';

class Server {
  late final String id;
  final String name;
  final String imgUrl;
  final List<Channel> channels;

  Server({
    String? id,
    required this.name,
    required this.imgUrl,
    required this.channels,
  }) {
    this.id = id ?? Random(1000).nextDouble().toString();
  }
}
