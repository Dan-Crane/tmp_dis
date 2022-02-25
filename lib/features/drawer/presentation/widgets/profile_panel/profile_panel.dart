import 'package:dis_flutter/features/drawer/presentation/widgets/profile_panel/profile_actions.dart';
import 'package:dis_flutter/features/drawer/presentation/widgets/profile_panel/profile_avatar.dart';
import 'package:dis_flutter/features/drawer/presentation/widgets/profile_panel/profile_name.dart';
import 'package:dis_flutter/features/profile/domain/entities/profile.dart';
import 'package:flutter/material.dart';

class ProfilePanel extends StatelessWidget {
  final Profile profile;

  const ProfilePanel({Key? key, required this.profile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 54, 59, 65),
      padding: const EdgeInsets.symmetric(horizontal: 16.0).copyWith(
        top: 16.0,
        bottom: MediaQuery.of(context).padding.bottom,
      ),
      child: Row(
        children: [
          ProfileAvatar(profileUrl: profile.img, isOnline: profile.isOnline),
          const SizedBox(width: 16),
          Flexible(child: ProfileName(name: profile.name, id: profile.id)),
          const ProfileAction(),
        ],
      ),
    );
  }
}
