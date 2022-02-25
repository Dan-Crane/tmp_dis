import 'package:dis_flutter/features/channel/domain/entities/channel.dart';
import 'package:dis_flutter/features/drawer/presentation/widgets/channel_droplist/rooms_list.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class ChannelDroplist extends StatelessWidget {
  final Channel channel;

  const ChannelDroplist({Key? key, required this.channel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
      child: ScrollOnExpand(
        child: Column(
          children: <Widget>[
            ExpandablePanel(
              theme: const ExpandableThemeData(
                headerAlignment: ExpandablePanelHeaderAlignment.center,
                tapBodyToExpand: true,
                tapBodyToCollapse: true,
                hasIcon: false,
              ),
              header: Row(
                children: [
                  ExpandableIcon(
                    theme: const ExpandableThemeData(
                      expandIcon: Icons.keyboard_arrow_right,
                      collapseIcon: Icons.keyboard_arrow_down,
                      iconSize: 14.0,
                      iconRotationAngle: pi / 2,
                      iconPadding: EdgeInsets.only(right: 5),
                      hasIcon: false,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      channel.name,
                      style: Theme.of(context).textTheme.bodyText1?.copyWith(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Colors.white24,
                          ),
                    ),
                  ),
                  InkWell(
                    onTap: () => print('add channel'),
                    child: const SizedBox(
                      height: 30,
                      width: 30,
                      child: Icon(
                        Icons.add,
                        color: Colors.white24,
                      ),
                    ),
                  ),
                ],
              ),
              collapsed: const SizedBox(),
              expanded: Padding(
                padding: const EdgeInsetsDirectional.only(start: 30),
                child: RoomsList(rooms: channel.rooms),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
