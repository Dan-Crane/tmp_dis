import 'dart:math';

class Profile {
  late final String id;

  final String name;
  final String img;
  late final isOnline;

  Profile({
    String? id,
    required this.name,
    required this.img,
    bool? isOnline,
  }) {
    this.id = id ?? Random(1000).nextDouble().toString();
    this.isOnline = isOnline ?? true;
  }
}
