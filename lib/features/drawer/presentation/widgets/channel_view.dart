import 'package:dis_flutter/features/channel/domain/entities/channel.dart';
import 'package:dis_flutter/features/drawer/presentation/widgets/channel_droplist/channel_droplist.dart';
import 'package:flutter/material.dart';

class ChannelView extends StatelessWidget {
  final List<Channel> channels;

  const ChannelView({
    Key? key,
    required this.channels,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: channels.length,
            itemBuilder: (context, index) {
              final channel = channels[index];

              return ChannelDroplist(channel: channel);
            },
          ),
        )
      ],
    );
  }
}
