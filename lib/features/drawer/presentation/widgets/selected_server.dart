import 'package:dis_flutter/features/drawer/presentation/widgets/channel_view.dart';
import 'package:dis_flutter/features/server/domain/entities/server.dart';
import 'package:flutter/material.dart';

class SelectedServer extends StatelessWidget {
  final Server? selectedServer;

  const SelectedServer({Key? key, this.selectedServer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final unwrapServer = selectedServer;

    return ColoredBox(
      color: const Color.fromRGBO(44, 47, 51, 1),
      child: SafeArea(
        child: unwrapServer == null
            ? Center(
                child: Text(
                  'Please, pick server.',
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      ?.copyWith(color: Colors.white70),
                ),
              )
            : Column(
                children: [
                  SelectedTitle(title: unwrapServer.name),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ChannelView(channels: unwrapServer.channels),
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}

class SelectedTitle extends StatelessWidget {
  final String title;
  const SelectedTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48.0,
      child: Text(
        title,
        softWrap: true,
        style: Theme.of(context).textTheme.headline3?.copyWith(
              fontWeight: FontWeight.w600,
              color: Colors.white70,
            ),
      ),
    );
  }
}
