import 'dart:math';

class Room {
  late final String id;
  final String name;

  Room({
    String? id,
    required this.name,
  }) {
    this.id = id ?? Random(1000).nextDouble().toString();
  }
}
