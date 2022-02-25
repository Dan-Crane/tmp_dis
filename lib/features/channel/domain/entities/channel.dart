import 'dart:math';

enum ChannelType { text, voice, video }

class Channel {
  late final String id;
  final String name;
  final ChannelType type;

  Channel({
    String? id,
    required this.name,
    required this.type,
  }) {
    this.id = id ?? Random(1000).nextDouble().toString();
  }
}
