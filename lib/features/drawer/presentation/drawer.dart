import 'package:dis_flutter/features/channel/domain/entities/channel.dart';
import 'package:dis_flutter/features/drawer/presentation/widgets/selected_server.dart';
import 'package:dis_flutter/features/drawer/presentation/widgets/server_list.dart';
import 'package:dis_flutter/features/room/domain/entities/room.dart';
import 'package:dis_flutter/features/server/domain/entities/server.dart';
import 'package:flutter/material.dart';

final test = [
  Server(
    name: 'test1🐷',
    imgUrl:
        'https://static.independent.co.uk/2020/09/22/09/Untitled.png?width=1200',
    channels: [
      Channel(
        name: 'Work',
        type: ChannelType.text,
        rooms: [Room(name: 'Room 1')],
      )
    ],
  ),
  Server(
    name: 'Game ',
    imgUrl: 'https://i.redd.it/e7zk3mde54021.jpg',
    channels: [
      Channel(
        name: 'Game',
        type: ChannelType.text,
        rooms: [
          Room(name: 'Room 1'),
          Room(name: 'Room 3'),
        ],
      )
    ],
  ),
  Server(
    name: ' 333💩',
    imgUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSAvkwH3fKgR0hRne7z0VuhDCvxS9V4br_g7g&usqp=CAU',
    channels: [
      Channel(
        name: 'Channel 1',
        type: ChannelType.text,
        rooms: [Room(name: 'Room 3')],
      ),
      Channel(
        name: 'Channel 2',
        type: ChannelType.text,
        rooms: [
          Room(name: 'Room 3'),
          Room(name: 'Room 3'),
          Room(name: 'Room 3'),
        ],
      ),
      Channel(
        name: 'Channel 1',
        type: ChannelType.text,
        rooms: [Room(name: 'Room 3')],
      ),
      Channel(
        name: 'Channel 2',
        type: ChannelType.text,
        rooms: [
          Room(name: 'Room 3'),
          Room(name: 'Room 3'),
          Room(name: 'Room 3'),
        ],
      )
    ],
  )
];

class DiscordDrawer extends StatefulWidget {
  const DiscordDrawer({Key? key}) : super(key: key);

  @override
  State<DiscordDrawer> createState() => _DiscordDrawerState();
}

class _DiscordDrawerState extends State<DiscordDrawer> {
  Server? selectedServer;
  List<Server> servers = test;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromRGBO(35, 39, 42, 1),
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Flexible(
                  flex: 1,
                  child: ServerList(
                    servers: servers,
                    selectedServer: selectedServer,
                    onSelected: (server) => setState(
                      () => selectedServer = server,
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: SelectedServer(selectedServer: selectedServer),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
