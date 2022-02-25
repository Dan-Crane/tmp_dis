import 'package:dis_flutter/features/drawer/presentation/widgets/server_icon.dart';
import 'package:dis_flutter/features/server/domain/entities/server.dart';
import 'package:flutter/material.dart';

class ServerList extends StatelessWidget {
  final List<Server> servers;
  final Server? selectedServer;
  final ValueSetter<Server> onSelected;

  const ServerList({
    Key? key,
    required this.servers,
    required this.selectedServer,
    required this.onSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: servers.length,
      itemBuilder: (context, index) {
        final server = servers[index];

        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: ServeerIcon(
            urlPath: server.imgUrl,
            isActive: selectedServer == server,
            onTap: () => onSelected.call(server),
          ),
        );
      },
    );
  }
}
